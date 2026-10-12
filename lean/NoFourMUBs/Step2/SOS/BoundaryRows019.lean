import NoFourMUBs.Step2.SOS.Canonical388
import NoFourMUBs.Step2.SOS.Canonical433
import NoFourMUBs.Step2.SOS.Canonical434
import NoFourMUBs.Step2.SOS.Canonical435
import NoFourMUBs.Step2.SOS.Canonical449
import NoFourMUBs.Step2.SOS.Canonical450
import NoFourMUBs.Step2.SOS.Canonical452
import NoFourMUBs.Step2.SOS.Canonical454
import NoFourMUBs.Step2.SOS.Canonical455
import NoFourMUBs.Step2.SOS.Canonical456
import NoFourMUBs.Step2.SOS.Canonical457
import NoFourMUBs.Step2.SOS.Canonical458
import NoFourMUBs.Step2.SOS.Canonical459
import NoFourMUBs.Step2.SOS.Canonical460
import NoFourMUBs.Step2.SOS.Canonical463
import NoFourMUBs.Step2.SOS.Canonical464
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions039
import NoFourMUBs.Step2.SOS.Reductions143
import NoFourMUBs.Step2.SOS.Reductions144
import NoFourMUBs.Step2.SOS.Reductions166
import NoFourMUBs.Step2.SOS.Reductions176
import NoFourMUBs.Step2.SOS.Reductions177
import NoFourMUBs.Step2.SOS.Reductions178
import NoFourMUBs.Step2.SOS.Reductions179
import NoFourMUBs.Step2.SOS.Reductions180
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical291
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical296
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical298
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical299

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput818 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -1, -1], ![-2, -1, 2, 1]]

theorem rowSound818 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 818) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row818 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row818 H]
  have hshape : boundaryInput818 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput818 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 288, 288, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput818 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5742, oldProjection1790, oldProjection3062, reductionProjection5724, oldProjection3060, oldProjection3062] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput818 (0 : Fin 6)) = canonicalInput27769.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput818 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5742 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput818 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5742 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27769 hH))).trans (reductionSound5742 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput818 (1 : Fin 6)) = canonicalInput28766.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput818 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1790 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput818 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1790 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28766 hH))).trans (oldProjectionSound1790 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput818 (2 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9472 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput818 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection3062 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput818 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection3062 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9472 hH))).trans (oldProjectionSound3062 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput818 (3 : Fin 6)) = canonicalInput29137.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput818 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5724 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput818 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5724 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29137 hH))).trans (reductionSound5724 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput818 (4 : Fin 6)) = canonicalInput29147.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput818 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3060 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput818 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3060 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29147 hH))).trans (oldProjectionSound3060 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput818 (5 : Fin 6)) = canonicalInput29148.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput818 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3062 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput818 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3062 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29148 hH))).trans (oldProjectionSound3062 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput818 (j : Fin 6)))
    144 1440 ![1440, 1440, 288, 288, 288, 288] ![-144, -144, -720, -720, -720, -720] (extendRow Arithmetic.row818) ![reductionProjection5742, oldProjection1790, oldProjection3062, reductionProjection5724, oldProjection3060, oldProjection3062]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput823 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, 2, -1, -1], ![-2, -1, 2, 1]]

theorem rowSound823 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 823) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row823 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row823 H]
  have hshape : boundaryInput823 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput823 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 720, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput823 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5743, oldProjection1793, reductionProjection5730, oldProjection3067, oldProjection3069, oldProjection3067] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput823 (0 : Fin 6)) = canonicalInput27804.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput823 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5743 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput823 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5743 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27804 hH))).trans (reductionSound5743 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput823 (1 : Fin 6)) = canonicalInput28800.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput823 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1793 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput823 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1793 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28800 hH))).trans (oldProjectionSound1793 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput823 (2 : Fin 6)) = canonicalInput29210.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput823 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5730 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput823 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5730 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29210 hH))).trans (reductionSound5730 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput823 (3 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9540 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput823 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3067 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput823 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3067 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9540 hH))).trans (oldProjectionSound3067 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput823 (4 : Fin 6)) = canonicalInput29285.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput823 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3069 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput823 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3069 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29285 hH))).trans (oldProjectionSound3069 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput823 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9547 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput823 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3067 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput823 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3067 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9547 hH))).trans (oldProjectionSound3067 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput823 (j : Fin 6)))
    1440 1440 ![288, 288, 720, 1440, 1440, 1440] ![-7200, -7200, -2880, -1440, -1440, -1440] (extendRow Arithmetic.row823) ![reductionProjection5743, oldProjection1793, reductionProjection5730, oldProjection3067, oldProjection3069, oldProjection3067]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1139 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, 1, 1, -1], ![2, 0, -1, -1], ![-1, -2, 1, 2]]

theorem rowSound1139 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1139) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1139 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1139 H]
  have hshape : boundaryInput1139 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1139 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 720, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1139 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5657, oldProjection1774, reductionProjection5730, oldProjection3067, oldProjection3066, reductionProjection4582] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1139 (0 : Fin 6)) = canonicalInput27755.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1139 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5657 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1139 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5657 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27755 hH))).trans (reductionSound5657 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1139 (1 : Fin 6)) = canonicalInput28752.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1139 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1774 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1139 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1774 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28752 hH))).trans (oldProjectionSound1774 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1139 (2 : Fin 6)) = canonicalInput28965.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1139 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5730 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1139 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5730 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28965 hH))).trans (reductionSound5730 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1139 (3 : Fin 6)) = canonicalInput29099.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1139 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3067 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1139 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3067 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29099 hH))).trans (oldProjectionSound3067 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1139 (4 : Fin 6)) = canonicalInput29100.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1139 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3066 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1139 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3066 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29100 hH))).trans (oldProjectionSound3066 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1139 (5 : Fin 6)) = canonicalInput29101.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1139 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4582 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1139 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4582 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29101 hH))).trans (reductionSound4582 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1139 (j : Fin 6)))
    288 1440 ![1440, 1440, 720, 1440, 288, 1440] ![-288, -288, -576, -288, -1440, -288] (extendRow Arithmetic.row1139) ![reductionProjection5657, oldProjection1774, reductionProjection5730, oldProjection3067, oldProjection3066, reductionProjection4582]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1143 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![-1, 0, 2, -1], ![1, 2, -1, -2]]

theorem rowSound1143 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1143) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1143 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1143 H]
  have hshape : boundaryInput1143 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1143 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 72, 180, 720, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1143 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5736, oldProjection1784, reductionProjection5723, oldProjection3055, oldProjection3060, oldProjection3064] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1143 (0 : Fin 6)) = canonicalInput27789.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1143 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5736 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1143 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5736 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27789 hH))).trans (reductionSound5736 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1143 (1 : Fin 6)) = canonicalInput28784.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1143 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1784 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1143 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1784 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28784 hH))).trans (oldProjectionSound1784 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1143 (2 : Fin 6)) = canonicalInput29194.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1143 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5723 (Normalization.momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1143 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5723 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29194 hH))).trans (reductionSound5723 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1143 (3 : Fin 6)) = canonicalInput29226.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1143 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3055 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1143 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3055 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29226 hH))).trans (oldProjectionSound3055 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1143 (4 : Fin 6)) = canonicalInput29229.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1143 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3060 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1143 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3060 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29229 hH))).trans (oldProjectionSound3060 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1143 (5 : Fin 6)) = canonicalInput29230.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1143 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3064 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1143 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3064 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29230 hH))).trans (oldProjectionSound3064 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1143 (j : Fin 6)))
    1440 1440 ![1440, 72, 180, 720, 288, 1440] ![-1440, -28800, -11520, -2880, -7200, -1440] (extendRow Arithmetic.row1143) ![reductionProjection5736, oldProjection1784, reductionProjection5723, oldProjection3055, oldProjection3060, oldProjection3064]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1144 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 0, 0, 2], ![0, -1, 2, -1], ![1, 2, -1, -2]]

theorem rowSound1144 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1144) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1144 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1144 H]
  have hshape : boundaryInput1144 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1144 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 720, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1144 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5745, oldProjection1804, reductionProjection5732, oldProjection3071, oldProjection3069, oldProjection3065] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1144 (0 : Fin 6)) = canonicalInput27785.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1144 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5745 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1144 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5745 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27785 hH))).trans (reductionSound5745 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1144 (1 : Fin 6)) = canonicalInput28780.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1144 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1804 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1144 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1804 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28780 hH))).trans (oldProjectionSound1804 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1144 (2 : Fin 6)) = canonicalInput29190.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1144 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5732 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1144 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5732 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29190 hH))).trans (reductionSound5732 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1144 (3 : Fin 6)) = canonicalInput29213.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1144 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3071 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1144 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3071 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29213 hH))).trans (oldProjectionSound3071 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1144 (4 : Fin 6)) = canonicalInput29216.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1144 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3069 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1144 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3069 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29216 hH))).trans (oldProjectionSound3069 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1144 (5 : Fin 6)) = canonicalInput29217.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1144 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3065 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1144 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3065 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29217 hH))).trans (oldProjectionSound3065 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1144 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 720, 1440, 1440] ![-1440, -1440, -1440, -2880, -1440, -1440] (extendRow Arithmetic.row1144) ![reductionProjection5745, oldProjection1804, reductionProjection5732, oldProjection3071, oldProjection3069, oldProjection3065]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput256 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, -1, 1, 2], ![1, 0, 3, -4]]

theorem rowSound256 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 256) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row256 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row256 H]
  have hshape : boundaryInput256 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput256 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput256 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5665, reductionProjection5754, reductionProjection5754, reductionProjection5770, oldProjection2988, reductionProjection5771] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput256 (0 : Fin 6)) = canonicalInput27822.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput256 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5665 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput256 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5665 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27822 hH))).trans (reductionSound5665 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput256 (1 : Fin 6)) = canonicalInput29343.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput256 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5754 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput256 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5754 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29343 hH))).trans (reductionSound5754 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput256 (2 : Fin 6)) = canonicalInput29424.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput256 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5754 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput256 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5754 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29424 hH))).trans (reductionSound5754 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput256 (3 : Fin 6)) = canonicalInput29443.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput256 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5770 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput256 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5770 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29443 hH))).trans (reductionSound5770 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput256 (4 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9569 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput256 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2988 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput256 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2988 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9569 hH))).trans (oldProjectionSound2988 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput256 (5 : Fin 6)) = canonicalInput29445.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput256 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5771 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput256 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5771 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29445 hH))).trans (reductionSound5771 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput256 (j : Fin 6)))
    1440 1440 ![288, 1440, 1440, 1440, 1440, 1440] ![-7200, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row256) ![reductionProjection5665, reductionProjection5754, reductionProjection5754, reductionProjection5770, oldProjection2988, reductionProjection5771]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput379 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![0, 1, 1, -2], ![-2, -1, 1, 2], ![1, -1, 2, -2]]

theorem rowSound379 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 379) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row379 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row379 H]
  have hshape : boundaryInput379 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput379 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 1440, 720, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput379 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5686, reductionProjection5764, reductionProjection5786, reductionProjection5777, reductionProjection4613, reductionProjection5784] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput379 (0 : Fin 6)) = canonicalInput27873.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput379 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5686 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput379 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5686 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27873 hH))).trans (reductionSound5686 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput379 (1 : Fin 6)) = canonicalInput29394.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput379 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5764 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput379 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5764 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29394 hH))).trans (reductionSound5764 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput379 (2 : Fin 6)) = canonicalInput29678.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput379 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5786 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput379 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5786 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29678 hH))).trans (reductionSound5786 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput379 (3 : Fin 6)) = canonicalInput29697.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput379 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5777 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput379 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5777 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29697 hH))).trans (reductionSound5777 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput379 (4 : Fin 6)) = canonicalInput29699.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput379 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4613 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput379 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4613 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29699 hH))).trans (reductionSound4613 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput379 (5 : Fin 6)) = canonicalInput29700.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput379 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5784 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput379 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5784 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29700 hH))).trans (reductionSound5784 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput379 (j : Fin 6)))
    1440 1440 ![720, 1440, 720, 1440, 288, 1440] ![-2880, -1440, -2880, -1440, -7200, -1440] (extendRow Arithmetic.row379) ![reductionProjection5686, reductionProjection5764, reductionProjection5786, reductionProjection5777, reductionProjection4613, reductionProjection5784]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput417 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, -1, 1, 2], ![1, 1, 2, -4]]

theorem rowSound417 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 417) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row417 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row417 H]
  have hshape : boundaryInput417 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput417 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 288, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput417 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5325, oldProjection3052, oldProjection3052, reductionProjection5768, reductionProjection1259, reductionProjection5771] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput417 (0 : Fin 6)) = canonicalInput24845.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput417 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5325 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput417 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5325 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24845 hH))).trans (reductionSound5325 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput417 (1 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9320 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput417 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection3052 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput417 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection3052 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9320 hH))).trans (oldProjectionSound3052 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput417 (2 : Fin 6)) = canonicalInput29407.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput417 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection3052 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput417 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection3052 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29407 hH))).trans (oldProjectionSound3052 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput417 (3 : Fin 6)) = canonicalInput29442.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput417 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5768 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput417 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5768 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29442 hH))).trans (reductionSound5768 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput417 (4 : Fin 6)) = canonicalInput29444.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput417 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1259 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput417 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1259 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29444 hH))).trans (reductionSound1259 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput417 (5 : Fin 6)) = canonicalInput29445.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput417 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5771 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput417 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5771 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29445 hH))).trans (reductionSound5771 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput417 (j : Fin 6)))
    1440 1440 ![1440, 288, 288, 1440, 1440, 1440] ![-1440, -7200, -7200, -1440, -1440, -1440] (extendRow Arithmetic.row417) ![reductionProjection5325, oldProjection3052, oldProjection3052, reductionProjection5768, reductionProjection1259, reductionProjection5771]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
