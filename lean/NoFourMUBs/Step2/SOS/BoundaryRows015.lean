import NoFourMUBs.Step2.SOS.Canonical388
import NoFourMUBs.Step2.SOS.Canonical461
import NoFourMUBs.Step2.SOS.Canonical463
import NoFourMUBs.Step2.SOS.Canonical470
import NoFourMUBs.Step2.SOS.Canonical472
import NoFourMUBs.Step2.SOS.Canonical485
import NoFourMUBs.Step2.SOS.Canonical486
import NoFourMUBs.Step2.SOS.Canonical487
import NoFourMUBs.Step2.SOS.Canonical497
import NoFourMUBs.Step2.SOS.Canonical498
import NoFourMUBs.Step2.SOS.Canonical499
import NoFourMUBs.Step2.SOS.Canonical500
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions027
import NoFourMUBs.Step2.SOS.Reductions081
import NoFourMUBs.Step2.SOS.Reductions082
import NoFourMUBs.Step2.SOS.Reductions115
import NoFourMUBs.Step2.SOS.Reductions116
import NoFourMUBs.Step2.SOS.Reductions120
import NoFourMUBs.Step2.SOS.Reductions129
import NoFourMUBs.Step2.SOS.Reductions146
import NoFourMUBs.Step2.SOS.Reductions147
import NoFourMUBs.Step2.SOS.Reductions148
import NoFourMUBs.Step2.SOS.Reductions149
import NoFourMUBs.Step2.SOS.Reductions162
import NoFourMUBs.Step2.SOS.Reductions164
import NoFourMUBs.Step2.SOS.Reductions165
import NoFourMUBs.Step2.SOS.Reductions168
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical292
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical299

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput1107 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, -1, 0, 3], ![0, 0, 3, -3]]

theorem rowSound1107 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1107) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1107 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1107 H]
  have hshape : boundaryInput1107 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1107 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 720, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1107 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4695, reductionProjection4695, reductionProjection4701, reductionProjection4702, reductionProjection2608, oldProjection3017] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1107 (0 : Fin 6)) = canonicalInput31842.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1107 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4695 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1107 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4695 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31842 hH))).trans (reductionSound4695 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1107 (1 : Fin 6)) = canonicalInput31930.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1107 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4695 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1107 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4695 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31930 hH))).trans (reductionSound4695 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1107 (2 : Fin 6)) = canonicalInput31946.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1107 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4701 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1107 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4701 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31946 hH))).trans (reductionSound4701 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1107 (3 : Fin 6)) = canonicalInput31959.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1107 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4702 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1107 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4702 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31959 hH))).trans (reductionSound4702 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1107 (4 : Fin 6)) = canonicalInput31962.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1107 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2608 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1107 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2608 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31962 hH))).trans (reductionSound2608 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1107 (5 : Fin 6)) = canonicalInput31963.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1107 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3017 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1107 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3017 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31963 hH))).trans (oldProjectionSound3017 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1107 (j : Fin 6)))
    1440 1440 ![1440, 1440, 720, 1440, 1440, 1440] ![-1440, -1440, -2880, -1440, -1440, -1440] (extendRow Arithmetic.row1107) ![reductionProjection4695, reductionProjection4695, reductionProjection4701, reductionProjection4702, reductionProjection2608, oldProjection3017]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput286 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, -1, 0, 3], ![0, 0, 4, -4]]

theorem rowSound286 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 286) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row286 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row286 H]
  have hshape : boundaryInput286 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput286 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 144, 288, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput286 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4714, reductionProjection4714, reductionProjection4718, reductionProjection4723, reductionProjection2637, reductionProjection4702] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput286 (0 : Fin 6)) = canonicalInput31841.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput286 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4714 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput286 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4714 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31841 hH))).trans (reductionSound4714 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput286 (1 : Fin 6)) = canonicalInput31929.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput286 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4714 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput286 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4714 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31929 hH))).trans (reductionSound4714 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput286 (2 : Fin 6)) = canonicalInput31945.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput286 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4718 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput286 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4718 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31945 hH))).trans (reductionSound4718 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput286 (3 : Fin 6)) = canonicalInput31956.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput286 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4723 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput286 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4723 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31956 hH))).trans (reductionSound4723 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput286 (4 : Fin 6)) = canonicalInput31958.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput286 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2637 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput286 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2637 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31958 hH))).trans (reductionSound2637 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput286 (5 : Fin 6)) = canonicalInput31959.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput286 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4702 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput286 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4702 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31959 hH))).trans (reductionSound4702 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput286 (j : Fin 6)))
    1440 1440 ![288, 288, 144, 288, 288, 1440] ![-7200, -7200, -14400, -7200, -7200, -1440] (extendRow Arithmetic.row286) ![reductionProjection4714, reductionProjection4714, reductionProjection4718, reductionProjection4723, reductionProjection2637, reductionProjection4702]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1105 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, -1, 0, 3], ![0, 0, 3, -3]]

theorem rowSound1105 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1105) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1105 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1105 H]
  have hshape : boundaryInput1105 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1105 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1105 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4697, reductionProjection4702, reductionProjection4705, reductionProjection4707, reductionProjection2622, oldProjection3018] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1105 (0 : Fin 6)) = canonicalInput31851.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1105 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4697 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1105 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4697 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31851 hH))).trans (reductionSound4697 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1105 (1 : Fin 6)) = canonicalInput31959.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1105 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4702 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1105 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4702 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31959 hH))).trans (reductionSound4702 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1105 (2 : Fin 6)) = canonicalInput31994.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1105 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4705 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1105 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4705 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31994 hH))).trans (reductionSound4705 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1105 (3 : Fin 6)) = canonicalInput32014.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1105 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4707 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1105 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4707 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32014 hH))).trans (reductionSound4707 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1105 (4 : Fin 6)) = canonicalInput32017.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1105 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2622 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1105 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2622 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32017 hH))).trans (reductionSound2622 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1105 (5 : Fin 6)) = canonicalInput32018.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1105 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3018 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1105 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3018 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32018 hH))).trans (oldProjectionSound3018 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1105 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 720] ![-1440, -1440, -1440, -1440, -1440, -2880] (extendRow Arithmetic.row1105) ![reductionProjection4697, reductionProjection4702, reductionProjection4705, reductionProjection4707, reductionProjection2622, oldProjection3018]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput453 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, -1, 0, 3], ![0, 1, 3, -4]]

theorem rowSound453 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 453) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row453 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row453 H]
  have hshape : boundaryInput453 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput453 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 144, 144, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput453 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection2991, oldProjection2991, reductionProjection4754, reductionProjection4757, reductionProjection871, reductionProjection4702] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput453 (0 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9594 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput453 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection2991 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput453 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection2991 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9594 hH))).trans (oldProjectionSound2991 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput453 (1 : Fin 6)) = canonicalInput31927.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput453 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection2991 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput453 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection2991 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31927 hH))).trans (oldProjectionSound2991 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput453 (2 : Fin 6)) = canonicalInput31944.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput453 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4754 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput453 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4754 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31944 hH))).trans (reductionSound4754 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput453 (3 : Fin 6)) = canonicalInput31952.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput453 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4757 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput453 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4757 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31952 hH))).trans (reductionSound4757 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput453 (4 : Fin 6)) = canonicalInput31957.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput453 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection871 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput453 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection871 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31957 hH))).trans (reductionSound871 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput453 (5 : Fin 6)) = canonicalInput31959.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput453 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4702 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput453 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4702 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31959 hH))).trans (reductionSound4702 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput453 (j : Fin 6)))
    288 1440 ![1440, 1440, 288, 144, 144, 1440] ![-288, -288, -1440, -2880, -2880, -288] (extendRow Arithmetic.row453) ![oldProjection2991, oldProjection2991, reductionProjection4754, reductionProjection4757, reductionProjection871, reductionProjection4702]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput649 : Matrix (Fin 7) (Fin 5) ℤ := ![![0, 0, 0, -1, 1], ![0, 0, 0, 1, -1], ![0, 0, 1, -1, 0], ![0, 0, 1, 0, -1], ![1, 1, 0, -1, -1], ![-2, 1, -1, 0, 2], ![1, -2, -1, 2, 0]]

theorem rowSound649 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 649) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row649 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row649 H]
  have hshape : boundaryInput649 0 = Pi.single (4 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput649 4 3 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![72, 1440, 288, 576, 1440, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput649 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection3700, reductionProjection4774, reductionProjection3731, reductionProjection3701, reductionProjection4769, reductionProjection3845] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput649 (0 : Fin 6)) = canonicalInput30235.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput649 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3700 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput649 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3700 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound30235 hH))).trans (reductionSound3700 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput649 (1 : Fin 6)) = canonicalInput31067.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput649 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4774 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput649 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4774 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound31067 hH))).trans (reductionSound4774 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput649 (2 : Fin 6)) = canonicalInput31071.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput649 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3731 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput649 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3731 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound31071 hH))).trans (reductionSound3731 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput649 (3 : Fin 6)) = canonicalInput31079.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput649 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3701 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput649 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3701 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound31079 hH))).trans (reductionSound3701 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput649 (4 : Fin 6)) = canonicalInput31081.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput649 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4769 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput649 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4769 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound31081 hH))).trans (reductionSound4769 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput649 (5 : Fin 6)) = canonicalInput31082.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput649 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3845 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput649 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3845 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound31082 hH))).trans (reductionSound3845 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput649 (j : Fin 6)))
    288 2880 ![72, 1440, 288, 576, 1440, 2880] ![-11520, -576, -2880, -1440, -576, -288] (extendRow Arithmetic.row649) ![reductionProjection3700, reductionProjection4774, reductionProjection3731, reductionProjection3701, reductionProjection4769, reductionProjection3845]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput650 : Matrix (Fin 7) (Fin 5) ℤ := ![![0, 0, 0, -1, 1], ![0, 0, 0, 1, -1], ![0, 0, 1, -1, 0], ![0, 0, 1, 0, -1], ![1, 1, 0, -1, -1], ![-2, 1, -1, 1, 1], ![1, -2, -1, 1, 1]]

theorem rowSound650 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 650) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row650 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row650 H]
  have hshape : boundaryInput650 0 = Pi.single (4 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput650 4 3 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 720, 2880, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput650 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection3844, reductionProjection5193, reductionProjection5192, reductionProjection5184, reductionProjection3845, reductionProjection3845] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput650 (0 : Fin 6)) = canonicalInput30236.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput650 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3844 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput650 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3844 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound30236 hH))).trans (reductionSound3844 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput650 (1 : Fin 6)) = canonicalInput31068.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput650 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5193 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput650 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5193 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound31068 hH))).trans (reductionSound5193 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput650 (2 : Fin 6)) = canonicalInput31072.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput650 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5192 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput650 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5192 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound31072 hH))).trans (reductionSound5192 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput650 (3 : Fin 6)) = canonicalInput31080.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput650 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5184 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput650 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5184 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound31080 hH))).trans (reductionSound5184 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput650 (4 : Fin 6)) = canonicalInput31082.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput650 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3845 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput650 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3845 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound31082 hH))).trans (reductionSound3845 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput650 (5 : Fin 6)) = canonicalInput31083.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput650 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3845 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput650 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3845 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound31083 hH))).trans (reductionSound3845 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput650 (j : Fin 6)))
    1440 2880 ![1440, 1440, 1440, 720, 2880, 2880] ![-2880, -2880, -2880, -5760, -1440, -1440] (extendRow Arithmetic.row650) ![reductionProjection3844, reductionProjection5193, reductionProjection5192, reductionProjection5184, reductionProjection3845, reductionProjection3845]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput227 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, -1, -1, 2], ![-2, -1, 1, 2], ![2, 1, -1, -2]]

theorem rowSound227 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 227) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row227 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row227 H]
  have hshape : boundaryInput227 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput227 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 1440, 288, 288, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput227 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4150, reductionProjection4150, reductionProjection5306, reductionProjection5273, reductionProjection4152, reductionProjection5309] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput227 (0 : Fin 6)) = canonicalInput30140.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput227 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4150 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput227 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4150 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30140 hH))).trans (reductionSound4150 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput227 (1 : Fin 6)) = canonicalInput31159.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput227 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4150 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput227 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4150 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31159 hH))).trans (reductionSound4150 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput227 (2 : Fin 6)) = canonicalInput31202.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput227 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5306 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput227 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5306 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31202 hH))).trans (reductionSound5306 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput227 (3 : Fin 6)) = canonicalInput31224.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput227 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5273 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput227 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5273 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31224 hH))).trans (reductionSound5273 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput227 (4 : Fin 6)) = canonicalInput31226.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput227 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4152 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput227 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4152 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31226 hH))).trans (reductionSound4152 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput227 (5 : Fin 6)) = canonicalInput31227.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput227 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5309 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput227 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5309 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31227 hH))).trans (reductionSound5309 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput227 (j : Fin 6)))
    1440 1440 ![288, 288, 1440, 288, 288, 288] ![-7200, -7200, -1440, -7200, -7200, -7200] (extendRow Arithmetic.row227) ![reductionProjection4150, reductionProjection4150, reductionProjection5306, reductionProjection5273, reductionProjection4152, reductionProjection5309]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput419 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 1, -1, 2], ![0, 1, 3, -4]]

theorem rowSound419 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 419) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row419 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row419 H]
  have hshape : boundaryInput419 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput419 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![360, 288, 1440, 1440, 360, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput419 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5297, oldProjection3256, reductionProjection5386, reductionProjection5386, oldProjection3133, oldProjection3263] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput419 (0 : Fin 6)) = canonicalInput24859.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput419 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5297 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput419 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5297 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24859 hH))).trans (reductionSound5297 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput419 (1 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9369 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput419 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection3256 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput419 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection3256 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9369 hH))).trans (oldProjectionSound3256 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput419 (2 : Fin 6)) = canonicalInput29550.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput419 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5386 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput419 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5386 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29550 hH))).trans (reductionSound5386 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput419 (3 : Fin 6)) = canonicalInput29663.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput419 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5386 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput419 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5386 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29663 hH))).trans (reductionSound5386 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput419 (4 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9590 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput419 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3133 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput419 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3133 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9590 hH))).trans (oldProjectionSound3133 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput419 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9592 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput419 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3263 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput419 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3263 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9592 hH))).trans (oldProjectionSound3263 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput419 (j : Fin 6)))
    1440 1440 ![360, 288, 1440, 1440, 360, 288] ![-5760, -7200, -1440, -1440, -5760, -7200] (extendRow Arithmetic.row419) ![reductionProjection5297, oldProjection3256, reductionProjection5386, reductionProjection5386, oldProjection3133, oldProjection3263]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
