import NoFourMUBs.Step2.SOS.Canonical420
import NoFourMUBs.Step2.SOS.Canonical471
import NoFourMUBs.Step2.SOS.Canonical472
import NoFourMUBs.Step2.SOS.Canonical489
import NoFourMUBs.Step2.SOS.Canonical490
import NoFourMUBs.Step2.SOS.Canonical491
import NoFourMUBs.Step2.SOS.Canonical493
import NoFourMUBs.Step2.SOS.Canonical494
import NoFourMUBs.Step2.SOS.Canonical495
import NoFourMUBs.Step2.SOS.Canonical496
import NoFourMUBs.Step2.SOS.Canonical501
import NoFourMUBs.Step2.SOS.Canonical508
import NoFourMUBs.Step2.SOS.Canonical509
import NoFourMUBs.Step2.SOS.Canonical510
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions023
import NoFourMUBs.Step2.SOS.Reductions076
import NoFourMUBs.Step2.SOS.Reductions077
import NoFourMUBs.Step2.SOS.Reductions078
import NoFourMUBs.Step2.SOS.Reductions127
import NoFourMUBs.Step2.SOS.Reductions133
import NoFourMUBs.Step2.SOS.Reductions135
import NoFourMUBs.Step2.SOS.Reductions138
import NoFourMUBs.Step2.SOS.Reductions139

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput1176 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![0, -1, 2, -1], ![1, 1, -1, -1], ![-2, -1, 0, 3]]

theorem rowSound1176 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1176) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1176 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1176 H]
  have hshape : boundaryInput1176 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1176 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 720, 1440, 720, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1176 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1652, reductionProjection4425, reductionProjection4429, oldProjection2967, reductionProjection4430, reductionProjection2442] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1176 (0 : Fin 6)) = canonicalInput30217.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1176 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1652 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1176 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1652 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30217 hH))).trans (oldProjectionSound1652 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1176 (1 : Fin 6)) = canonicalInput31466.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1176 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4425 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1176 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4425 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31466 hH))).trans (reductionSound4425 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1176 (2 : Fin 6)) = canonicalInput31606.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1176 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4429 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1176 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4429 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31606 hH))).trans (reductionSound4429 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1176 (3 : Fin 6)) = canonicalInput31650.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1176 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2967 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1176 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2967 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31650 hH))).trans (oldProjectionSound2967 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1176 (4 : Fin 6)) = canonicalInput31653.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1176 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4430 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1176 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4430 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31653 hH))).trans (reductionSound4430 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1176 (5 : Fin 6)) = canonicalInput31654.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1176 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2442 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1176 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2442 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31654 hH))).trans (reductionSound2442 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1176 (j : Fin 6)))
    1440 1440 ![1440, 720, 1440, 720, 288, 1440] ![-1440, -2880, -1440, -2880, -7200, -1440] (extendRow Arithmetic.row1176) ![oldProjection1652, reductionProjection4425, reductionProjection4429, oldProjection2967, reductionProjection4430, reductionProjection2442]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1177 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, 0, 2, -1], ![1, 1, -1, -1], ![-1, -2, 0, 3]]

theorem rowSound1177 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1177) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1177 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1177 H]
  have hshape : boundaryInput1177 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1177 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 720, 720, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1177 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1649, reductionProjection4425, reductionProjection4419, oldProjection2965, reductionProjection4427, reductionProjection2440] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1177 (0 : Fin 6)) = canonicalInput30212.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1177 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1649 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1177 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1649 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30212 hH))).trans (oldProjectionSound1649 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1177 (1 : Fin 6)) = canonicalInput31461.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1177 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4425 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1177 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4425 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31461 hH))).trans (reductionSound4425 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1177 (2 : Fin 6)) = canonicalInput31601.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1177 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4419 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1177 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4419 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31601 hH))).trans (reductionSound4419 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1177 (3 : Fin 6)) = canonicalInput31635.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1177 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2965 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1177 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2965 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31635 hH))).trans (oldProjectionSound2965 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1177 (4 : Fin 6)) = canonicalInput31638.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1177 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4427 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1177 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4427 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31638 hH))).trans (reductionSound4427 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1177 (5 : Fin 6)) = canonicalInput31639.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1177 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2440 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1177 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2440 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31639 hH))).trans (reductionSound2440 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1177 (j : Fin 6)))
    1440 1440 ![1440, 720, 720, 1440, 1440, 1440] ![-1440, -2880, -2880, -1440, -1440, -1440] (extendRow Arithmetic.row1177) ![oldProjection1649, reductionProjection4425, reductionProjection4419, oldProjection2965, reductionProjection4427, reductionProjection2440]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1186 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, 2, -1], ![2, 0, -1, -1], ![-2, -1, 0, 3]]

theorem rowSound1186 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1186) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1186 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1186 H]
  have hshape : boundaryInput1186 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1186 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1186 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1647, reductionProjection4417, reductionProjection4420, reductionProjection4325, reductionProjection4424, reductionProjection2438] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1186 (0 : Fin 6)) = canonicalInput30167.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1186 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1647 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1186 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1647 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30167 hH))).trans (oldProjectionSound1647 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1186 (1 : Fin 6)) = canonicalInput31310.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1186 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4417 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1186 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4417 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31310 hH))).trans (reductionSound4417 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1186 (2 : Fin 6)) = canonicalInput31339.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1186 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4420 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1186 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4420 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31339 hH))).trans (reductionSound4420 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1186 (3 : Fin 6)) = canonicalInput31403.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1186 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4325 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1186 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4325 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31403 hH))).trans (reductionSound4325 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1186 (4 : Fin 6)) = canonicalInput31406.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1186 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4424 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1186 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4424 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31406 hH))).trans (reductionSound4424 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1186 (5 : Fin 6)) = canonicalInput31407.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1186 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2438 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1186 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2438 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31407 hH))).trans (reductionSound2438 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1186 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-1440, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row1186) ![oldProjection1647, reductionProjection4417, reductionProjection4420, reductionProjection4325, reductionProjection4424, reductionProjection2438]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1188 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, 2, -1], ![2, 0, -1, -1], ![-1, -2, 0, 3]]

theorem rowSound1188 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1188) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1188 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1188 H]
  have hshape : boundaryInput1188 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1188 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![72, 1440, 1440, 288, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1188 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1655, reductionProjection4435, reductionProjection4436, oldProjection2969, reductionProjection4432, reductionProjection2444] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1188 (0 : Fin 6)) = canonicalInput30163.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1188 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1655 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1188 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1655 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30163 hH))).trans (oldProjectionSound1655 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1188 (1 : Fin 6)) = canonicalInput31306.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1188 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4435 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1188 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4435 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31306 hH))).trans (reductionSound4435 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1188 (2 : Fin 6)) = canonicalInput31335.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1188 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4436 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1188 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4436 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31335 hH))).trans (reductionSound4436 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1188 (3 : Fin 6)) = canonicalInput31391.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1188 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2969 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1188 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2969 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31391 hH))).trans (oldProjectionSound2969 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1188 (4 : Fin 6)) = canonicalInput31394.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1188 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4432 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1188 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4432 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31394 hH))).trans (reductionSound4432 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1188 (5 : Fin 6)) = canonicalInput31395.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1188 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2444 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1188 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2444 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31395 hH))).trans (reductionSound2444 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1188 (j : Fin 6)))
    720 1440 ![72, 1440, 1440, 288, 1440, 1440] ![-14400, -720, -720, -3600, -720, -720] (extendRow Arithmetic.row1188) ![oldProjection1655, reductionProjection4435, reductionProjection4436, oldProjection2969, reductionProjection4432, reductionProjection2444]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput267 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, -1, -2, 3], ![-2, -1, 4, -1]]

theorem rowSound267 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 267) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row267 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row267 H]
  have hshape : boundaryInput267 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput267 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 720, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput267 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection2468, reductionProjection2468, reductionProjection2464, reductionProjection2466, reductionProjection2494, reductionProjection4474] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput267 (0 : Fin 6)) = canonicalInput32089.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput267 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2468 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput267 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2468 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32089 hH))).trans (reductionSound2468 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput267 (1 : Fin 6)) = canonicalInput32552.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput267 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2468 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput267 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2468 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32552 hH))).trans (reductionSound2468 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput267 (2 : Fin 6)) = canonicalInput32621.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput267 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2464 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput267 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2464 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32621 hH))).trans (reductionSound2464 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput267 (3 : Fin 6)) = canonicalInput32663.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput267 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2466 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput267 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2466 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32663 hH))).trans (reductionSound2466 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput267 (4 : Fin 6)) = canonicalInput32676.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput267 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2494 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput267 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2494 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32676 hH))).trans (reductionSound2494 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput267 (5 : Fin 6)) = canonicalInput32677.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput267 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4474 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput267 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4474 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32677 hH))).trans (reductionSound4474 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput267 (j : Fin 6)))
    288 1440 ![1440, 1440, 720, 1440, 1440, 1440] ![-288, -288, -576, -288, -288, -288] (extendRow Arithmetic.row267) ![reductionProjection2468, reductionProjection2468, reductionProjection2464, reductionProjection2466, reductionProjection2494, reductionProjection4474]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput268 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, 0, -2, 3], ![-1, -2, 4, -1]]

theorem rowSound268 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 268) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row268 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row268 H]
  have hshape : boundaryInput268 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput268 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput268 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection2468, reductionProjection2468, reductionProjection2473, reductionProjection2480, reductionProjection2502, reductionProjection4476] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput268 (0 : Fin 6)) = canonicalInput32084.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput268 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2468 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput268 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2468 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32084 hH))).trans (reductionSound2468 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput268 (1 : Fin 6)) = canonicalInput32549.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput268 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2468 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput268 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2468 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32549 hH))).trans (reductionSound2468 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput268 (2 : Fin 6)) = canonicalInput32618.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput268 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2473 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput268 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2473 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32618 hH))).trans (reductionSound2473 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput268 (3 : Fin 6)) = canonicalInput32656.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput268 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2480 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput268 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2480 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32656 hH))).trans (reductionSound2480 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput268 (4 : Fin 6)) = canonicalInput32672.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput268 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2502 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput268 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2502 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32672 hH))).trans (reductionSound2502 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput268 (5 : Fin 6)) = canonicalInput32673.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput268 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4476 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput268 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4476 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32673 hH))).trans (reductionSound4476 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput268 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 288, 1440] ![-1440, -1440, -1440, -1440, -7200, -1440] (extendRow Arithmetic.row268) ![reductionProjection2468, reductionProjection2468, reductionProjection2473, reductionProjection2480, reductionProjection2502, reductionProjection4476]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput537 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, -1, 2, -1], ![-2, -1, 0, 3], ![0, 3, -2, -1]]

theorem rowSound537 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 537) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row537 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row537 H]
  have hshape : boundaryInput537 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput537 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 1440, 360, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput537 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4279, reductionProjection4444, reductionProjection4448, reductionProjection4087, reductionProjection741, reductionProjection4432] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput537 (0 : Fin 6)) = canonicalInput26913.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput537 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4279 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput537 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4279 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26913 hH))).trans (reductionSound4279 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput537 (1 : Fin 6)) = canonicalInput31689.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput537 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4444 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput537 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4444 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31689 hH))).trans (reductionSound4444 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput537 (2 : Fin 6)) = canonicalInput31735.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput537 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4448 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput537 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4448 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31735 hH))).trans (reductionSound4448 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput537 (3 : Fin 6)) = canonicalInput31747.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput537 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4087 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput537 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4087 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31747 hH))).trans (reductionSound4087 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput537 (4 : Fin 6)) = canonicalInput31749.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput537 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection741 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput537 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection741 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31749 hH))).trans (reductionSound741 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput537 (5 : Fin 6)) = canonicalInput31750.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput537 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4432 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput537 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4432 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31750 hH))).trans (reductionSound4432 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput537 (j : Fin 6)))
    288 1440 ![720, 1440, 360, 1440, 1440, 1440] ![-576, -288, -1152, -288, -288, -288] (extendRow Arithmetic.row537) ![reductionProjection4279, reductionProjection4444, reductionProjection4448, reductionProjection4087, reductionProjection741, reductionProjection4432]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1095 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -2, 0, 3], ![-1, 0, 3, -2]]

theorem rowSound1095 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1095) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1095 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1095 H]
  have hshape : boundaryInput1095 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1095 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 288, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1095 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4474, reductionProjection4474, reductionProjection4467, reductionProjection4467, reductionProjection2466, oldProjection2976] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1095 (0 : Fin 6)) = canonicalInput32070.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1095 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4474 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1095 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4474 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32070 hH))).trans (reductionSound4474 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1095 (1 : Fin 6)) = canonicalInput32540.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1095 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4474 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1095 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4474 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32540 hH))).trans (reductionSound4474 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1095 (2 : Fin 6)) = canonicalInput32609.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1095 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4467 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1095 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4467 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32609 hH))).trans (reductionSound4467 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1095 (3 : Fin 6)) = canonicalInput32637.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1095 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4467 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1095 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4467 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32637 hH))).trans (reductionSound4467 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1095 (4 : Fin 6)) = canonicalInput32651.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1095 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2466 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1095 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2466 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32651 hH))).trans (reductionSound2466 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1095 (5 : Fin 6)) = canonicalInput32652.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1095 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2976 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1095 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2976 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32652 hH))).trans (oldProjectionSound2976 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1095 (j : Fin 6)))
    1440 1440 ![1440, 1440, 288, 288, 1440, 1440] ![-1440, -1440, -7200, -7200, -1440, -1440] (extendRow Arithmetic.row1095) ![reductionProjection4474, reductionProjection4474, reductionProjection4467, reductionProjection4467, reductionProjection2466, oldProjection2976]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
