import NoFourMUBs.Step2.SOS.Canonical433
import NoFourMUBs.Step2.SOS.Canonical435
import NoFourMUBs.Step2.SOS.Canonical436
import NoFourMUBs.Step2.SOS.Canonical448
import NoFourMUBs.Step2.SOS.Canonical449
import NoFourMUBs.Step2.SOS.Canonical452
import NoFourMUBs.Step2.SOS.Canonical453
import NoFourMUBs.Step2.SOS.Canonical454
import NoFourMUBs.Step2.SOS.Canonical458
import NoFourMUBs.Step2.SOS.Canonical461
import NoFourMUBs.Step2.SOS.Canonical462
import NoFourMUBs.Step2.SOS.Canonical468
import NoFourMUBs.Step2.SOS.Canonical469
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections027
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.OldProjections041
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions109
import NoFourMUBs.Step2.SOS.Reductions167
import NoFourMUBs.Step2.SOS.Reductions168
import NoFourMUBs.Step2.SOS.Reductions169
import NoFourMUBs.Step2.SOS.Reductions170
import NoFourMUBs.Step2.SOS.Reductions212
import NoFourMUBs.Step2.SOS.Reductions229
import NoFourMUBs.Step2.SOS.Reductions230
import NoFourMUBs.Step2.SOS.Reductions234
import NoFourMUBs.Step2.SOS.Reductions236
import NoFourMUBs.Step2.SOS.Reductions237
import NoFourMUBs.Step2.SOS.Reductions238
import NoFourMUBs.Step2.SOS.Reductions240
import NoFourMUBs.Step2.SOS.Reductions244
import NoFourMUBs.Step2.SOS.Reductions245
import NoFourMUBs.Step2.SOS.Reductions250
import NoFourMUBs.Step2.SOS.Reductions251

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput784 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![1, -2, 0, 1], ![1, 0, 1, -2]]

theorem rowSound784 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 784) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row784 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row784 H]
  have hshape : boundaryInput784 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput784 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 1440, 1440, 360] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput784 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7342, reductionProjection3501, reductionProjection8036, reductionProjection5424, reductionProjection5458, oldProjection3432] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput784 (0 : Fin 6)) = canonicalInput27741.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput784 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7342 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput784 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7342 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27741 hH))).trans (reductionSound7342 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput784 (1 : Fin 6)) = canonicalInput28735.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput784 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3501 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput784 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3501 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28735 hH))).trans (reductionSound3501 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput784 (2 : Fin 6)) = canonicalInput28943.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput784 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8036 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput784 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8036 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28943 hH))).trans (reductionSound8036 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput784 (3 : Fin 6)) = canonicalInput29056.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput784 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5424 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput784 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5424 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29056 hH))).trans (reductionSound5424 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput784 (4 : Fin 6)) = canonicalInput29063.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput784 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5458 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput784 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5458 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29063 hH))).trans (reductionSound5458 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput784 (5 : Fin 6)) = canonicalInput29064.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput784 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3432 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput784 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3432 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29064 hH))).trans (oldProjectionSound3432 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput784 (j : Fin 6)))
    1440 1440 ![1440, 1440, 288, 1440, 1440, 360] ![-1440, -1440, -7200, -1440, -1440, -5760] (extendRow Arithmetic.row784) ![reductionProjection7342, reductionProjection3501, reductionProjection8036, reductionProjection5424, reductionProjection5458, oldProjection3432]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput869 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![0, -2, 2, 0], ![2, 0, -1, -1]]

theorem rowSound869 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 869) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row869 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row869 H]
  have hshape : boundaryInput869 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput869 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 720, 1440, 360, 1440, 36] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput869 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7689, oldProjection2021, reductionProjection7497, reductionProjection7687, reductionProjection8049, reductionProjection7509] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput869 (0 : Fin 6)) = canonicalInput27739.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput869 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7689 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput869 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7689 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27739 hH))).trans (reductionSound7689 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput869 (1 : Fin 6)) = canonicalInput28733.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput869 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection2021 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput869 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection2021 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28733 hH))).trans (oldProjectionSound2021 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput869 (2 : Fin 6)) = canonicalInput28941.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput869 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7497 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput869 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7497 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28941 hH))).trans (reductionSound7497 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput869 (3 : Fin 6)) = canonicalInput29054.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput869 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7687 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput869 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7687 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29054 hH))).trans (reductionSound7687 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput869 (4 : Fin 6)) = canonicalInput29059.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput869 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8049 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput869 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8049 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29059 hH))).trans (reductionSound8049 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput869 (5 : Fin 6)) = canonicalInput29060.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput869 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7509 (Normalization.momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst boundaryInput869 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7509 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29060 hH))).trans (reductionSound7509 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput869 (j : Fin 6)))
    144 1440 ![1440, 720, 1440, 360, 1440, 36] ![-144, -288, -144, -576, -144, -5760] (extendRow Arithmetic.row869) ![reductionProjection7689, oldProjection2021, reductionProjection7497, reductionProjection7687, reductionProjection8049, reductionProjection7509]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput870 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, 1, 0], ![0, -2, 1, 1], ![2, 0, -1, -1]]

theorem rowSound870 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 870) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row870 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row870 H]
  have hshape : boundaryInput870 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput870 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput870 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8052, oldProjection2065, reductionProjection8049, reductionProjection8049, reductionProjection7497, reductionProjection7493] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput870 (0 : Fin 6)) = canonicalInput27744.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput870 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8052 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput870 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8052 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27744 hH))).trans (reductionSound8052 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput870 (1 : Fin 6)) = canonicalInput28738.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput870 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection2065 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput870 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection2065 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28738 hH))).trans (oldProjectionSound2065 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput870 (2 : Fin 6)) = canonicalInput28946.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput870 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8049 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput870 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8049 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28946 hH))).trans (reductionSound8049 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput870 (3 : Fin 6)) = canonicalInput29059.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput870 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8049 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput870 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8049 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29059 hH))).trans (reductionSound8049 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput870 (4 : Fin 6)) = canonicalInput29069.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput870 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7497 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput870 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7497 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29069 hH))).trans (reductionSound7497 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput870 (5 : Fin 6)) = canonicalInput29070.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput870 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7493 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput870 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7493 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29070 hH))).trans (reductionSound7493 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput870 (j : Fin 6)))
    1440 1440 ![720, 1440, 1440, 1440, 1440, 1440] ![-2880, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row870) ![reductionProjection8052, oldProjection2065, reductionProjection8049, reductionProjection8049, reductionProjection7497, reductionProjection7493]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput881 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, 1, 1], ![-1, 0, 2, -1], ![0, 2, 0, -2]]

theorem rowSound881 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 881) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row881 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row881 H]
  have hshape : boundaryInput881 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput881 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 288, 720, 1440, 1440, 144] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput881 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7585, reductionProjection7567, reductionProjection7632, reductionProjection7374, reductionProjection7572, reductionProjection8062] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput881 (0 : Fin 6)) = canonicalInput27940.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput881 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7585 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput881 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7585 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27940 hH))).trans (reductionSound7585 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput881 (1 : Fin 6)) = canonicalInput29992.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput881 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7567 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput881 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7567 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29992 hH))).trans (reductionSound7567 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput881 (2 : Fin 6)) = canonicalInput30030.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput881 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7632 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput881 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7632 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30030 hH))).trans (reductionSound7632 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput881 (3 : Fin 6)) = canonicalInput30047.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput881 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7374 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput881 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7374 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30047 hH))).trans (reductionSound7374 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput881 (4 : Fin 6)) = canonicalInput30052.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput881 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7572 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput881 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7572 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30052 hH))).trans (reductionSound7572 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput881 (5 : Fin 6)) = canonicalInput30053.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput881 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8062 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput881 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8062 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30053 hH))).trans (reductionSound8062 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput881 (j : Fin 6)))
    144 1440 ![720, 288, 720, 1440, 1440, 144] ![-288, -720, -288, -144, -144, -1440] (extendRow Arithmetic.row881) ![reductionProjection7585, reductionProjection7567, reductionProjection7632, reductionProjection7374, reductionProjection7572, reductionProjection8062]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1170 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![0, 2, 0, -2], ![-1, 0, 3, -2]]

theorem rowSound1170 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1170) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1170 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1170 H]
  have hshape : boundaryInput1170 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1170 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 36, 720, 1440, 72, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1170 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7583, reductionProjection7565, reductionProjection7630, reductionProjection7563, reductionProjection8063, reductionProjection7374] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1170 (0 : Fin 6)) = canonicalInput27939.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1170 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7583 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1170 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7583 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27939 hH))).trans (reductionSound7583 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1170 (1 : Fin 6)) = canonicalInput29991.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1170 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7565 (Normalization.momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1170 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7565 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29991 hH))).trans (reductionSound7565 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1170 (2 : Fin 6)) = canonicalInput30029.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1170 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7630 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1170 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7630 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30029 hH))).trans (reductionSound7630 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1170 (3 : Fin 6)) = canonicalInput30045.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1170 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7563 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1170 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7563 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30045 hH))).trans (reductionSound7563 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1170 (4 : Fin 6)) = canonicalInput30050.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1170 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8063 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1170 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8063 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30050 hH))).trans (reductionSound8063 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1170 (5 : Fin 6)) = canonicalInput30051.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1170 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7374 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1170 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7374 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30051 hH))).trans (reductionSound7374 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1170 (j : Fin 6)))
    1440 1440 ![1440, 36, 720, 1440, 72, 1440] ![-1440, -57600, -2880, -1440, -28800, -1440] (extendRow Arithmetic.row1170) ![reductionProjection7583, reductionProjection7565, reductionProjection7630, reductionProjection7563, reductionProjection8063, reductionProjection7374]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1301 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![0, 1, 1, -2], ![1, -2, 2, -1]]

theorem rowSound1301 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1301) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1301 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1301 H]
  have hshape : boundaryInput1301 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1301 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1301 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7834, reductionProjection7853, reductionProjection8031, reductionProjection5371, reductionProjection5428, reductionProjection8034] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1301 (0 : Fin 6)) = canonicalInput27850.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1301 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7834 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1301 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7834 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27850 hH))).trans (reductionSound7834 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1301 (1 : Fin 6)) = canonicalInput29371.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1301 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7853 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1301 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7853 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29371 hH))).trans (reductionSound7853 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1301 (2 : Fin 6)) = canonicalInput29559.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1301 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8031 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1301 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8031 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29559 hH))).trans (reductionSound8031 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1301 (3 : Fin 6)) = canonicalInput29602.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1301 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5371 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1301 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5371 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29602 hH))).trans (reductionSound5371 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1301 (4 : Fin 6)) = canonicalInput29608.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1301 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5428 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1301 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5428 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29608 hH))).trans (reductionSound5428 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1301 (5 : Fin 6)) = canonicalInput29609.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1301 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8034 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1301 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8034 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29609 hH))).trans (reductionSound8034 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1301 (j : Fin 6)))
    1440 1440 ![1440, 288, 1440, 1440, 1440, 1440] ![-1440, -7200, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row1301) ![reductionProjection7834, reductionProjection7853, reductionProjection8031, reductionProjection5371, reductionProjection5428, reductionProjection8034]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1302 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![1, -2, 1, 0], ![0, 1, 2, -3]]

theorem rowSound1302 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1302) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1302 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1302 H]
  have hshape : boundaryInput1302 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1302 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1302 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7835, reductionProjection7854, reductionProjection8042, reductionProjection5378, reductionProjection6792, reductionProjection8034] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1302 (0 : Fin 6)) = canonicalInput27851.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1302 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7835 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1302 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7835 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27851 hH))).trans (reductionSound7835 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1302 (1 : Fin 6)) = canonicalInput29372.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1302 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7854 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1302 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7854 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29372 hH))).trans (reductionSound7854 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1302 (2 : Fin 6)) = canonicalInput29560.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1302 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8042 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1302 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8042 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29560 hH))).trans (reductionSound8042 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1302 (3 : Fin 6)) = canonicalInput29603.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1302 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5378 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1302 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5378 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29603 hH))).trans (reductionSound5378 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1302 (4 : Fin 6)) = canonicalInput29610.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1302 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6792 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1302 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6792 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29610 hH))).trans (reductionSound6792 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1302 (5 : Fin 6)) = canonicalInput29611.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1302 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8034 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1302 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8034 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29611 hH))).trans (reductionSound8034 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1302 (j : Fin 6)))
    1440 1440 ![288, 1440, 1440, 1440, 1440, 1440] ![-7200, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row1302) ![reductionProjection7835, reductionProjection7854, reductionProjection8042, reductionProjection5378, reductionProjection6792, reductionProjection8034]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1303 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![1, 1, 0, -2], ![0, -2, 3, -1]]

theorem rowSound1303 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1303) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1303 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1303 H]
  have hshape : boundaryInput1303 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1303 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![360, 1440, 360, 720, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1303 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7838, reductionProjection7856, reductionProjection8047, reductionProjection5383, oldProjection3281, reductionProjection7498] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1303 (0 : Fin 6)) = canonicalInput27852.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1303 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7838 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1303 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7838 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27852 hH))).trans (reductionSound7838 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1303 (1 : Fin 6)) = canonicalInput29373.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1303 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7856 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1303 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7856 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29373 hH))).trans (reductionSound7856 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1303 (2 : Fin 6)) = canonicalInput29561.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1303 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8047 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1303 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8047 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29561 hH))).trans (reductionSound8047 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1303 (3 : Fin 6)) = canonicalInput29604.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1303 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5383 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1303 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5383 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29604 hH))).trans (reductionSound5383 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1303 (4 : Fin 6)) = canonicalInput29612.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1303 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3281 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1303 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3281 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29612 hH))).trans (oldProjectionSound3281 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1303 (5 : Fin 6)) = canonicalInput29613.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1303 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7498 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1303 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7498 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29613 hH))).trans (reductionSound7498 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1303 (j : Fin 6)))
    1440 1440 ![360, 1440, 360, 720, 1440, 1440] ![-5760, -1440, -5760, -2880, -1440, -1440] (extendRow Arithmetic.row1303) ![reductionProjection7838, reductionProjection7856, reductionProjection8047, reductionProjection5383, oldProjection3281, reductionProjection7498]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
