import NoFourMUBs.Step2.SOS.Canonical291
import NoFourMUBs.Step2.SOS.Canonical381
import NoFourMUBs.Step2.SOS.Canonical412
import NoFourMUBs.Step2.SOS.Canonical413
import NoFourMUBs.Step2.SOS.Canonical414
import NoFourMUBs.Step2.SOS.Canonical415
import NoFourMUBs.Step2.SOS.Canonical416
import NoFourMUBs.Step2.SOS.Canonical432
import NoFourMUBs.Step2.SOS.Canonical440
import NoFourMUBs.Step2.SOS.Canonical445
import NoFourMUBs.Step2.SOS.Canonical446
import NoFourMUBs.Step2.SOS.Canonical447
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections020
import NoFourMUBs.Step2.SOS.OldProjections026
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions007
import NoFourMUBs.Step2.SOS.Reductions053
import NoFourMUBs.Step2.SOS.Reductions054
import NoFourMUBs.Step2.SOS.Reductions178
import NoFourMUBs.Step2.SOS.Reductions182
import NoFourMUBs.Step2.SOS.Reductions189
import NoFourMUBs.Step2.SOS.Reductions190
import NoFourMUBs.Step2.SOS.Reductions191
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical269
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical270
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical273
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical274

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput1059 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, -1, 2, 1], ![0, 2, 1, -3]]

theorem rowSound1059 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1059) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1059 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1059 H]
  have hshape : boundaryInput1059 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1059 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![144, 144, 144, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1059 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6072, reductionProjection6072, reductionProjection6086, reductionProjection5846, oldProjection2992, oldProjection3099] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1059 (0 : Fin 6)) = canonicalInput27689.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1059 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6072 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1059 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6072 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27689 hH))).trans (reductionSound6072 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1059 (1 : Fin 6)) = canonicalInput28187.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1059 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6072 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1059 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6072 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28187 hH))).trans (reductionSound6072 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1059 (2 : Fin 6)) = canonicalInput28524.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1059 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6086 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1059 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6086 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28524 hH))).trans (reductionSound6086 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1059 (3 : Fin 6)) = canonicalInput28628.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1059 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5846 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1059 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5846 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28628 hH))).trans (reductionSound5846 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1059 (4 : Fin 6)) = canonicalInput28636.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1059 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2992 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1059 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2992 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28636 hH))).trans (oldProjectionSound2992 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1059 (5 : Fin 6)) = canonicalInput28637.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1059 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3099 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1059 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3099 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28637 hH))).trans (oldProjectionSound3099 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1059 (j : Fin 6)))
    1440 1440 ![144, 144, 144, 1440, 1440, 1440] ![-14400, -14400, -14400, -1440, -1440, -1440] (extendRow Arithmetic.row1059) ![reductionProjection6072, reductionProjection6072, reductionProjection6086, reductionProjection5846, oldProjection2992, oldProjection3099]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1126 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, 1, 1, -2], ![1, 1, 0, -2], ![-2, -1, 2, 1]]

theorem rowSound1126 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1126) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1126 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1126 H]
  have hshape : boundaryInput1126 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1126 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 1440, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1126 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6069, reductionProjection6069, reductionProjection6082, reductionProjection6080, reductionProjection5825, reductionProjection5709] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1126 (0 : Fin 6)) = canonicalInput27682.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1126 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6069 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1126 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6069 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27682 hH))).trans (reductionSound6069 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1126 (1 : Fin 6)) = canonicalInput28180.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1126 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6069 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1126 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6069 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28180 hH))).trans (reductionSound6069 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1126 (2 : Fin 6)) = canonicalInput28517.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1126 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6082 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1126 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6082 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28517 hH))).trans (reductionSound6082 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1126 (3 : Fin 6)) = canonicalInput28601.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1126 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6080 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1126 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6080 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28601 hH))).trans (reductionSound6080 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1126 (4 : Fin 6)) = canonicalInput28604.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1126 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5825 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1126 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5825 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28604 hH))).trans (reductionSound5825 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1126 (5 : Fin 6)) = canonicalInput28605.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1126 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5709 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1126 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5709 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28605 hH))).trans (reductionSound5709 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1126 (j : Fin 6)))
    1440 1440 ![1440, 1440, 288, 1440, 720, 1440] ![-1440, -1440, -7200, -1440, -2880, -1440] (extendRow Arithmetic.row1126) ![reductionProjection6069, reductionProjection6069, reductionProjection6082, reductionProjection6080, reductionProjection5825, reductionProjection5709]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1127 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, 2, 0, -2], ![1, 0, 1, -2], ![-2, -1, 2, 1]]

theorem rowSound1127 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1127) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1127 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1127 H]
  have hshape : boundaryInput1127 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1127 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![144, 144, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1127 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6070, reductionProjection6070, reductionProjection6084, reductionProjection5847, oldProjection3099, reductionProjection5712] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1127 (0 : Fin 6)) = canonicalInput27684.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1127 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6070 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1127 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6070 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27684 hH))).trans (reductionSound6070 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1127 (1 : Fin 6)) = canonicalInput28182.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1127 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6070 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1127 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6070 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28182 hH))).trans (reductionSound6070 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1127 (2 : Fin 6)) = canonicalInput28519.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1127 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6084 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1127 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6084 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28519 hH))).trans (reductionSound6084 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1127 (3 : Fin 6)) = canonicalInput28607.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1127 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5847 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1127 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5847 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28607 hH))).trans (reductionSound5847 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1127 (4 : Fin 6)) = canonicalInput28610.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1127 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3099 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1127 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3099 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28610 hH))).trans (oldProjectionSound3099 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1127 (5 : Fin 6)) = canonicalInput28611.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1127 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5712 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1127 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5712 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28611 hH))).trans (reductionSound5712 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1127 (j : Fin 6)))
    144 1440 ![144, 144, 1440, 1440, 1440, 1440] ![-1440, -1440, -144, -144, -144, -144] (extendRow Arithmetic.row1127) ![reductionProjection6070, reductionProjection6070, reductionProjection6084, reductionProjection5847, oldProjection3099, reductionProjection5712]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput14 : Matrix (Fin 7) (Fin 3) ℤ := ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![1, 0, -1], ![-2, -1, 3], ![1, 3, -4]]

theorem rowSound14 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 14) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row14 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row14 H]
  have hshape : boundaryInput14 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput14 2 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![480, 480, 480, 480, 480, 96] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput14 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6141, reductionProjection6141, oldProjection553, oldProjection1875, reductionProjection1735, oldProjection1876] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput14 (0 : Fin 6)) = canonicalInput24388.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput14 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6141 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput14 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6141 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound24388 hH))).trans (reductionSound6141 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput14 (1 : Fin 6)) = canonicalInput26409.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput14 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6141 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput14 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6141 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26409 hH))).trans (reductionSound6141 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput14 (2 : Fin 6)) = canonicalInput26475.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput14 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection553 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput14 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection553 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26475 hH))).trans (oldProjectionSound553 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput14 (3 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw8632 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput14 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection1875 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput14 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection1875 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8632 hH))).trans (oldProjectionSound1875 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput14 (4 : Fin 6)) = canonicalInput26488.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput14 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1735 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput14 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1735 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26488 hH))).trans (reductionSound1735 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput14 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw8639 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput14 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection1876 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput14 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection1876 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8639 hH))).trans (oldProjectionSound1876 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput14 (j : Fin 6)))
    480 480 ![480, 480, 480, 480, 480, 96] ![-480, -480, -480, -480, -480, -2400] (extendRow Arithmetic.row14) ![reductionProjection6141, reductionProjection6141, oldProjection553, oldProjection1875, reductionProjection1735, oldProjection1876]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput15 : Matrix (Fin 7) (Fin 3) ℤ := ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![1, 0, -1], ![1, 0, -1], ![-2, -1, 3], ![0, 4, -4]]

theorem rowSound15 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 15) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row15 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row15 H]
  have hshape : boundaryInput15 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput15 2 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![48, 48, 480, 480, 48, 240] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput15 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6142, reductionProjection6142, oldProjection1879, oldProjection1879, reductionProjection1736, oldProjection1878] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput15 (0 : Fin 6)) = canonicalInput24399.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput15 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6142 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput15 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6142 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound24399 hH))).trans (reductionSound6142 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput15 (1 : Fin 6)) = canonicalInput26420.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput15 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6142 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput15 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6142 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26420 hH))).trans (reductionSound6142 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput15 (2 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw8655 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput15 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection1879 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput15 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection1879 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8655 hH))).trans (oldProjectionSound1879 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput15 (3 : Fin 6)) = canonicalInput26541.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput15 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection1879 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput15 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection1879 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26541 hH))).trans (oldProjectionSound1879 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput15 (4 : Fin 6)) = canonicalInput26543.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput15 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1736 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput15 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1736 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26543 hH))).trans (reductionSound1736 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput15 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw8668 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput15 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection1878 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput15 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection1878 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8668 hH))).trans (oldProjectionSound1878 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput15 (j : Fin 6)))
    240 480 ![48, 48, 480, 480, 48, 240] ![-2400, -2400, -240, -240, -2400, -480] (extendRow Arithmetic.row15) ![reductionProjection6142, reductionProjection6142, oldProjection1879, oldProjection1879, reductionProjection1736, oldProjection1878]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput51 : Matrix (Fin 7) (Fin 3) ℤ := ![![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![1, 0, -1], ![1, 0, -1], ![-2, -1, 3], ![-1, 4, -3]]

theorem rowSound51 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 51) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row51 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row51 H]
  have hshape : boundaryInput51 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput51 2 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![96, 480, 480, 480, 96, 480] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput51 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6134, reductionProjection6135, oldProjection1869, oldProjection1869, reductionProjection1717, oldProjection1425] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput51 (0 : Fin 6)) = canonicalInput24418.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput51 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6134 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput51 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6134 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound24418 hH))).trans (reductionSound6134 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput51 (1 : Fin 6)) = canonicalInput26614.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput51 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6135 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput51 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6135 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26614 hH))).trans (reductionSound6135 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput51 (2 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw8786 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput51 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection1869 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput51 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection1869 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8786 hH))).trans (oldProjectionSound1869 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput51 (3 : Fin 6)) = canonicalInput26639.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput51 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection1869 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput51 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection1869 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26639 hH))).trans (oldProjectionSound1869 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput51 (4 : Fin 6)) = canonicalInput26640.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput51 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1717 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput51 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1717 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26640 hH))).trans (reductionSound1717 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput51 (5 : Fin 6)) = canonicalInput26641.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput51 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection1425 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput51 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection1425 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26641 hH))).trans (oldProjectionSound1425 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput51 (j : Fin 6)))
    96 480 ![96, 480, 480, 480, 96, 480] ![-480, -96, -96, -96, -480, -96] (extendRow Arithmetic.row51) ![reductionProjection6134, reductionProjection6135, oldProjection1869, oldProjection1869, reductionProjection1717, oldProjection1425]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput58 : Matrix (Fin 7) (Fin 3) ℤ := ![![-1, 0, 1], ![0, -1, 1], ![0, 1, -1], ![1, -1, 0], ![1, -1, 0], ![-2, -1, 3], ![1, 3, -4]]

theorem rowSound58 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 58) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row58 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row58 H]
  have hshape : boundaryInput58 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput58 2 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![96, 96, 480, 480, 96, 240] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput58 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6108, reductionProjection6120, oldProjection1875, oldProjection1875, reductionProjection253, oldProjection1887] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput58 (0 : Fin 6)) = canonicalInput18656.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput58 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6108 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput58 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6108 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound18656 hH))).trans (reductionSound6108 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput58 (1 : Fin 6)) = canonicalInput26396.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput58 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6120 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput58 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6120 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26396 hH))).trans (reductionSound6120 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput58 (2 : Fin 6)) = canonicalInput26557.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput58 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection1875 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput58 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection1875 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26557 hH))).trans (oldProjectionSound1875 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput58 (3 : Fin 6)) = canonicalInput26582.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput58 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection1875 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput58 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection1875 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26582 hH))).trans (oldProjectionSound1875 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput58 (4 : Fin 6)) = canonicalInput26587.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput58 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection253 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput58 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection253 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26587 hH))).trans (reductionSound253 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput58 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw8747 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput58 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection1887 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput58 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection1887 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8747 hH))).trans (oldProjectionSound1887 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput58 (j : Fin 6)))
    480 480 ![96, 96, 480, 480, 96, 240] ![-2400, -2400, -480, -480, -2400, -960] (extendRow Arithmetic.row58) ![reductionProjection6108, reductionProjection6120, oldProjection1875, oldProjection1875, reductionProjection253, oldProjection1887]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput72 : Matrix (Fin 7) (Fin 3) ℤ := ![![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![1, -1, 0], ![-1, 2, -1], ![-2, -1, 3], ![2, 1, -3]]

theorem rowSound72 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 72) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row72 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row72 H]
  have hshape : boundaryInput72 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput72 2 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![96, 96, 96, 480, 96, 480] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput72 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6119, oldProjection532, reductionProjection6127, oldProjection1858, reductionProjection1712, oldProjection1865] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput72 (0 : Fin 6)) = canonicalInput24404.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput72 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6119 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput72 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6119 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound24404 hH))).trans (reductionSound6119 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput72 (1 : Fin 6)) = canonicalInput26545.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput72 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection532 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput72 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection532 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26545 hH))).trans (oldProjectionSound532 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput72 (2 : Fin 6)) = canonicalInput26567.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput72 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6127 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput72 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6127 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26567 hH))).trans (reductionSound6127 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput72 (3 : Fin 6)) = canonicalInput26575.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput72 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection1858 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput72 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection1858 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26575 hH))).trans (oldProjectionSound1858 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput72 (4 : Fin 6)) = canonicalInput26577.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput72 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1712 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput72 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1712 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26577 hH))).trans (reductionSound1712 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput72 (5 : Fin 6)) = canonicalInput26578.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput72 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection1865 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput72 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection1865 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26578 hH))).trans (oldProjectionSound1865 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput72 (j : Fin 6)))
    480 480 ![96, 96, 96, 480, 96, 480] ![-2400, -2400, -2400, -480, -2400, -480] (extendRow Arithmetic.row72) ![reductionProjection6119, oldProjection532, reductionProjection6127, oldProjection1858, reductionProjection1712, oldProjection1865]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
