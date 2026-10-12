import NoFourMUBs.Step2.SOS.Canonical419
import NoFourMUBs.Step2.SOS.Canonical470
import NoFourMUBs.Step2.SOS.Canonical471
import NoFourMUBs.Step2.SOS.Canonical472
import NoFourMUBs.Step2.SOS.Canonical486
import NoFourMUBs.Step2.SOS.Canonical487
import NoFourMUBs.Step2.SOS.Canonical488
import NoFourMUBs.Step2.SOS.Canonical489
import NoFourMUBs.Step2.SOS.Canonical490
import NoFourMUBs.Step2.SOS.Canonical491
import NoFourMUBs.Step2.SOS.Canonical492
import NoFourMUBs.Step2.SOS.Canonical493
import NoFourMUBs.Step2.SOS.Canonical494
import NoFourMUBs.Step2.SOS.Canonical497
import NoFourMUBs.Step2.SOS.Canonical498
import NoFourMUBs.Step2.SOS.Canonical499
import NoFourMUBs.Step2.SOS.Canonical500
import NoFourMUBs.Step2.SOS.Canonical508
import NoFourMUBs.Step2.SOS.Canonical509
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions071
import NoFourMUBs.Step2.SOS.Reductions073
import NoFourMUBs.Step2.SOS.Reductions128
import NoFourMUBs.Step2.SOS.Reductions129
import NoFourMUBs.Step2.SOS.Reductions133
import NoFourMUBs.Step2.SOS.Reductions135
import NoFourMUBs.Step2.SOS.Reductions137
import NoFourMUBs.Step2.SOS.Reductions206
import NoFourMUBs.Step2.SOS.Reductions207
import NoFourMUBs.Step2.SOS.Reductions213
import NoFourMUBs.Step2.SOS.Reductions217
import NoFourMUBs.Step2.SOS.Reductions218
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical299

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput530 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, -2, 1, 0], ![-2, 0, -1, 3], ![0, 3, -2, -1]]

theorem rowSound530 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 530) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row530 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row530 H]
  have hshape : boundaryInput530 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput530 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput530 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4120, reductionProjection4120, reductionProjection4130, reductionProjection4136, reductionProjection2278, reductionProjection6967] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput530 (0 : Fin 6)) = canonicalInput26871.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput530 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4120 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput530 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4120 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26871 hH))).trans (reductionSound4120 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput530 (1 : Fin 6)) = canonicalInput31151.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput530 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4120 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput530 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4120 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31151 hH))).trans (reductionSound4120 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput530 (2 : Fin 6)) = canonicalInput31252.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput530 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4130 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput530 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4130 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31252 hH))).trans (reductionSound4130 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput530 (3 : Fin 6)) = canonicalInput31270.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput530 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4136 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput530 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4136 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31270 hH))).trans (reductionSound4136 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput530 (4 : Fin 6)) = canonicalInput31271.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput530 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2278 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput530 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2278 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31271 hH))).trans (reductionSound2278 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput530 (5 : Fin 6)) = canonicalInput31272.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput530 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6967 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput530 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6967 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31272 hH))).trans (reductionSound6967 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput530 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-1440, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row530) ![reductionProjection4120, reductionProjection4120, reductionProjection4130, reductionProjection4136, reductionProjection2278, reductionProjection6967]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1081 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-2, 1, 2, -1], ![0, -2, -1, 3]]

theorem rowSound1081 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1081) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1081 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1081 H]
  have hshape : boundaryInput1081 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1081 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 720, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1081 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1635, oldProjection3144, reductionProjection6975, oldProjection3142, oldProjection2968, reductionProjection6611] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1081 (0 : Fin 6)) = canonicalInput30220.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1081 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1635 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1081 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1635 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30220 hH))).trans (oldProjectionSound1635 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1081 (1 : Fin 6)) = canonicalInput31469.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1081 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection3144 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1081 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection3144 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31469 hH))).trans (oldProjectionSound3144 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1081 (2 : Fin 6)) = canonicalInput31609.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1081 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6975 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1081 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6975 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31609 hH))).trans (reductionSound6975 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1081 (3 : Fin 6)) = canonicalInput31659.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1081 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3142 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1081 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3142 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31659 hH))).trans (oldProjectionSound3142 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1081 (4 : Fin 6)) = canonicalInput31664.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1081 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2968 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1081 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2968 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31664 hH))).trans (oldProjectionSound2968 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1081 (5 : Fin 6)) = canonicalInput31665.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1081 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6611 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1081 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6611 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31665 hH))).trans (reductionSound6611 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1081 (j : Fin 6)))
    1440 1440 ![1440, 1440, 720, 1440, 1440, 288] ![-1440, -1440, -2880, -1440, -1440, -7200] (extendRow Arithmetic.row1081) ![oldProjection1635, oldProjection3144, reductionProjection6975, oldProjection3142, oldProjection2968, reductionProjection6611]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1173 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -2, 1, 0], ![1, 1, 0, -2], ![-2, 0, -1, 3]]

theorem rowSound1173 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1173) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1173 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1173 H]
  have hshape : boundaryInput1173 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1173 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1173 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1639, oldProjection1639, reductionProjection6963, reductionProjection4390, reductionProjection6964, reductionProjection6596] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1173 (0 : Fin 6)) = canonicalInput30137.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1173 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1639 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1173 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1639 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30137 hH))).trans (oldProjectionSound1639 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1173 (1 : Fin 6)) = canonicalInput31156.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1173 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1639 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1173 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1639 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31156 hH))).trans (oldProjectionSound1639 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1173 (2 : Fin 6)) = canonicalInput31198.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1173 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6963 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1173 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6963 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31198 hH))).trans (reductionSound6963 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1173 (3 : Fin 6)) = canonicalInput31212.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1173 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4390 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1173 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4390 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31212 hH))).trans (reductionSound4390 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1173 (4 : Fin 6)) = canonicalInput31213.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1173 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6964 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1173 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6964 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31213 hH))).trans (reductionSound6964 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1173 (5 : Fin 6)) = canonicalInput31214.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1173 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6596 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1173 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6596 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31214 hH))).trans (reductionSound6596 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1173 (j : Fin 6)))
    1440 1440 ![288, 288, 1440, 1440, 1440, 1440] ![-7200, -7200, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row1173) ![oldProjection1639, oldProjection1639, reductionProjection6963, reductionProjection4390, reductionProjection6964, reductionProjection6596]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1323 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![-1, 1, 1, -1], ![2, -3, 1, 0]]

theorem rowSound1323 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1323) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1323 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1323 H]
  have hshape : boundaryInput1323 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1323 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 720, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1323 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1685, reductionProjection4351, reductionProjection6964, reductionProjection4339, oldProjection2968, reductionProjection6826] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1323 (0 : Fin 6)) = canonicalInput30160.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1323 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1685 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1323 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1685 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30160 hH))).trans (oldProjectionSound1685 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1323 (1 : Fin 6)) = canonicalInput31303.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1323 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4351 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1323 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4351 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31303 hH))).trans (reductionSound4351 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1323 (2 : Fin 6)) = canonicalInput31332.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1323 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6964 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1323 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6964 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31332 hH))).trans (reductionSound6964 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1323 (3 : Fin 6)) = canonicalInput31382.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1323 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4339 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1323 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4339 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31382 hH))).trans (reductionSound4339 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1323 (4 : Fin 6)) = canonicalInput31386.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1323 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2968 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1323 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2968 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31386 hH))).trans (oldProjectionSound2968 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1323 (5 : Fin 6)) = canonicalInput31387.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1323 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6826 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1323 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6826 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31387 hH))).trans (reductionSound6826 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1323 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 720, 1440, 1440] ![-1440, -1440, -1440, -2880, -1440, -1440] (extendRow Arithmetic.row1323) ![oldProjection1685, reductionProjection4351, reductionProjection6964, reductionProjection4339, oldProjection2968, reductionProjection6826]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput275 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![0, 0, -3, 3], ![-2, 0, 4, -2]]

theorem rowSound275 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 275) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row275 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row275 H]
  have hshape : boundaryInput275 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput275 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 72, 72, 144, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput275 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6632, reductionProjection6632, reductionProjection6631, reductionProjection6631, reductionProjection6641, reductionProjection6979] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput275 (0 : Fin 6)) = canonicalInput32013.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput275 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6632 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput275 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6632 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32013 hH))).trans (reductionSound6632 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput275 (1 : Fin 6)) = canonicalInput32524.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput275 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6632 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput275 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6632 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32524 hH))).trans (reductionSound6632 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput275 (2 : Fin 6)) = canonicalInput32562.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput275 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6631 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput275 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6631 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32562 hH))).trans (reductionSound6631 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput275 (3 : Fin 6)) = canonicalInput32575.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput275 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6631 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput275 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6631 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32575 hH))).trans (reductionSound6631 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput275 (4 : Fin 6)) = canonicalInput32578.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput275 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6641 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput275 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6641 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32578 hH))).trans (reductionSound6641 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput275 (5 : Fin 6)) = canonicalInput32579.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput275 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6979 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput275 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6979 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32579 hH))).trans (reductionSound6979 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput275 (j : Fin 6)))
    720 1440 ![288, 288, 72, 72, 144, 720] ![-3600, -3600, -14400, -14400, -7200, -1440] (extendRow Arithmetic.row275) ![reductionProjection6632, reductionProjection6632, reductionProjection6631, reductionProjection6631, reductionProjection6641, reductionProjection6979]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput454 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 0, -1, 3], ![0, 1, 3, -4]]

theorem rowSound454 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 454) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row454 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row454 H]
  have hshape : boundaryInput454 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput454 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![360, 360, 288, 288, 288, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput454 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection3133, oldProjection3133, reductionProjection4266, reductionProjection4266, reductionProjection2343, reductionProjection6979] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput454 (0 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9590 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput454 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection3133 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput454 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection3133 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9590 hH))).trans (oldProjectionSound3133 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput454 (1 : Fin 6)) = canonicalInput31926.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput454 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection3133 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput454 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection3133 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31926 hH))).trans (oldProjectionSound3133 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput454 (2 : Fin 6)) = canonicalInput31943.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput454 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4266 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput454 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4266 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31943 hH))).trans (reductionSound4266 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput454 (3 : Fin 6)) = canonicalInput31951.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput454 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4266 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput454 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4266 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31951 hH))).trans (reductionSound4266 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput454 (4 : Fin 6)) = canonicalInput31953.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput454 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2343 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput454 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2343 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31953 hH))).trans (reductionSound2343 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput454 (5 : Fin 6)) = canonicalInput31954.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput454 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6979 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput454 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6979 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31954 hH))).trans (reductionSound6979 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput454 (j : Fin 6)))
    1440 1440 ![360, 360, 288, 288, 288, 720] ![-5760, -5760, -7200, -7200, -7200, -2880] (extendRow Arithmetic.row454) ![oldProjection3133, oldProjection3133, reductionProjection4266, reductionProjection4266, reductionProjection2343, reductionProjection6979]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1080 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, -1, 3], ![1, -2, 2, -1]]

theorem rowSound1080 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1080) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1080 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1080 H]
  have hshape : boundaryInput1080 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1080 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 1440, 1440, 288, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1080 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1674, oldProjection3144, oldProjection3144, reductionProjection6977, reductionProjection6620, oldProjection3001] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1080 (0 : Fin 6)) = canonicalInput30176.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1080 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1674 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1080 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1674 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30176 hH))).trans (oldProjectionSound1674 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1080 (1 : Fin 6)) = canonicalInput31414.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1080 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection3144 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1080 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection3144 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31414 hH))).trans (oldProjectionSound3144 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1080 (2 : Fin 6)) = canonicalInput31476.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1080 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection3144 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1080 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection3144 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31476 hH))).trans (oldProjectionSound3144 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1080 (3 : Fin 6)) = canonicalInput31487.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1080 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6977 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1080 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6977 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31487 hH))).trans (reductionSound6977 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1080 (4 : Fin 6)) = canonicalInput31489.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1080 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6620 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1080 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6620 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31489 hH))).trans (reductionSound6620 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1080 (5 : Fin 6)) = canonicalInput31490.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1080 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3001 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1080 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3001 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31490 hH))).trans (oldProjectionSound3001 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1080 (j : Fin 6)))
    288 1440 ![720, 1440, 1440, 288, 1440, 288] ![-576, -288, -288, -1440, -288, -1440] (extendRow Arithmetic.row1080) ![oldProjection1674, oldProjection3144, oldProjection3144, reductionProjection6977, reductionProjection6620, oldProjection3001]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1106 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 0, -1, 3], ![0, 0, 3, -3]]

theorem rowSound1106 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1106) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1106 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1106 H]
  have hshape : boundaryInput1106 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1106 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 720, 1440, 1440, 288, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1106 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6978, reductionProjection6979, reductionProjection6980, reductionProjection6980, reductionProjection6632, oldProjection2970] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1106 (0 : Fin 6)) = canonicalInput31849.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1106 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6978 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1106 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6978 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31849 hH))).trans (reductionSound6978 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1106 (1 : Fin 6)) = canonicalInput31954.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1106 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6979 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1106 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6979 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31954 hH))).trans (reductionSound6979 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1106 (2 : Fin 6)) = canonicalInput31992.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1106 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6980 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1106 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6980 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31992 hH))).trans (reductionSound6980 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1106 (3 : Fin 6)) = canonicalInput32007.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1106 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6980 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1106 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6980 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32007 hH))).trans (reductionSound6980 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1106 (4 : Fin 6)) = canonicalInput32009.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1106 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6632 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1106 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6632 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32009 hH))).trans (reductionSound6632 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1106 (5 : Fin 6)) = canonicalInput32010.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1106 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2970 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1106 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2970 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32010 hH))).trans (oldProjectionSound2970 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1106 (j : Fin 6)))
    1440 1440 ![1440, 720, 1440, 1440, 288, 288] ![-1440, -2880, -1440, -1440, -7200, -7200] (extendRow Arithmetic.row1106) ![reductionProjection6978, reductionProjection6979, reductionProjection6980, reductionProjection6980, reductionProjection6632, oldProjection2970]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
