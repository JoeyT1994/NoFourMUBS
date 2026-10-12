import NoFourMUBs.Step2.SOS.Canonical268
import NoFourMUBs.Step2.SOS.Canonical397
import NoFourMUBs.Step2.SOS.Canonical403
import NoFourMUBs.Step2.SOS.Canonical405
import NoFourMUBs.Step2.SOS.Canonical435
import NoFourMUBs.Step2.SOS.Canonical459
import NoFourMUBs.Step2.SOS.Canonical461
import NoFourMUBs.Step2.SOS.Canonical462
import NoFourMUBs.Step2.SOS.Canonical463
import NoFourMUBs.Step2.SOS.Canonical466
import NoFourMUBs.Step2.SOS.Canonical471
import NoFourMUBs.Step2.SOS.Canonical472
import NoFourMUBs.Step2.SOS.Canonical491
import NoFourMUBs.Step2.SOS.Canonical492
import NoFourMUBs.Step2.SOS.Canonical495
import NoFourMUBs.Step2.SOS.Canonical497
import NoFourMUBs.Step2.SOS.Canonical498
import NoFourMUBs.Step2.SOS.Canonical499
import NoFourMUBs.Step2.SOS.Canonical500
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections041
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions010
import NoFourMUBs.Step2.SOS.Reductions011
import NoFourMUBs.Step2.SOS.Reductions247
import NoFourMUBs.Step2.SOS.Reductions249
import NoFourMUBs.Step2.SOS.Reductions250
import NoFourMUBs.Step2.SOS.Reductions251
import NoFourMUBs.Step2.SOS.Reductions252
import NoFourMUBs.Step2.SOS.Reductions334
import NoFourMUBs.Step2.SOS.Reductions335
import NoFourMUBs.Step2.SOS.Reductions340
import NoFourMUBs.Step2.SOS.Reductions341
import NoFourMUBs.Step2.SOS.Reductions342
import NoFourMUBs.Step2.SOS.Reductions343
import NoFourMUBs.Step2.SOS.Reductions344
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical313

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput225 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, 0, 2, -1], ![-1, -1, -1, 3], ![1, 1, 1, -3]]

theorem rowSound225 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 225) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row225 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row225 H]
  have hshape : boundaryInput225 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput225 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 1440, 720, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput225 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10949, reductionProjection10976, reductionProjection10944, reductionProjection10937, reductionProjection10698, reductionProjection7922] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput225 (0 : Fin 6)) = canonicalInput27898.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput225 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10949 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput225 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10949 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27898 hH))).trans (reductionSound10949 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput225 (1 : Fin 6)) = canonicalInput29644.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput225 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10976 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput225 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10976 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29644 hH))).trans (reductionSound10976 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput225 (2 : Fin 6)) = canonicalInput29853.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput225 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10944 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput225 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10944 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29853 hH))).trans (reductionSound10944 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput225 (3 : Fin 6)) = canonicalInput29866.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput225 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10937 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput225 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10937 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29866 hH))).trans (reductionSound10937 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput225 (4 : Fin 6)) = canonicalInput29868.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput225 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10698 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput225 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10698 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29868 hH))).trans (reductionSound10698 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput225 (5 : Fin 6)) = canonicalInput29869.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput225 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7922 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput225 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7922 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29869 hH))).trans (reductionSound7922 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput225 (j : Fin 6)))
    1440 1440 ![1440, 288, 1440, 720, 1440, 1440] ![-1440, -7200, -1440, -2880, -1440, -1440] (extendRow Arithmetic.row225) ![reductionProjection10949, reductionProjection10976, reductionProjection10944, reductionProjection10937, reductionProjection10698, reductionProjection7922]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput559 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 2, 0, -1], ![-1, -1, 3, -1], ![3, -1, -1, -1]]

theorem rowSound559 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 559) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row559 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row559 H]
  have hshape : boundaryInput559 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput559 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![18, 18, 288, 1440, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput559 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection351, reductionProjection359, reductionProjection356, reductionProjection10907, reductionProjection11001, reductionProjection8026] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput559 (0 : Fin 6)) = canonicalInput17204.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput559 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection351 (Normalization.momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst boundaryInput559 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection351 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17204 hH))).trans (reductionSound351 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput559 (1 : Fin 6)) = canonicalInput25456.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput559 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection359 (Normalization.momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst boundaryInput559 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection359 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25456 hH))).trans (reductionSound359 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput559 (2 : Fin 6)) = canonicalInput25839.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput559 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection356 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput559 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection356 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25839 hH))).trans (reductionSound356 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput559 (3 : Fin 6)) = canonicalInput25922.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput559 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10907 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput559 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10907 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25922 hH))).trans (reductionSound10907 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput559 (4 : Fin 6)) = canonicalInput25934.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput559 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11001 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput559 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11001 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25934 hH))).trans (reductionSound11001 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput559 (5 : Fin 6)) = canonicalInput25936.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput559 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8026 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput559 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8026 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25936 hH))).trans (reductionSound8026 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput559 (j : Fin 6)))
    1440 1440 ![18, 18, 288, 1440, 720, 1440] ![-115200, -115200, -7200, -1440, -2880, -1440] (extendRow Arithmetic.row559) ![reductionProjection351, reductionProjection359, reductionProjection356, reductionProjection10907, reductionProjection11001, reductionProjection8026]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1160 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![-1, 0, 2, -1], ![1, 1, 1, -3]]

theorem rowSound1160 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1160) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1160 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1160 H]
  have hshape : boundaryInput1160 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1160 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 360, 288, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1160 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10992, reductionProjection11002, reductionProjection10978, reductionProjection10976, oldProjection3355, reductionProjection7986] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1160 (0 : Fin 6)) = canonicalInput27856.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1160 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10992 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1160 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10992 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27856 hH))).trans (reductionSound10992 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1160 (1 : Fin 6)) = canonicalInput29377.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1160 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11002 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1160 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11002 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29377 hH))).trans (reductionSound11002 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1160 (2 : Fin 6)) = canonicalInput29565.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1160 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10978 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1160 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10978 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29565 hH))).trans (reductionSound10978 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1160 (3 : Fin 6)) = canonicalInput29622.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1160 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10976 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1160 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10976 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29622 hH))).trans (reductionSound10976 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1160 (4 : Fin 6)) = canonicalInput29625.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1160 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3355 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1160 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3355 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29625 hH))).trans (oldProjectionSound3355 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1160 (5 : Fin 6)) = canonicalInput29626.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1160 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7986 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1160 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7986 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29626 hH))).trans (reductionSound7986 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1160 (j : Fin 6)))
    288 1440 ![1440, 1440, 360, 288, 1440, 1440] ![-288, -288, -1152, -1440, -288, -288] (extendRow Arithmetic.row1160) ![reductionProjection10992, reductionProjection11002, reductionProjection10978, reductionProjection10976, oldProjection3355, reductionProjection7986]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1181 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, 0, 2, -1], ![1, 1, -1, -1], ![-1, -1, -1, 3]]

theorem rowSound1181 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1181) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1181 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1181 H]
  have hshape : boundaryInput1181 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1181 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1181 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection2070, reductionProjection11003, reductionProjection11004, oldProjection3356, reductionProjection11005, reductionProjection10699] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1181 (0 : Fin 6)) = canonicalInput30185.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1181 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection2070 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1181 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection2070 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30185 hH))).trans (oldProjectionSound2070 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1181 (1 : Fin 6)) = canonicalInput31431.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1181 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11003 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1181 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11003 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31431 hH))).trans (reductionSound11003 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1181 (2 : Fin 6)) = canonicalInput31507.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1181 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11004 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1181 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11004 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31507 hH))).trans (reductionSound11004 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1181 (3 : Fin 6)) = canonicalInput31538.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1181 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3356 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1181 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3356 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31538 hH))).trans (oldProjectionSound3356 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1181 (4 : Fin 6)) = canonicalInput31539.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1181 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11005 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1181 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11005 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31539 hH))).trans (reductionSound11005 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1181 (5 : Fin 6)) = canonicalInput31540.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1181 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10699 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1181 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10699 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31540 hH))).trans (reductionSound10699 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1181 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 720, 1440] ![-1440, -1440, -1440, -1440, -2880, -1440] (extendRow Arithmetic.row1181) ![oldProjection2070, reductionProjection11003, reductionProjection11004, oldProjection3356, reductionProjection11005, reductionProjection10699]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1330 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, 2, 0], ![0, -1, -1, 2], ![-1, 3, -1, -1]]

theorem rowSound1330 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1330) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1330 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1330 H]
  have hshape : boundaryInput1330 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1330 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![144, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1330 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection2069, reductionProjection10999, reductionProjection8033, oldProjection3359, reductionProjection11000, reductionProjection8085] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1330 (0 : Fin 6)) = canonicalInput30229.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1330 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection2069 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1330 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection2069 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30229 hH))).trans (oldProjectionSound2069 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1330 (1 : Fin 6)) = canonicalInput31687.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1330 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10999 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1330 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10999 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31687 hH))).trans (reductionSound10999 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1330 (2 : Fin 6)) = canonicalInput31702.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1330 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8033 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1330 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8033 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31702 hH))).trans (reductionSound8033 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1330 (3 : Fin 6)) = canonicalInput31714.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1330 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3359 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1330 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3359 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31714 hH))).trans (oldProjectionSound3359 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1330 (4 : Fin 6)) = canonicalInput31717.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1330 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11000 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1330 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11000 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31717 hH))).trans (reductionSound11000 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1330 (5 : Fin 6)) = canonicalInput31718.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1330 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8085 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1330 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8085 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31718 hH))).trans (reductionSound8085 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1330 (j : Fin 6)))
    720 1440 ![144, 1440, 1440, 1440, 1440, 1440] ![-7200, -720, -720, -720, -720, -720] (extendRow Arithmetic.row1330) ![oldProjection2069, reductionProjection10999, reductionProjection8033, oldProjection3359, reductionProjection11000, reductionProjection8085]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput281 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, -1, 3], ![-1, 0, 4, -3]]

theorem rowSound281 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 281) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row281 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row281 H]
  have hshape : boundaryInput281 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput281 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput281 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection11033, oldProjection3408, reductionProjection11035, reductionProjection11036, reductionProjection10737, oldProjection3364] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput281 (0 : Fin 6)) = canonicalInput31853.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput281 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11033 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput281 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11033 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31853 hH))).trans (reductionSound11033 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput281 (1 : Fin 6)) = canonicalInput31961.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput281 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection3408 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput281 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection3408 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31961 hH))).trans (oldProjectionSound3408 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput281 (2 : Fin 6)) = canonicalInput31996.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput281 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11035 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput281 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11035 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31996 hH))).trans (reductionSound11035 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput281 (3 : Fin 6)) = canonicalInput32016.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput281 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11036 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput281 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11036 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32016 hH))).trans (reductionSound11036 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput281 (4 : Fin 6)) = canonicalInput32020.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput281 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10737 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput281 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10737 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32020 hH))).trans (reductionSound10737 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput281 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw10047 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput281 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3364 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput281 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3364 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical10047 hH))).trans (oldProjectionSound3364 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput281 (j : Fin 6)))
    720 1440 ![1440, 1440, 1440, 1440, 288, 1440] ![-720, -720, -720, -720, -3600, -720] (extendRow Arithmetic.row281) ![reductionProjection11033, oldProjection3408, reductionProjection11035, reductionProjection11036, reductionProjection10737, oldProjection3364]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput284 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, -1, 3], ![-1, 0, 4, -3]]

theorem rowSound284 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 284) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row284 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row284 H]
  have hshape : boundaryInput284 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput284 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput284 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection11030, reductionProjection11030, reductionProjection11034, oldProjection3408, reductionProjection10736, oldProjection3362] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput284 (0 : Fin 6)) = canonicalInput31844.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput284 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11030 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput284 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11030 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31844 hH))).trans (reductionSound11030 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput284 (1 : Fin 6)) = canonicalInput31932.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput284 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11030 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput284 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11030 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31932 hH))).trans (reductionSound11030 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput284 (2 : Fin 6)) = canonicalInput31948.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput284 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11034 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput284 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11034 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31948 hH))).trans (reductionSound11034 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput284 (3 : Fin 6)) = canonicalInput31961.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput284 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3408 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput284 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3408 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31961 hH))).trans (oldProjectionSound3408 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput284 (4 : Fin 6)) = canonicalInput31965.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput284 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10736 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput284 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10736 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31965 hH))).trans (reductionSound10736 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput284 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw10041 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput284 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3362 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput284 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3362 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical10041 hH))).trans (oldProjectionSound3362 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput284 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 288, 1440] ![-1440, -1440, -1440, -1440, -7200, -1440] (extendRow Arithmetic.row284) ![reductionProjection11030, reductionProjection11030, reductionProjection11034, oldProjection3408, reductionProjection10736, oldProjection3362]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput393 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, -1, 1, -1], ![-1, -1, -1, 3], ![-1, 0, 3, -2]]

theorem rowSound393 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 393) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row393 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row393 H]
  have hshape : boundaryInput393 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput393 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput393 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection11018, oldProjection3409, reductionProjection11022, oldProjection3364, reductionProjection10724, oldProjection3359] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput393 (0 : Fin 6)) = canonicalInput31861.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput393 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11018 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput393 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11018 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31861 hH))).trans (reductionSound11018 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput393 (1 : Fin 6)) = canonicalInput31973.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput393 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection3409 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput393 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection3409 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31973 hH))).trans (oldProjectionSound3409 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput393 (2 : Fin 6)) = canonicalInput32036.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput393 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11022 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput393 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11022 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32036 hH))).trans (reductionSound11022 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput393 (3 : Fin 6)) = canonicalInput32059.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput393 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3364 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput393 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3364 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32059 hH))).trans (oldProjectionSound3364 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput393 (4 : Fin 6)) = canonicalInput32060.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput393 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10724 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput393 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10724 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32060 hH))).trans (reductionSound10724 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput393 (5 : Fin 6)) = canonicalInput32061.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput393 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3359 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput393 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3359 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32061 hH))).trans (oldProjectionSound3359 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput393 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-1440, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row393) ![reductionProjection11018, oldProjection3409, reductionProjection11022, oldProjection3364, reductionProjection10724, oldProjection3359]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
