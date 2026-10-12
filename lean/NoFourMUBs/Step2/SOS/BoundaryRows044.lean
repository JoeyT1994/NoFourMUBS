import NoFourMUBs.Step2.SOS.Canonical377
import NoFourMUBs.Step2.SOS.Canonical387
import NoFourMUBs.Step2.SOS.Canonical402
import NoFourMUBs.Step2.SOS.Canonical406
import NoFourMUBs.Step2.SOS.Canonical407
import NoFourMUBs.Step2.SOS.Canonical433
import NoFourMUBs.Step2.SOS.Canonical438
import NoFourMUBs.Step2.SOS.Canonical441
import NoFourMUBs.Step2.SOS.Canonical443
import NoFourMUBs.Step2.SOS.Canonical448
import NoFourMUBs.Step2.SOS.Canonical452
import NoFourMUBs.Step2.SOS.Canonical453
import NoFourMUBs.Step2.SOS.Canonical497
import NoFourMUBs.Step2.SOS.Canonical499
import NoFourMUBs.Step2.SOS.Canonical500
import NoFourMUBs.Step2.SOS.Canonical501
import NoFourMUBs.Step2.SOS.Canonical511
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections027
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions041
import NoFourMUBs.Step2.SOS.Reductions048
import NoFourMUBs.Step2.SOS.Reductions169
import NoFourMUBs.Step2.SOS.Reductions174
import NoFourMUBs.Step2.SOS.Reductions182
import NoFourMUBs.Step2.SOS.Reductions215
import NoFourMUBs.Step2.SOS.Reductions217
import NoFourMUBs.Step2.SOS.Reductions233
import NoFourMUBs.Step2.SOS.Reductions234
import NoFourMUBs.Step2.SOS.Reductions240
import NoFourMUBs.Step2.SOS.Reductions245
import NoFourMUBs.Step2.SOS.Reductions246
import NoFourMUBs.Step2.SOS.Reductions247
import NoFourMUBs.Step2.SOS.Reductions248
import NoFourMUBs.Step2.SOS.Reductions249
import NoFourMUBs.Step2.SOS.Reductions251
import NoFourMUBs.Step2.SOS.Reductions252
import NoFourMUBs.Step2.SOS.Reductions253
import NoFourMUBs.Step2.SOS.Reductions254

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput526 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, 2, 1, -3], ![1, 1, -3, 1]]

theorem rowSound526 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 526) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row526 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row526 H]
  have hshape : boundaryInput526 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput526 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 2, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput526 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7845, reductionProjection8041, reductionProjection8078, reductionProjection5433, reductionProjection8076, reductionProjection6880] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput526 (0 : Fin 6)) = canonicalInput24148.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput526 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7845 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput526 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7845 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24148 hH))).trans (reductionSound7845 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput526 (1 : Fin 6)) = canonicalInput25781.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput526 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8041 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput526 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8041 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25781 hH))).trans (reductionSound8041 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput526 (2 : Fin 6)) = canonicalInput26045.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput526 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8078 (Normalization.momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst boundaryInput526 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8078 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26045 hH))).trans (reductionSound8078 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput526 (3 : Fin 6)) = canonicalInput26049.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput526 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5433 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput526 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5433 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26049 hH))).trans (reductionSound5433 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput526 (4 : Fin 6)) = canonicalInput26051.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput526 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8076 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput526 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8076 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26051 hH))).trans (reductionSound8076 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput526 (5 : Fin 6)) = canonicalInput26052.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput526 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6880 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput526 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6880 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26052 hH))).trans (reductionSound6880 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput526 (j : Fin 6)))
    1440 1440 ![1440, 1440, 2, 1440, 1440, 1440] ![-1440, -1440, -1036800, -1440, -1440, -1440] (extendRow Arithmetic.row526) ![reductionProjection7845, reductionProjection8041, reductionProjection8078, reductionProjection5433, reductionProjection8076, reductionProjection6880]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput867 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 0, 2, 0], ![1, -2, 0, 1], ![1, 1, -1, -1]]

theorem rowSound867 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 867) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row867 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row867 H]
  have hshape : boundaryInput867 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput867 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 720, 288, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput867 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7688, oldProjection2018, reductionProjection7507, reductionProjection8082, reductionProjection7685, reductionProjection7487] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput867 (0 : Fin 6)) = canonicalInput27736.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput867 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7688 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput867 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7688 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27736 hH))).trans (reductionSound7688 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput867 (1 : Fin 6)) = canonicalInput28730.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput867 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection2018 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput867 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection2018 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28730 hH))).trans (oldProjectionSound2018 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput867 (2 : Fin 6)) = canonicalInput28938.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput867 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7507 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput867 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7507 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28938 hH))).trans (reductionSound7507 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput867 (3 : Fin 6)) = canonicalInput29046.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput867 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8082 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput867 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8082 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29046 hH))).trans (reductionSound8082 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput867 (4 : Fin 6)) = canonicalInput29049.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput867 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7685 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput867 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7685 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29049 hH))).trans (reductionSound7685 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput867 (5 : Fin 6)) = canonicalInput29050.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput867 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7487 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput867 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7487 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29050 hH))).trans (reductionSound7487 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput867 (j : Fin 6)))
    1440 1440 ![288, 1440, 720, 288, 1440, 288] ![-7200, -1440, -2880, -7200, -1440, -7200] (extendRow Arithmetic.row867) ![reductionProjection7688, oldProjection2018, reductionProjection7507, reductionProjection8082, reductionProjection7685, reductionProjection7487]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1335 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 1, 1, 0], ![0, -1, 2, -1], ![1, -2, -1, 2]]

theorem rowSound1335 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1335) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1335 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1335 H]
  have hshape : boundaryInput1335 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1335 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1335 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7937, reductionProjection5847, reductionProjection5569, reductionProjection8064, oldProjection3067, reductionProjection7929] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1335 (0 : Fin 6)) = canonicalInput31869.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1335 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7937 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1335 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7937 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31869 hH))).trans (reductionSound7937 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1335 (1 : Fin 6)) = canonicalInput31981.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1335 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5847 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1335 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5847 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31981 hH))).trans (reductionSound5847 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1335 (2 : Fin 6)) = canonicalInput32053.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1335 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5569 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1335 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5569 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32053 hH))).trans (reductionSound5569 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1335 (3 : Fin 6)) = canonicalInput32094.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1335 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8064 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1335 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8064 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32094 hH))).trans (reductionSound8064 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1335 (4 : Fin 6)) = canonicalInput32095.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1335 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3067 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1335 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3067 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32095 hH))).trans (oldProjectionSound3067 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1335 (5 : Fin 6)) = canonicalInput32096.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1335 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7929 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1335 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7929 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32096 hH))).trans (reductionSound7929 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1335 (j : Fin 6)))
    1440 1440 ![288, 1440, 1440, 1440, 1440, 1440] ![-7200, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row1335) ![reductionProjection7937, reductionProjection5847, reductionProjection5569, reductionProjection8064, oldProjection3067, reductionProjection7929]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1336 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 1, 0, 1], ![1, -2, 0, 1], ![0, -1, 3, -2]]

theorem rowSound1336 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1336) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1336 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1336 H]
  have hshape : boundaryInput1336 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1336 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 720, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1336 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7874, reductionProjection6966, reductionProjection8067, reductionProjection5575, reductionProjection8069, reductionProjection7957] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1336 (0 : Fin 6)) = canonicalInput31859.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1336 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7874 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1336 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7874 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31859 hH))).trans (reductionSound7874 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1336 (1 : Fin 6)) = canonicalInput31971.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1336 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6966 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1336 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6966 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31971 hH))).trans (reductionSound6966 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1336 (2 : Fin 6)) = canonicalInput32034.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1336 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8067 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1336 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8067 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32034 hH))).trans (reductionSound8067 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1336 (3 : Fin 6)) = canonicalInput32050.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1336 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5575 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1336 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5575 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32050 hH))).trans (reductionSound5575 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1336 (4 : Fin 6)) = canonicalInput32051.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1336 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8069 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1336 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8069 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32051 hH))).trans (reductionSound8069 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1336 (5 : Fin 6)) = canonicalInput32052.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1336 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7957 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1336 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7957 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32052 hH))).trans (reductionSound7957 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1336 (j : Fin 6)))
    1440 1440 ![288, 1440, 720, 1440, 1440, 1440] ![-7200, -1440, -2880, -1440, -1440, -1440] (extendRow Arithmetic.row1336) ![reductionProjection7874, reductionProjection6966, reductionProjection8067, reductionProjection5575, reductionProjection8069, reductionProjection7957]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput368 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, 0, -1, 2], ![0, -2, 1, 1], ![-1, 1, 3, -3]]

theorem rowSound368 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 368) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row368 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row368 H]
  have hshape : boundaryInput368 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput368 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 288, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput368 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8108, reductionProjection7966, reductionProjection7966, reductionProjection7901, reductionProjection7466, reductionProjection7978] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput368 (0 : Fin 6)) = canonicalInput32121.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput368 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8108 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput368 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8108 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32121 hH))).trans (reductionSound8108 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput368 (1 : Fin 6)) = canonicalInput32712.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput368 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7966 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput368 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7966 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32712 hH))).trans (reductionSound7966 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput368 (2 : Fin 6)) = canonicalInput32719.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput368 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7966 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput368 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7966 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32719 hH))).trans (reductionSound7966 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput368 (3 : Fin 6)) = canonicalInput32731.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput368 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7901 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput368 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7901 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32731 hH))).trans (reductionSound7901 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput368 (4 : Fin 6)) = canonicalInput32732.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput368 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7466 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput368 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7466 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32732 hH))).trans (reductionSound7466 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput368 (5 : Fin 6)) = canonicalInput32733.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput368 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7978 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput368 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7978 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32733 hH))).trans (reductionSound7978 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput368 (j : Fin 6)))
    1440 1440 ![288, 288, 288, 1440, 1440, 1440] ![-7200, -7200, -7200, -1440, -1440, -1440] (extendRow Arithmetic.row368) ![reductionProjection8108, reductionProjection7966, reductionProjection7966, reductionProjection7901, reductionProjection7466, reductionProjection7978]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput369 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -1, -1, 2], ![1, -1, 3, -3]]

theorem rowSound369 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 369) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row369 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row369 H]
  have hshape : boundaryInput369 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput369 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 720, 720, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput369 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7971, reductionProjection8108, reductionProjection7985, reductionProjection7467, reductionProjection7912, reductionProjection7982] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput369 (0 : Fin 6)) = canonicalInput31858.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput369 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7971 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput369 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7971 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31858 hH))).trans (reductionSound7971 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput369 (1 : Fin 6)) = canonicalInput31970.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput369 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8108 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput369 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8108 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31970 hH))).trans (reductionSound8108 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput369 (2 : Fin 6)) = canonicalInput32033.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput369 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7985 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput369 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7985 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32033 hH))).trans (reductionSound7985 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput369 (3 : Fin 6)) = canonicalInput32045.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput369 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7467 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput369 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7467 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32045 hH))).trans (reductionSound7467 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput369 (4 : Fin 6)) = canonicalInput32048.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput369 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7912 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput369 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7912 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32048 hH))).trans (reductionSound7912 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput369 (5 : Fin 6)) = canonicalInput32049.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput369 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7982 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput369 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7982 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32049 hH))).trans (reductionSound7982 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput369 (j : Fin 6)))
    288 1440 ![1440, 288, 720, 720, 288, 1440] ![-288, -1440, -576, -576, -1440, -288] (extendRow Arithmetic.row369) ![reductionProjection7971, reductionProjection8108, reductionProjection7985, reductionProjection7467, reductionProjection7912, reductionProjection7982]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput866 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![1, -2, 1, 0], ![1, 1, -1, -1]]

theorem rowSound866 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 866) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row866 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row866 H]
  have hshape : boundaryInput866 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput866 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 720, 288, 720, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput866 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8126, oldProjection2084, reductionProjection8082, reductionProjection7507, reductionProjection8082, reductionProjection8081] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput866 (0 : Fin 6)) = canonicalInput27735.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput866 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8126 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput866 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8126 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27735 hH))).trans (reductionSound8126 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput866 (1 : Fin 6)) = canonicalInput28729.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput866 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection2084 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput866 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection2084 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28729 hH))).trans (oldProjectionSound2084 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput866 (2 : Fin 6)) = canonicalInput28937.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput866 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8082 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput866 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8082 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28937 hH))).trans (reductionSound8082 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput866 (3 : Fin 6)) = canonicalInput29039.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput866 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7507 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput866 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7507 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29039 hH))).trans (reductionSound7507 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput866 (4 : Fin 6)) = canonicalInput29046.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput866 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8082 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput866 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8082 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29046 hH))).trans (reductionSound8082 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput866 (5 : Fin 6)) = canonicalInput29047.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput866 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8081 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput866 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8081 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29047 hH))).trans (reductionSound8081 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput866 (j : Fin 6)))
    720 1440 ![288, 720, 288, 720, 288, 1440] ![-3600, -1440, -3600, -1440, -3600, -720] (extendRow Arithmetic.row866) ![reductionProjection8126, oldProjection2084, reductionProjection8082, reductionProjection7507, reductionProjection8082, reductionProjection8081]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput485 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-2, 0, 1, 1], ![0, 2, 0, -2], ![2, -2, 2, -2]]

theorem rowSound485 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 485) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row485 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row485 H]
  have hshape : boundaryInput485 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput485 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![360, 360, 90, 288, 288, 144] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput485 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1546, reductionProjection1546, reductionProjection7704, reductionProjection1540, reductionProjection8138, reductionProjection1343] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput485 (0 : Fin 6)) = canonicalInput24773.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput485 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1546 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput485 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1546 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24773 hH))).trans (reductionSound1546 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput485 (1 : Fin 6)) = canonicalInput28082.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput485 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1546 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput485 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1546 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28082 hH))).trans (reductionSound1546 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput485 (2 : Fin 6)) = canonicalInput28235.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((90 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput485 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7704 (Normalization.momentVector H)
      have hh : (90 : ℝ) * injectiveMoment H (mergeFirst boundaryInput485 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7704 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (90 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28235 hH))).trans (reductionSound7704 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput485 (3 : Fin 6)) = canonicalInput28359.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput485 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1540 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput485 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1540 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28359 hH))).trans (reductionSound1540 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput485 (4 : Fin 6)) = canonicalInput28361.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput485 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8138 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput485 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8138 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28361 hH))).trans (reductionSound8138 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput485 (5 : Fin 6)) = canonicalInput28362.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput485 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1343 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput485 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1343 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28362 hH))).trans (reductionSound1343 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput485 (j : Fin 6)))
    1440 1440 ![360, 360, 90, 288, 288, 144] ![-5760, -5760, -23040, -7200, -7200, -14400] (extendRow Arithmetic.row485) ![reductionProjection1546, reductionProjection1546, reductionProjection7704, reductionProjection1540, reductionProjection8138, reductionProjection1343]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
