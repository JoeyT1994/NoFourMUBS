import NoFourMUBs.Step2.SOS.Canonical267
import NoFourMUBs.Step2.SOS.Canonical268
import NoFourMUBs.Step2.SOS.Canonical316
import NoFourMUBs.Step2.SOS.Canonical317
import NoFourMUBs.Step2.SOS.Canonical396
import NoFourMUBs.Step2.SOS.Canonical397
import NoFourMUBs.Step2.SOS.Canonical399
import NoFourMUBs.Step2.SOS.Canonical403
import NoFourMUBs.Step2.SOS.Canonical404
import NoFourMUBs.Step2.SOS.Canonical437
import NoFourMUBs.Step2.SOS.Canonical438
import NoFourMUBs.Step2.SOS.Canonical440
import NoFourMUBs.Step2.SOS.Canonical441
import NoFourMUBs.Step2.SOS.Canonical442
import NoFourMUBs.Step2.SOS.Canonical459
import NoFourMUBs.Step2.SOS.Canonical460
import NoFourMUBs.Step2.SOS.Canonical461
import NoFourMUBs.Step2.SOS.Canonical464
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections032
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions021
import NoFourMUBs.Step2.SOS.Reductions022
import NoFourMUBs.Step2.SOS.Reductions023
import NoFourMUBs.Step2.SOS.Reductions024
import NoFourMUBs.Step2.SOS.Reductions025
import NoFourMUBs.Step2.SOS.Reductions040
import NoFourMUBs.Step2.SOS.Reductions074
import NoFourMUBs.Step2.SOS.Reductions079
import NoFourMUBs.Step2.SOS.Reductions130
import NoFourMUBs.Step2.SOS.Reductions131
import NoFourMUBs.Step2.SOS.Reductions143
import NoFourMUBs.Step2.SOS.Reductions144
import NoFourMUBs.Step2.SOS.Reductions148
import NoFourMUBs.Step2.SOS.Reductions311
import NoFourMUBs.Step2.SOS.Reductions312
import NoFourMUBs.Step2.SOS.Reductions317
import NoFourMUBs.Step2.SOS.Reductions321

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput181 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, -2, 0, 3], ![1, 0, 3, -4]]

theorem rowSound181 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 181) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row181 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row181 H]
  have hshape : boundaryInput181 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput181 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput181 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4192, reductionProjection4618, oldProjection2991, reductionProjection10288, reductionProjection766, reductionProjection10299] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput181 (0 : Fin 6)) = canonicalInput20326.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput181 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4192 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput181 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4192 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20326 hH))).trans (reductionSound4192 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput181 (1 : Fin 6)) = canonicalInput28036.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput181 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4618 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput181 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4618 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28036 hH))).trans (reductionSound4618 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput181 (2 : Fin 6)) = canonicalInput29400.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput181 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection2991 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput181 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection2991 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29400 hH))).trans (oldProjectionSound2991 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput181 (3 : Fin 6)) = canonicalInput29507.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput181 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10288 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput181 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10288 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29507 hH))).trans (reductionSound10288 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput181 (4 : Fin 6)) = canonicalInput29527.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput181 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection766 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput181 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection766 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29527 hH))).trans (reductionSound766 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput181 (5 : Fin 6)) = canonicalInput29533.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput181 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10299 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput181 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10299 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29533 hH))).trans (reductionSound10299 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput181 (j : Fin 6)))
    1440 1440 ![1440, 288, 1440, 1440, 1440, 1440] ![-1440, -7200, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row181) ![reductionProjection4192, reductionProjection4618, oldProjection2991, reductionProjection10288, reductionProjection766, reductionProjection10299]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput183 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, 0, -1], ![-1, -2, 0, 3], ![1, 0, 3, -4]]

theorem rowSound183 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 183) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row183 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row183 H]
  have hshape : boundaryInput183 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput183 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 288, 1440, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput183 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4193, reductionProjection4626, reductionProjection4626, oldProjection2414, reductionProjection759, reductionProjection10298] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput183 (0 : Fin 6)) = canonicalInput20322.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput183 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4193 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput183 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4193 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20322 hH))).trans (reductionSound4193 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput183 (1 : Fin 6)) = canonicalInput28034.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput183 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4626 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput183 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4626 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28034 hH))).trans (reductionSound4626 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput183 (2 : Fin 6)) = canonicalInput29398.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput183 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4626 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput183 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4626 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29398 hH))).trans (reductionSound4626 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput183 (3 : Fin 6)) = canonicalInput29439.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput183 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2414 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput183 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2414 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29439 hH))).trans (oldProjectionSound2414 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput183 (4 : Fin 6)) = canonicalInput29451.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput183 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection759 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput183 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection759 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29451 hH))).trans (reductionSound759 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput183 (5 : Fin 6)) = canonicalInput29453.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput183 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10298 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput183 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10298 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29453 hH))).trans (reductionSound10298 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput183 (j : Fin 6)))
    1440 1440 ![1440, 288, 288, 1440, 720, 1440] ![-1440, -7200, -7200, -1440, -2880, -1440] (extendRow Arithmetic.row183) ![reductionProjection4193, reductionProjection4626, reductionProjection4626, oldProjection2414, reductionProjection759, reductionProjection10298]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput185 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -2, 0, 3], ![0, 1, 3, -4]]

theorem rowSound185 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 185) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row185 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row185 H]
  have hshape : boundaryInput185 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput185 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput185 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4182, reductionProjection4602, reductionProjection10290, oldProjection2417, reductionProjection766, reductionProjection4605] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput185 (0 : Fin 6)) = canonicalInput20334.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput185 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4182 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput185 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4182 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20334 hH))).trans (reductionSound4182 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput185 (1 : Fin 6)) = canonicalInput28041.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput185 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4602 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput185 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4602 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28041 hH))).trans (reductionSound4602 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput185 (2 : Fin 6)) = canonicalInput29409.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput185 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10290 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput185 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10290 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29409 hH))).trans (reductionSound10290 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput185 (3 : Fin 6)) = canonicalInput29696.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput185 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2417 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput185 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2417 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29696 hH))).trans (oldProjectionSound2417 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput185 (4 : Fin 6)) = canonicalInput29709.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput185 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection766 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput185 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection766 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29709 hH))).trans (reductionSound766 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput185 (5 : Fin 6)) = canonicalInput29713.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput185 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4605 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput185 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4605 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29713 hH))).trans (reductionSound4605 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput185 (j : Fin 6)))
    1440 1440 ![720, 1440, 1440, 1440, 1440, 1440] ![-2880, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row185) ![reductionProjection4182, reductionProjection4602, reductionProjection10290, oldProjection2417, reductionProjection766, reductionProjection4605]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput187 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, -1, 3, -1], ![2, 2, 0, -4]]

theorem rowSound187 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 187) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row187 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row187 H]
  have hshape : boundaryInput187 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput187 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![240, 720, 720, 720, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput187 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection804, reductionProjection825, reductionProjection825, reductionProjection825, reductionProjection791, reductionProjection10302] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput187 (0 : Fin 6)) = canonicalInput17193.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput187 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection804 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput187 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection804 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17193 hH))).trans (reductionSound804 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput187 (1 : Fin 6)) = canonicalInput25444.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput187 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection825 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput187 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection825 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25444 hH))).trans (reductionSound825 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput187 (2 : Fin 6)) = canonicalInput25826.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput187 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection825 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput187 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection825 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25826 hH))).trans (reductionSound825 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput187 (3 : Fin 6)) = canonicalInput25868.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput187 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection825 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput187 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection825 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25868 hH))).trans (reductionSound825 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput187 (4 : Fin 6)) = canonicalInput25877.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput187 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection791 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput187 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection791 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25877 hH))).trans (reductionSound791 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput187 (5 : Fin 6)) = canonicalInput25883.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput187 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10302 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput187 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10302 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25883 hH))).trans (reductionSound10302 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput187 (j : Fin 6)))
    1440 1440 ![240, 720, 720, 720, 1440, 288] ![-8640, -2880, -2880, -2880, -1440, -7200] (extendRow Arithmetic.row187) ![reductionProjection804, reductionProjection825, reductionProjection825, reductionProjection825, reductionProjection791, reductionProjection10302]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput287 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, -2, 3, 0], ![2, 1, 1, -4]]

theorem rowSound287 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 287) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row287 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row287 H]
  have hshape : boundaryInput287 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput287 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput287 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection2393, reductionProjection2393, reductionProjection2393, reductionProjection2555, reductionProjection1280, reductionProjection10302] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput287 (0 : Fin 6)) = canonicalInput20230.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput287 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2393 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput287 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2393 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20230 hH))).trans (reductionSound2393 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput287 (1 : Fin 6)) = canonicalInput27968.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput287 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2393 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput287 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2393 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27968 hH))).trans (reductionSound2393 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput287 (2 : Fin 6)) = canonicalInput28191.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput287 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2393 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput287 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2393 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28191 hH))).trans (reductionSound2393 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput287 (3 : Fin 6)) = canonicalInput28243.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput287 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2555 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput287 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2555 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28243 hH))).trans (reductionSound2555 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput287 (4 : Fin 6)) = canonicalInput28257.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput287 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1280 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput287 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1280 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28257 hH))).trans (reductionSound1280 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput287 (5 : Fin 6)) = canonicalInput28259.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput287 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10302 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput287 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10302 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28259 hH))).trans (reductionSound10302 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput287 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 288] ![-1440, -1440, -1440, -1440, -1440, -7200] (extendRow Arithmetic.row287) ![reductionProjection2393, reductionProjection2393, reductionProjection2393, reductionProjection2555, reductionProjection1280, reductionProjection10302]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput290 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![-1, -2, 3, 0], ![1, 2, 1, -4]]

theorem rowSound290 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 290) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row290 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row290 H]
  have hshape : boundaryInput290 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput290 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 288, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput290 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection2383, reductionProjection2383, reductionProjection2383, reductionProjection10153, reductionProjection1280, reductionProjection10303] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput290 (0 : Fin 6)) = canonicalInput20234.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput290 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2383 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput290 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2383 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20234 hH))).trans (reductionSound2383 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput290 (1 : Fin 6)) = canonicalInput27975.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput290 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2383 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput290 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2383 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27975 hH))).trans (reductionSound2383 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput290 (2 : Fin 6)) = canonicalInput28198.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput290 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2383 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput290 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2383 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28198 hH))).trans (reductionSound2383 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput290 (3 : Fin 6)) = canonicalInput28253.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput290 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10153 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput290 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10153 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28253 hH))).trans (reductionSound10153 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput290 (4 : Fin 6)) = canonicalInput28289.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput290 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1280 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput290 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1280 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28289 hH))).trans (reductionSound1280 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput290 (5 : Fin 6)) = canonicalInput28291.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput290 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10303 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput290 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10303 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28291 hH))).trans (reductionSound10303 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput290 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 288, 1440, 720] ![-1440, -1440, -1440, -7200, -1440, -2880] (extendRow Arithmetic.row290) ![reductionProjection2383, reductionProjection2383, reductionProjection2383, reductionProjection10153, reductionProjection1280, reductionProjection10303]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput455 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![-1, 3, 0, -2], ![1, -2, 3, -2]]

theorem rowSound455 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 455) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row455 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row455 H]
  have hshape : boundaryInput455 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput455 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 288, 1440, 360] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput455 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9956, reductionProjection9952, reductionProjection9952, reductionProjection9996, reductionProjection4743, reductionProjection10278] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput455 (0 : Fin 6)) = canonicalInput17199.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput455 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9956 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput455 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9956 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17199 hH))).trans (reductionSound9956 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput455 (1 : Fin 6)) = canonicalInput25451.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput455 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9952 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput455 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9952 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25451 hH))).trans (reductionSound9952 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput455 (2 : Fin 6)) = canonicalInput25833.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput455 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9952 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput455 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9952 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25833 hH))).trans (reductionSound9952 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput455 (3 : Fin 6)) = canonicalInput25886.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput455 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9996 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput455 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9996 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25886 hH))).trans (reductionSound9996 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput455 (4 : Fin 6)) = canonicalInput25905.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput455 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4743 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput455 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4743 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25905 hH))).trans (reductionSound4743 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput455 (5 : Fin 6)) = canonicalInput25907.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput455 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10278 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput455 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10278 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25907 hH))).trans (reductionSound10278 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput455 (j : Fin 6)))
    144 1440 ![1440, 1440, 1440, 288, 1440, 360] ![-144, -144, -144, -720, -144, -576] (extendRow Arithmetic.row455) ![reductionProjection9956, reductionProjection9952, reductionProjection9952, reductionProjection9996, reductionProjection4743, reductionProjection10278]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput460 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![-1, 2, -2, 1], ![2, 0, 2, -4]]

theorem rowSound460 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 460) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row460 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row460 H]
  have hshape : boundaryInput460 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput460 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput460 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection725, reductionProjection725, reductionProjection816, reductionProjection713, reductionProjection703, reductionProjection10272] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput460 (0 : Fin 6)) = canonicalInput17093.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput460 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection725 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput460 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection725 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17093 hH))).trans (reductionSound725 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput460 (1 : Fin 6)) = canonicalInput25384.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput460 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection725 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput460 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection725 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25384 hH))).trans (reductionSound725 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput460 (2 : Fin 6)) = canonicalInput25565.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput460 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection816 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput460 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection816 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25565 hH))).trans (reductionSound816 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput460 (3 : Fin 6)) = canonicalInput25591.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput460 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection713 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput460 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection713 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25591 hH))).trans (reductionSound713 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput460 (4 : Fin 6)) = canonicalInput25596.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput460 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection703 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput460 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection703 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25596 hH))).trans (reductionSound703 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput460 (5 : Fin 6)) = canonicalInput25597.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput460 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10272 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput460 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10272 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25597 hH))).trans (reductionSound10272 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput460 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-1440, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row460) ![reductionProjection725, reductionProjection725, reductionProjection816, reductionProjection713, reductionProjection703, reductionProjection10272]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
