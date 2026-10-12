import NoFourMUBs.Step2.SOS.Canonical419
import NoFourMUBs.Step2.SOS.Canonical434
import NoFourMUBs.Step2.SOS.Canonical435
import NoFourMUBs.Step2.SOS.Canonical458
import NoFourMUBs.Step2.SOS.Canonical461
import NoFourMUBs.Step2.SOS.Canonical465
import NoFourMUBs.Step2.SOS.Canonical466
import NoFourMUBs.Step2.SOS.Canonical471
import NoFourMUBs.Step2.SOS.Canonical472
import NoFourMUBs.Step2.SOS.Canonical486
import NoFourMUBs.Step2.SOS.Canonical488
import NoFourMUBs.Step2.SOS.Canonical489
import NoFourMUBs.Step2.SOS.Canonical490
import NoFourMUBs.Step2.SOS.Canonical491
import NoFourMUBs.Step2.SOS.Canonical493
import NoFourMUBs.Step2.SOS.Canonical494
import NoFourMUBs.Step2.SOS.Canonical500
import NoFourMUBs.Step2.SOS.Canonical508
import NoFourMUBs.Step2.SOS.Canonical509
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions026
import NoFourMUBs.Step2.SOS.Reductions078
import NoFourMUBs.Step2.SOS.Reductions079
import NoFourMUBs.Step2.SOS.Reductions080
import NoFourMUBs.Step2.SOS.Reductions081
import NoFourMUBs.Step2.SOS.Reductions082
import NoFourMUBs.Step2.SOS.Reductions136
import NoFourMUBs.Step2.SOS.Reductions141
import NoFourMUBs.Step2.SOS.Reductions142
import NoFourMUBs.Step2.SOS.Reductions143
import NoFourMUBs.Step2.SOS.Reductions144
import NoFourMUBs.Step2.SOS.Reductions145
import NoFourMUBs.Step2.SOS.Reductions146
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical299
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical301
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical302

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput139 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, -1, 0, 3], ![1, 0, 3, -4]]

theorem rowSound139 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 139) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row139 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row139 H]
  have hshape : boundaryInput139 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput139 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![72, 1440, 1440, 1440, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput139 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4535, reductionProjection4594, oldProjection2988, reductionProjection4602, reductionProjection2524, oldProjection2962] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput139 (0 : Fin 6)) = canonicalInput27834.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput139 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4535 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput139 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4535 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27834 hH))).trans (reductionSound4535 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput139 (1 : Fin 6)) = canonicalInput29355.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput139 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4594 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput139 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4594 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29355 hH))).trans (reductionSound4594 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput139 (2 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9569 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput139 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection2988 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput139 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection2988 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9569 hH))).trans (oldProjectionSound2988 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput139 (3 : Fin 6)) = canonicalInput29513.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput139 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4602 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput139 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4602 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29513 hH))).trans (reductionSound4602 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput139 (4 : Fin 6)) = canonicalInput29518.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput139 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2524 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput139 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2524 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29518 hH))).trans (reductionSound2524 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput139 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9573 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput139 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2962 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput139 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2962 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9573 hH))).trans (oldProjectionSound2962 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput139 (j : Fin 6)))
    288 1440 ![72, 1440, 1440, 1440, 1440, 720] ![-5760, -288, -288, -288, -288, -576] (extendRow Arithmetic.row139) ![reductionProjection4535, reductionProjection4594, oldProjection2988, reductionProjection4602, reductionProjection2524, oldProjection2962]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput131 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, -1, 0, 3], ![1, -1, 3, -3]]

theorem rowSound131 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 131) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row131 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row131 H]
  have hshape : boundaryInput131 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput131 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput131 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4547, reductionProjection4605, reductionProjection4605, reductionProjection4623, reductionProjection2538, oldProjection2992] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput131 (0 : Fin 6)) = canonicalInput27889.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput131 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4547 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput131 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4547 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27889 hH))).trans (reductionSound4547 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput131 (1 : Fin 6)) = canonicalInput29528.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput131 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4605 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput131 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4605 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29528 hH))).trans (reductionSound4605 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput131 (2 : Fin 6)) = canonicalInput29765.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput131 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4605 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput131 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4605 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29765 hH))).trans (reductionSound4605 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput131 (3 : Fin 6)) = canonicalInput29823.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput131 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4623 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput131 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4623 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29823 hH))).trans (reductionSound4623 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput131 (4 : Fin 6)) = canonicalInput29829.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput131 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2538 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput131 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2538 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29829 hH))).trans (reductionSound2538 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput131 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9633 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput131 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2992 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput131 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2992 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9633 hH))).trans (oldProjectionSound2992 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput131 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-1440, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row131) ![reductionProjection4547, reductionProjection4605, reductionProjection4605, reductionProjection4623, reductionProjection2538, oldProjection2992]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput137 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, -1, 0, 3], ![0, 1, 3, -4]]

theorem rowSound137 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 137) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row137 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row137 H]
  have hshape : boundaryInput137 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput137 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![144, 1440, 288, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput137 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4550, oldProjection2991, reductionProjection4626, reductionProjection4628, reductionProjection2541, oldProjection2955] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput137 (0 : Fin 6)) = canonicalInput27902.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput137 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4550 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput137 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4550 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27902 hH))).trans (reductionSound4550 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput137 (1 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9594 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput137 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection2991 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput137 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection2991 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9594 hH))).trans (oldProjectionSound2991 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput137 (2 : Fin 6)) = canonicalInput29857.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput137 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4626 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput137 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4626 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29857 hH))).trans (reductionSound4626 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput137 (3 : Fin 6)) = canonicalInput29882.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput137 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4628 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput137 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4628 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29882 hH))).trans (reductionSound4628 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput137 (4 : Fin 6)) = canonicalInput29887.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput137 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2541 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput137 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2541 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29887 hH))).trans (reductionSound2541 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput137 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9664 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput137 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2955 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput137 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2955 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9664 hH))).trans (oldProjectionSound2955 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput137 (j : Fin 6)))
    1440 1440 ![144, 1440, 288, 1440, 1440, 1440] ![-14400, -1440, -7200, -1440, -1440, -1440] (extendRow Arithmetic.row137) ![reductionProjection4550, oldProjection2991, reductionProjection4626, reductionProjection4628, reductionProjection2541, oldProjection2955]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput532 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, -1, 1, -1], ![-2, -1, 0, 3], ![0, 3, -2, -1]]

theorem rowSound532 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 532) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row532 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row532 H]
  have hshape : boundaryInput532 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput532 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 144, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput532 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4353, reductionProjection4353, reductionProjection4663, reductionProjection4659, reductionProjection832, reductionProjection4654] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput532 (0 : Fin 6)) = canonicalInput26858.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput532 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4353 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput532 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4353 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26858 hH))).trans (reductionSound4353 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput532 (1 : Fin 6)) = canonicalInput31147.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput532 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4353 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput532 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4353 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31147 hH))).trans (reductionSound4353 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput532 (2 : Fin 6)) = canonicalInput31243.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput532 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4663 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput532 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4663 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31243 hH))).trans (reductionSound4663 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput532 (3 : Fin 6)) = canonicalInput31258.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput532 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4659 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput532 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4659 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31258 hH))).trans (reductionSound4659 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput532 (4 : Fin 6)) = canonicalInput31262.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput532 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection832 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput532 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection832 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31262 hH))).trans (reductionSound832 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput532 (5 : Fin 6)) = canonicalInput31263.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput532 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4654 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput532 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4654 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31263 hH))).trans (reductionSound4654 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput532 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 144, 1440, 1440] ![-1440, -1440, -1440, -14400, -1440, -1440] (extendRow Arithmetic.row532) ![reductionProjection4353, reductionProjection4353, reductionProjection4663, reductionProjection4659, reductionProjection832, reductionProjection4654]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput248 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, -1, -2, 2], ![-2, -1, 4, -1]]

theorem rowSound248 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 248) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row248 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row248 H]
  have hshape : boundaryInput248 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput248 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 1440, 288, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput248 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection2602, reductionProjection2590, reductionProjection2590, reductionProjection2583, reductionProjection2586, reductionProjection4677] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput248 (0 : Fin 6)) = canonicalInput27896.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput248 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2602 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput248 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2602 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27896 hH))).trans (reductionSound2602 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput248 (1 : Fin 6)) = canonicalInput29544.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput248 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2590 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput248 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2590 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29544 hH))).trans (reductionSound2590 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput248 (2 : Fin 6)) = canonicalInput29772.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput248 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2590 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput248 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2590 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29772 hH))).trans (reductionSound2590 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput248 (3 : Fin 6)) = canonicalInput29839.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput248 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2583 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput248 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2583 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29839 hH))).trans (reductionSound2583 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput248 (4 : Fin 6)) = canonicalInput29846.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput248 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2586 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput248 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2586 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29846 hH))).trans (reductionSound2586 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput248 (5 : Fin 6)) = canonicalInput29847.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput248 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4677 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput248 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4677 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29847 hH))).trans (reductionSound4677 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput248 (j : Fin 6)))
    1440 1440 ![288, 1440, 1440, 288, 1440, 1440] ![-7200, -1440, -1440, -7200, -1440, -1440] (extendRow Arithmetic.row248) ![reductionProjection2602, reductionProjection2590, reductionProjection2590, reductionProjection2583, reductionProjection2586, reductionProjection4677]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput272 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, 0, -3, 3], ![-2, -1, 4, -1]]

theorem rowSound272 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 272) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row272 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row272 H]
  have hshape : boundaryInput272 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput272 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput272 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection2622, reductionProjection2622, reductionProjection2614, reductionProjection2608, reductionProjection2637, reductionProjection4702] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput272 (0 : Fin 6)) = canonicalInput32029.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput272 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2622 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput272 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2622 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32029 hH))).trans (reductionSound2622 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput272 (1 : Fin 6)) = canonicalInput32532.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput272 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2622 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput272 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2622 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32532 hH))).trans (reductionSound2622 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput272 (2 : Fin 6)) = canonicalInput32570.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput272 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2614 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput272 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2614 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32570 hH))).trans (reductionSound2614 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput272 (3 : Fin 6)) = canonicalInput32593.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput272 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2608 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput272 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2608 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32593 hH))).trans (reductionSound2608 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput272 (4 : Fin 6)) = canonicalInput32600.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput272 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2637 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput272 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2637 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32600 hH))).trans (reductionSound2637 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput272 (5 : Fin 6)) = canonicalInput32601.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput272 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4702 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput272 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4702 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32601 hH))).trans (reductionSound4702 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput272 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 288, 1440] ![-1440, -1440, -1440, -1440, -7200, -1440] (extendRow Arithmetic.row272) ![reductionProjection2622, reductionProjection2622, reductionProjection2614, reductionProjection2608, reductionProjection2637, reductionProjection4702]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1082 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -2, 0, 3], ![-1, 1, 2, -2]]

theorem rowSound1082 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1082) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1082 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1082 H]
  have hshape : boundaryInput1082 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1082 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 288, 288, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1082 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1716, reductionProjection4677, reductionProjection4675, reductionProjection4675, reductionProjection2583, oldProjection3012] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1082 (0 : Fin 6)) = canonicalInput30219.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1082 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1716 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1082 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1716 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30219 hH))).trans (oldProjectionSound1716 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1082 (1 : Fin 6)) = canonicalInput31468.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1082 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4677 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1082 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4677 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31468 hH))).trans (reductionSound4677 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1082 (2 : Fin 6)) = canonicalInput31608.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1082 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4675 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1082 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4675 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31608 hH))).trans (reductionSound4675 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1082 (3 : Fin 6)) = canonicalInput31658.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1082 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4675 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1082 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4675 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31658 hH))).trans (reductionSound4675 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1082 (4 : Fin 6)) = canonicalInput31660.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1082 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2583 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1082 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2583 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31660 hH))).trans (reductionSound2583 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1082 (5 : Fin 6)) = canonicalInput31661.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1082 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3012 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1082 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3012 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31661 hH))).trans (oldProjectionSound3012 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1082 (j : Fin 6)))
    1440 1440 ![1440, 1440, 288, 288, 288, 720] ![-1440, -1440, -7200, -7200, -7200, -2880] (extendRow Arithmetic.row1082) ![oldProjection1716, reductionProjection4677, reductionProjection4675, reductionProjection4675, reductionProjection2583, oldProjection3012]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1086 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, -1, 0, 3], ![1, -1, 2, -2]]

theorem rowSound1086 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1086) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1086 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1086 H]
  have hshape : boundaryInput1086 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1086 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![360, 1440, 1440, 1440, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1086 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1718, reductionProjection4676, reductionProjection4677, reductionProjection4678, reductionProjection2590, oldProjection3013] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1086 (0 : Fin 6)) = canonicalInput30169.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1086 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1718 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1086 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1718 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30169 hH))).trans (oldProjectionSound1718 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1086 (1 : Fin 6)) = canonicalInput31312.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1086 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4676 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1086 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4676 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31312 hH))).trans (reductionSound4676 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1086 (2 : Fin 6)) = canonicalInput31341.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1086 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4677 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1086 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4677 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31341 hH))).trans (reductionSound4677 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1086 (3 : Fin 6)) = canonicalInput31410.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1086 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4678 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1086 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4678 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31410 hH))).trans (reductionSound4678 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1086 (4 : Fin 6)) = canonicalInput31412.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1086 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2590 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1086 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2590 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31412 hH))).trans (reductionSound2590 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1086 (5 : Fin 6)) = canonicalInput31413.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1086 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3013 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1086 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3013 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31413 hH))).trans (oldProjectionSound3013 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1086 (j : Fin 6)))
    288 1440 ![360, 1440, 1440, 1440, 1440, 720] ![-1152, -288, -288, -288, -288, -576] (extendRow Arithmetic.row1086) ![oldProjection1718, reductionProjection4676, reductionProjection4677, reductionProjection4678, reductionProjection2590, oldProjection3013]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
