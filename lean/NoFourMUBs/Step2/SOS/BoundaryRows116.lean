import NoFourMUBs.Step2.SOS.Canonical377
import NoFourMUBs.Step2.SOS.Canonical399
import NoFourMUBs.Step2.SOS.Canonical404
import NoFourMUBs.Step2.SOS.Canonical405
import NoFourMUBs.Step2.SOS.Canonical406
import NoFourMUBs.Step2.SOS.Canonical433
import NoFourMUBs.Step2.SOS.Canonical434
import NoFourMUBs.Step2.SOS.Canonical435
import NoFourMUBs.Step2.SOS.Canonical448
import NoFourMUBs.Step2.SOS.Canonical449
import NoFourMUBs.Step2.SOS.Canonical452
import NoFourMUBs.Step2.SOS.Canonical453
import NoFourMUBs.Step2.SOS.Canonical454
import NoFourMUBs.Step2.SOS.Canonical455
import NoFourMUBs.Step2.SOS.Canonical460
import NoFourMUBs.Step2.SOS.Canonical464
import NoFourMUBs.Step2.SOS.Canonical465
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections034
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions031
import NoFourMUBs.Step2.SOS.Reductions036
import NoFourMUBs.Step2.SOS.Reductions038
import NoFourMUBs.Step2.SOS.Reductions066
import NoFourMUBs.Step2.SOS.Reductions071
import NoFourMUBs.Step2.SOS.Reductions083
import NoFourMUBs.Step2.SOS.Reductions098
import NoFourMUBs.Step2.SOS.Reductions107
import NoFourMUBs.Step2.SOS.Reductions131
import NoFourMUBs.Step2.SOS.Reductions132
import NoFourMUBs.Step2.SOS.Reductions133
import NoFourMUBs.Step2.SOS.Reductions135
import NoFourMUBs.Step2.SOS.Reductions141
import NoFourMUBs.Step2.SOS.Reductions143
import NoFourMUBs.Step2.SOS.Reductions169
import NoFourMUBs.Step2.SOS.Reductions170
import NoFourMUBs.Step2.SOS.Reductions208
import NoFourMUBs.Step2.SOS.Reductions212
import NoFourMUBs.Step2.SOS.Reductions229
import NoFourMUBs.Step2.SOS.Reductions230
import NoFourMUBs.Step2.SOS.Reductions233
import NoFourMUBs.Step2.SOS.Reductions234
import NoFourMUBs.Step2.SOS.Reductions251
import NoFourMUBs.Step2.SOS.Reductions252
import NoFourMUBs.Step2.SOS.Reductions379
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical295

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput782 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![1, -2, 0, 1], ![1, 1, 0, -2]]

theorem rowSound782 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 782) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row782 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row782 H]
  have hshape : boundaryInput782 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput782 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 720, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput782 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7379, reductionProjection3148, reductionProjection8081, reductionProjection12152, reductionProjection5446, reductionProjection8082] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput782 (0 : Fin 6)) = canonicalInput27734.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput782 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7379 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput782 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7379 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27734 hH))).trans (reductionSound7379 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput782 (1 : Fin 6)) = canonicalInput28728.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput782 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3148 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput782 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3148 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28728 hH))).trans (reductionSound3148 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput782 (2 : Fin 6)) = canonicalInput28936.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput782 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8081 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput782 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8081 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28936 hH))).trans (reductionSound8081 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput782 (3 : Fin 6)) = canonicalInput29038.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput782 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12152 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput782 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12152 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29038 hH))).trans (reductionSound12152 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput782 (4 : Fin 6)) = canonicalInput29045.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput782 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5446 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput782 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5446 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29045 hH))).trans (reductionSound5446 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput782 (5 : Fin 6)) = canonicalInput29046.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput782 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8082 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput782 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8082 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29046 hH))).trans (reductionSound8082 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput782 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 720, 288] ![-1440, -1440, -1440, -1440, -2880, -7200] (extendRow Arithmetic.row782) ![reductionProjection7379, reductionProjection3148, reductionProjection8081, reductionProjection12152, reductionProjection5446, reductionProjection8082]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput783 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![0, -2, 1, 1], ![2, 0, 0, -2]]

theorem rowSound783 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 783) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row783 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row783 H]
  have hshape : boundaryInput783 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput783 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 1440, 1440, 144, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput783 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7354, reductionProjection1002, reductionProjection7493, reductionProjection5422, reductionProjection12150, reductionProjection8049] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput783 (0 : Fin 6)) = canonicalInput27738.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput783 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7354 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput783 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7354 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27738 hH))).trans (reductionSound7354 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput783 (1 : Fin 6)) = canonicalInput28732.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput783 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1002 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput783 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1002 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28732 hH))).trans (reductionSound1002 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput783 (2 : Fin 6)) = canonicalInput28940.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput783 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7493 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput783 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7493 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28940 hH))).trans (reductionSound7493 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput783 (3 : Fin 6)) = canonicalInput29053.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput783 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5422 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput783 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5422 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29053 hH))).trans (reductionSound5422 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput783 (4 : Fin 6)) = canonicalInput29058.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput783 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12150 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput783 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12150 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29058 hH))).trans (reductionSound12150 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput783 (5 : Fin 6)) = canonicalInput29059.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput783 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8049 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput783 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8049 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29059 hH))).trans (reductionSound8049 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput783 (j : Fin 6)))
    1440 1440 ![1440, 288, 1440, 1440, 144, 1440] ![-1440, -7200, -1440, -1440, -14400, -1440] (extendRow Arithmetic.row783) ![reductionProjection7354, reductionProjection1002, reductionProjection7493, reductionProjection5422, reductionProjection12150, reductionProjection8049]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput785 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, 1, 0], ![0, -2, 0, 2], ![2, 0, 0, -2]]

theorem rowSound785 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 785) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row785 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row785 H]
  have hshape : boundaryInput785 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput785 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 720, 36, 144, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput785 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7336, reductionProjection3447, reductionProjection7509, reductionProjection12150, reductionProjection4225, reductionProjection7497] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput785 (0 : Fin 6)) = canonicalInput27743.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput785 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7336 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput785 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7336 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27743 hH))).trans (reductionSound7336 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput785 (1 : Fin 6)) = canonicalInput28737.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput785 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3447 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput785 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3447 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28737 hH))).trans (reductionSound3447 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput785 (2 : Fin 6)) = canonicalInput28945.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput785 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7509 (Normalization.momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst boundaryInput785 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7509 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28945 hH))).trans (reductionSound7509 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput785 (3 : Fin 6)) = canonicalInput29058.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput785 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12150 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput785 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12150 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29058 hH))).trans (reductionSound12150 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput785 (4 : Fin 6)) = canonicalInput29068.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput785 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4225 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput785 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4225 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29068 hH))).trans (reductionSound4225 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput785 (5 : Fin 6)) = canonicalInput29069.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput785 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7497 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput785 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7497 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29069 hH))).trans (reductionSound7497 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput785 (j : Fin 6)))
    1440 1440 ![1440, 720, 36, 144, 1440, 1440] ![-1440, -2880, -57600, -14400, -1440, -1440] (extendRow Arithmetic.row785) ![reductionProjection7336, reductionProjection3447, reductionProjection7509, reductionProjection12150, reductionProjection4225, reductionProjection7497]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput788 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![0, -1, 2, -1], ![2, -1, 0, -1]]

theorem rowSound788 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 788) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row788 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row788 H]
  have hshape : boundaryInput788 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput788 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 1440, 1440, 1440, 1440, 360] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput788 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7331, reductionProjection7477, reductionProjection7477, reductionProjection4219, reductionProjection12151, reductionProjection7506] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput788 (0 : Fin 6)) = canonicalInput27877.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput788 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7331 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput788 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7331 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27877 hH))).trans (reductionSound7331 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput788 (1 : Fin 6)) = canonicalInput29459.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput788 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7477 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput788 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7477 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29459 hH))).trans (reductionSound7477 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput788 (2 : Fin 6)) = canonicalInput29753.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput788 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7477 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput788 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7477 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29753 hH))).trans (reductionSound7477 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput788 (3 : Fin 6)) = canonicalInput29774.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput788 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4219 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput788 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4219 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29774 hH))).trans (reductionSound4219 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput788 (4 : Fin 6)) = canonicalInput29777.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput788 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12151 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput788 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12151 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29777 hH))).trans (reductionSound12151 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput788 (5 : Fin 6)) = canonicalInput29778.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput788 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7506 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput788 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7506 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29778 hH))).trans (reductionSound7506 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput788 (j : Fin 6)))
    1440 1440 ![720, 1440, 1440, 1440, 1440, 360] ![-2880, -1440, -1440, -1440, -1440, -5760] (extendRow Arithmetic.row788) ![reductionProjection7331, reductionProjection7477, reductionProjection7477, reductionProjection4219, reductionProjection12151, reductionProjection7506]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput856 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -2, 0], ![-2, 0, 3, -1]]

theorem rowSound856 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 856) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row856 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row856 H]
  have hshape : boundaryInput856 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput856 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![360, 1440, 1440, 720, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput856 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6663, reductionProjection6790, oldProjection2580, oldProjection2972, reductionProjection12154, reductionProjection4328] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput856 (0 : Fin 6)) = canonicalInput24136.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput856 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6663 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput856 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6663 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24136 hH))).trans (reductionSound6663 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput856 (1 : Fin 6)) = canonicalInput25562.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput856 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6790 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput856 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6790 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25562 hH))).trans (reductionSound6790 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput856 (2 : Fin 6)) = canonicalInput25911.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput856 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection2580 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput856 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection2580 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25911 hH))).trans (oldProjectionSound2580 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput856 (3 : Fin 6)) = canonicalInput25978.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput856 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2972 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput856 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2972 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25978 hH))).trans (oldProjectionSound2972 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput856 (4 : Fin 6)) = canonicalInput25982.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput856 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12154 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput856 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12154 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25982 hH))).trans (reductionSound12154 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput856 (5 : Fin 6)) = canonicalInput25984.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput856 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4328 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput856 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4328 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25984 hH))).trans (reductionSound4328 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput856 (j : Fin 6)))
    1440 1440 ![360, 1440, 1440, 720, 1440, 720] ![-5760, -1440, -1440, -2880, -1440, -2880] (extendRow Arithmetic.row856) ![reductionProjection6663, reductionProjection6790, oldProjection2580, oldProjection2972, reductionProjection12154, reductionProjection4328]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput955 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, 0, -2], ![-2, -2, 1, 3]]

theorem rowSound955 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 955) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row955 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row955 H]
  have hshape : boundaryInput955 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput955 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 720, 1440, 1440, 720, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput955 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1180, reductionProjection1178, reductionProjection1234, reductionProjection1234, reductionProjection1235, reductionProjection12143] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput955 (0 : Fin 6)) = canonicalInput27780.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput955 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1180 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput955 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1180 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27780 hH))).trans (reductionSound1180 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput955 (1 : Fin 6)) = canonicalInput28777.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput955 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1178 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput955 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1178 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28777 hH))).trans (reductionSound1178 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput955 (2 : Fin 6)) = canonicalInput29026.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput955 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1234 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput955 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1234 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29026 hH))).trans (reductionSound1234 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput955 (3 : Fin 6)) = canonicalInput29167.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput955 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1234 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput955 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1234 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29167 hH))).trans (reductionSound1234 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput955 (4 : Fin 6)) = canonicalInput29175.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput955 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1235 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput955 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1235 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29175 hH))).trans (reductionSound1235 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput955 (5 : Fin 6)) = canonicalInput29176.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput955 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12143 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput955 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12143 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29176 hH))).trans (reductionSound12143 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput955 (j : Fin 6)))
    288 1440 ![1440, 720, 1440, 1440, 720, 720] ![-288, -576, -288, -288, -576, -576] (extendRow Arithmetic.row955) ![reductionProjection1180, reductionProjection1178, reductionProjection1234, reductionProjection1234, reductionProjection1235, reductionProjection12143]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput965 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, -1, 0, 3], ![1, 1, 1, -3]]

theorem rowSound965 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 965) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row965 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row965 H]
  have hshape : boundaryInput965 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput965 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 1440, 288, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput965 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4529, reductionProjection2133, oldProjection2987, reductionProjection4576, reductionProjection2282, reductionProjection12145] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput965 (0 : Fin 6)) = canonicalInput27765.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput965 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4529 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput965 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4529 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27765 hH))).trans (reductionSound4529 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput965 (1 : Fin 6)) = canonicalInput28762.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput965 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2133 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput965 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2133 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28762 hH))).trans (reductionSound2133 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput965 (2 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9467 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput965 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection2987 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput965 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection2987 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9467 hH))).trans (oldProjectionSound2987 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput965 (3 : Fin 6)) = canonicalInput29133.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput965 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4576 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput965 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4576 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29133 hH))).trans (reductionSound4576 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput965 (4 : Fin 6)) = canonicalInput29140.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput965 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2282 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput965 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2282 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29140 hH))).trans (reductionSound2282 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput965 (5 : Fin 6)) = canonicalInput29141.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput965 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12145 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput965 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12145 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29141 hH))).trans (reductionSound12145 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput965 (j : Fin 6)))
    1440 1440 ![1440, 288, 1440, 288, 1440, 1440] ![-1440, -7200, -1440, -7200, -1440, -1440] (extendRow Arithmetic.row965) ![reductionProjection4529, reductionProjection2133, oldProjection2987, reductionProjection4576, reductionProjection2282, reductionProjection12145]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput972 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![-1, -1, 1, 1], ![2, 1, 0, -3]]

theorem rowSound972 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 972) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row972 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row972 H]
  have hshape : boundaryInput972 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput972 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 360, 288, 1440, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput972 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4203, reductionProjection2664, reductionProjection4285, reductionProjection4202, reductionProjection12144, reductionProjection5408] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput972 (0 : Fin 6)) = canonicalInput27748.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput972 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4203 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput972 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4203 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27748 hH))).trans (reductionSound4203 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput972 (1 : Fin 6)) = canonicalInput28742.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput972 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2664 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput972 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2664 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28742 hH))).trans (reductionSound2664 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput972 (2 : Fin 6)) = canonicalInput28950.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput972 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4285 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput972 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4285 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28950 hH))).trans (reductionSound4285 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput972 (3 : Fin 6)) = canonicalInput29078.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput972 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4202 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput972 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4202 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29078 hH))).trans (reductionSound4202 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput972 (4 : Fin 6)) = canonicalInput29080.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput972 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12144 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput972 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12144 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29080 hH))).trans (reductionSound12144 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput972 (5 : Fin 6)) = canonicalInput29081.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput972 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5408 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput972 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5408 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29081 hH))).trans (reductionSound5408 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput972 (j : Fin 6)))
    1440 1440 ![1440, 360, 288, 1440, 720, 1440] ![-1440, -5760, -7200, -1440, -2880, -1440] (extendRow Arithmetic.row972) ![reductionProjection4203, reductionProjection2664, reductionProjection4285, reductionProjection4202, reductionProjection12144, reductionProjection5408]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
