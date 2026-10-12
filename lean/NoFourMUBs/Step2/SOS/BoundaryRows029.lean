import NoFourMUBs.Step2.SOS.Canonical379
import NoFourMUBs.Step2.SOS.Canonical417
import NoFourMUBs.Step2.SOS.Canonical431
import NoFourMUBs.Step2.SOS.Canonical432
import NoFourMUBs.Step2.SOS.Canonical439
import NoFourMUBs.Step2.SOS.Canonical440
import NoFourMUBs.Step2.SOS.Canonical442
import NoFourMUBs.Step2.SOS.Canonical445
import NoFourMUBs.Step2.SOS.Canonical446
import NoFourMUBs.Step2.SOS.Canonical448
import NoFourMUBs.Step2.SOS.Canonical450
import NoFourMUBs.Step2.SOS.Canonical451
import NoFourMUBs.Step2.SOS.Canonical471
import NoFourMUBs.Step2.SOS.Canonical489
import NoFourMUBs.Step2.SOS.Canonical490
import NoFourMUBs.Step2.SOS.Canonical491
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions033
import NoFourMUBs.Step2.SOS.Reductions072
import NoFourMUBs.Step2.SOS.Reductions073
import NoFourMUBs.Step2.SOS.Reductions074
import NoFourMUBs.Step2.SOS.Reductions075
import NoFourMUBs.Step2.SOS.Reductions084
import NoFourMUBs.Step2.SOS.Reductions126
import NoFourMUBs.Step2.SOS.Reductions127
import NoFourMUBs.Step2.SOS.Reductions128
import NoFourMUBs.Step2.SOS.Reductions133
import NoFourMUBs.Step2.SOS.Reductions136
import NoFourMUBs.Step2.SOS.Reductions147
import NoFourMUBs.Step2.SOS.Reductions148
import NoFourMUBs.Step2.SOS.Reductions181
import NoFourMUBs.Step2.SOS.Reductions201
import NoFourMUBs.Step2.SOS.Reductions208
import NoFourMUBs.Step2.SOS.Reductions210
import NoFourMUBs.Step2.SOS.Reductions211
import NoFourMUBs.Step2.SOS.Reductions212

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput380 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![-1, -1, 3, -1], ![2, 0, -3, 1]]

theorem rowSound380 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 380) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row380 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row380 H]
  have hshape : boundaryInput380 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput380 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 288, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput380 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6721, reductionProjection6724, reductionProjection6724, reductionProjection6778, reductionProjection6779, reductionProjection6439] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput380 (0 : Fin 6)) = canonicalInput30175.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput380 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6721 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput380 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6721 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30175 hH))).trans (reductionSound6721 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput380 (1 : Fin 6)) = canonicalInput31370.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput380 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6724 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput380 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6724 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31370 hH))).trans (reductionSound6724 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput380 (2 : Fin 6)) = canonicalInput31475.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput380 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6724 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput380 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6724 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31475 hH))).trans (reductionSound6724 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput380 (3 : Fin 6)) = canonicalInput31484.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput380 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6778 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput380 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6778 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31484 hH))).trans (reductionSound6778 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput380 (4 : Fin 6)) = canonicalInput31485.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput380 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6779 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput380 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6779 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31485 hH))).trans (reductionSound6779 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput380 (5 : Fin 6)) = canonicalInput31486.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput380 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6439 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput380 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6439 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31486 hH))).trans (reductionSound6439 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput380 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 288, 288] ![-1440, -1440, -1440, -1440, -7200, -7200] (extendRow Arithmetic.row380) ![reductionProjection6721, reductionProjection6724, reductionProjection6724, reductionProjection6778, reductionProjection6779, reductionProjection6439]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput381 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![0, -2, 3, -1], ![2, 0, -3, 1]]

theorem rowSound381 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 381) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row381 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row381 H]
  have hshape : boundaryInput381 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput381 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![36, 288, 288, 36, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput381 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5814, reductionProjection6660, reductionProjection6660, reductionProjection6686, reductionProjection6775, reductionProjection6435] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput381 (0 : Fin 6)) = canonicalInput30174.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput381 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5814 (Normalization.momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst boundaryInput381 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5814 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30174 hH))).trans (reductionSound5814 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput381 (1 : Fin 6)) = canonicalInput31349.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput381 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6660 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput381 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6660 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31349 hH))).trans (reductionSound6660 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput381 (2 : Fin 6)) = canonicalInput31474.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput381 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6660 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput381 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6660 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31474 hH))).trans (reductionSound6660 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput381 (3 : Fin 6)) = canonicalInput31481.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput381 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6686 (Normalization.momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst boundaryInput381 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6686 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31481 hH))).trans (reductionSound6686 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput381 (4 : Fin 6)) = canonicalInput31482.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput381 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6775 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput381 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6775 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31482 hH))).trans (reductionSound6775 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput381 (5 : Fin 6)) = canonicalInput31483.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput381 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6435 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput381 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6435 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31483 hH))).trans (reductionSound6435 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput381 (j : Fin 6)))
    720 1440 ![36, 288, 288, 36, 1440, 288] ![-28800, -3600, -3600, -28800, -720, -3600] (extendRow Arithmetic.row381) ![reductionProjection5814, reductionProjection6660, reductionProjection6660, reductionProjection6686, reductionProjection6775, reductionProjection6435]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput448 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-2, 0, -1, 3], ![2, 1, 1, -4]]

theorem rowSound448 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 448) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row448 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row448 H]
  have hshape : boundaryInput448 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput448 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 288, 288, 144, 24] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput448 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection2328, reductionProjection2328, reductionProjection2395, reductionProjection2395, reductionProjection2323, reductionProjection6781] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput448 (0 : Fin 6)) = canonicalInput24273.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput448 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2328 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput448 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2328 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24273 hH))).trans (reductionSound2328 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput448 (1 : Fin 6)) = canonicalInput26703.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput448 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2328 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput448 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2328 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26703 hH))).trans (reductionSound2328 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput448 (2 : Fin 6)) = canonicalInput26723.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput448 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2395 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput448 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2395 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26723 hH))).trans (reductionSound2395 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput448 (3 : Fin 6)) = canonicalInput26734.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput448 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2395 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput448 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2395 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26734 hH))).trans (reductionSound2395 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput448 (4 : Fin 6)) = canonicalInput26735.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput448 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2323 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput448 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2323 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26735 hH))).trans (reductionSound2323 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput448 (5 : Fin 6)) = canonicalInput26736.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput448 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6781 (Normalization.momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst boundaryInput448 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6781 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26736 hH))).trans (reductionSound6781 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput448 (j : Fin 6)))
    144 288 ![288, 288, 288, 288, 144, 24] ![-144, -144, -144, -144, -288, -1728] (extendRow Arithmetic.row448) ![reductionProjection2328, reductionProjection2328, reductionProjection2395, reductionProjection2395, reductionProjection2323, reductionProjection6781]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput449 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, 0, -1, 3], ![1, 2, 1, -4]]

theorem rowSound449 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 449) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row449 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row449 H]
  have hshape : boundaryInput449 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput449 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 720, 72, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput449 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4371, reductionProjection4371, reductionProjection2413, reductionProjection4373, reductionProjection2330, reductionProjection6783] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput449 (0 : Fin 6)) = canonicalInput24274.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput449 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4371 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput449 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4371 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24274 hH))).trans (reductionSound4371 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput449 (1 : Fin 6)) = canonicalInput26704.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput449 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4371 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput449 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4371 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26704 hH))).trans (reductionSound4371 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput449 (2 : Fin 6)) = canonicalInput26724.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput449 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2413 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput449 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2413 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26724 hH))).trans (reductionSound2413 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput449 (3 : Fin 6)) = canonicalInput26737.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput449 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4373 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput449 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4373 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26737 hH))).trans (reductionSound4373 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput449 (4 : Fin 6)) = canonicalInput26738.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput449 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2330 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput449 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2330 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26738 hH))).trans (reductionSound2330 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput449 (5 : Fin 6)) = canonicalInput26739.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput449 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6783 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput449 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6783 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26739 hH))).trans (reductionSound6783 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput449 (j : Fin 6)))
    1440 1440 ![1440, 1440, 720, 72, 288, 1440] ![-1440, -1440, -2880, -28800, -7200, -1440] (extendRow Arithmetic.row449) ![reductionProjection4371, reductionProjection4371, reductionProjection2413, reductionProjection4373, reductionProjection2330, reductionProjection6783]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1221 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-2, 3, 0, -1], ![2, -3, 1, 0]]

theorem rowSound1221 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1221) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1221 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1221 H]
  have hshape : boundaryInput1221 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1221 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![144, 144, 144, 144, 24, 24] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1221 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4259, reductionProjection4259, reductionProjection2717, reductionProjection2717, reductionProjection6781, reductionProjection6781] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1221 (0 : Fin 6)) = canonicalInput27634.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1221 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4259 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1221 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4259 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27634 hH))).trans (reductionSound4259 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1221 (1 : Fin 6)) = canonicalInput28136.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1221 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4259 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1221 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4259 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28136 hH))).trans (reductionSound4259 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1221 (2 : Fin 6)) = canonicalInput28296.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1221 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2717 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1221 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2717 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28296 hH))).trans (reductionSound2717 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1221 (3 : Fin 6)) = canonicalInput28317.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1221 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2717 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1221 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2717 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28317 hH))).trans (reductionSound2717 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1221 (4 : Fin 6)) = canonicalInput28322.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1221 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6781 (Normalization.momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1221 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6781 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28322 hH))).trans (reductionSound6781 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1221 (5 : Fin 6)) = canonicalInput28323.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1221 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6781 (Normalization.momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1221 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6781 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28323 hH))).trans (reductionSound6781 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1221 (j : Fin 6)))
    36 144 ![144, 144, 144, 144, 24, 24] ![-36, -36, -36, -36, -216, -216] (extendRow Arithmetic.row1221) ![reductionProjection4259, reductionProjection4259, reductionProjection2717, reductionProjection2717, reductionProjection6781, reductionProjection6781]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1264 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, -2, 1, 1], ![2, -1, 0, -1], ![-2, 3, -1, 0]]

theorem rowSound1264 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1264) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1264 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1264 H]
  have hshape : boundaryInput1264 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1264 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1264 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4094, reductionProjection4047, reductionProjection4047, reductionProjection4359, reductionProjection6782, reductionProjection1081] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1264 (0 : Fin 6)) = canonicalInput27705.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1264 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4094 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1264 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4094 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27705 hH))).trans (reductionSound4094 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1264 (1 : Fin 6)) = canonicalInput28699.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1264 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4047 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1264 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4047 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28699 hH))).trans (reductionSound4047 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1264 (2 : Fin 6)) = canonicalInput28843.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1264 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4047 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1264 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4047 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28843 hH))).trans (reductionSound4047 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1264 (3 : Fin 6)) = canonicalInput28879.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1264 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4359 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1264 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4359 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28879 hH))).trans (reductionSound4359 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1264 (4 : Fin 6)) = canonicalInput28882.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1264 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6782 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1264 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6782 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28882 hH))).trans (reductionSound6782 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1264 (5 : Fin 6)) = canonicalInput28883.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1264 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1081 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1264 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1081 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28883 hH))).trans (reductionSound1081 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1264 (j : Fin 6)))
    144 1440 ![288, 1440, 1440, 1440, 1440, 1440] ![-720, -144, -144, -144, -144, -144] (extendRow Arithmetic.row1264) ![reductionProjection4094, reductionProjection4047, reductionProjection4047, reductionProjection4359, reductionProjection6782, reductionProjection1081]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput450 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, -1, 1, 0], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, 0, -1, 3], ![0, 3, 1, -4]]

theorem rowSound450 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 450) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row450 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row450 H]
  have hshape : boundaryInput450 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput450 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![144, 144, 144, 144, 288, 360] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput450 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4734, reductionProjection4734, reductionProjection4757, reductionProjection4757, reductionProjection2343, reductionProjection6787] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput450 (0 : Fin 6)) = canonicalInput24276.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput450 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4734 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput450 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4734 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24276 hH))).trans (reductionSound4734 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput450 (1 : Fin 6)) = canonicalInput26706.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput450 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4734 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput450 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4734 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26706 hH))).trans (reductionSound4734 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput450 (2 : Fin 6)) = canonicalInput26743.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput450 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4757 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput450 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4757 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26743 hH))).trans (reductionSound4757 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput450 (3 : Fin 6)) = canonicalInput26748.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput450 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4757 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput450 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4757 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26748 hH))).trans (reductionSound4757 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput450 (4 : Fin 6)) = canonicalInput26749.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput450 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2343 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput450 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2343 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26749 hH))).trans (reductionSound2343 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput450 (5 : Fin 6)) = canonicalInput26750.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput450 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6787 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput450 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6787 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26750 hH))).trans (reductionSound6787 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput450 (j : Fin 6)))
    1440 1440 ![144, 144, 144, 144, 288, 360] ![-14400, -14400, -14400, -14400, -7200, -5760] (extendRow Arithmetic.row450) ![reductionProjection4734, reductionProjection4734, reductionProjection4757, reductionProjection4757, reductionProjection2343, reductionProjection6787]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1256 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, 0, 2, -2], ![1, -2, 1, 0], ![-2, 3, 0, -1]]

theorem rowSound1256 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1256) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1256 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1256 H]
  have hshape : boundaryInput1256 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1256 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 288, 1440, 288, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1256 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4104, reductionProjection4104, reductionProjection4097, oldProjection2971, reductionProjection6786, reductionProjection6675] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1256 (0 : Fin 6)) = canonicalInput27680.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1256 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4104 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1256 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4104 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27680 hH))).trans (reductionSound4104 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1256 (1 : Fin 6)) = canonicalInput28178.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1256 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4104 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1256 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4104 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28178 hH))).trans (reductionSound4104 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1256 (2 : Fin 6)) = canonicalInput28515.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1256 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4097 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1256 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4097 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28515 hH))).trans (reductionSound4097 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1256 (3 : Fin 6)) = canonicalInput28597.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1256 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2971 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1256 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2971 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28597 hH))).trans (oldProjectionSound2971 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1256 (4 : Fin 6)) = canonicalInput28598.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1256 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6786 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1256 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6786 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28598 hH))).trans (reductionSound6786 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1256 (5 : Fin 6)) = canonicalInput28599.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1256 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6675 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1256 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6675 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28599 hH))).trans (reductionSound6675 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1256 (j : Fin 6)))
    1440 1440 ![288, 288, 288, 1440, 288, 288] ![-7200, -7200, -7200, -1440, -7200, -7200] (extendRow Arithmetic.row1256) ![reductionProjection4104, reductionProjection4104, reductionProjection4097, oldProjection2971, reductionProjection6786, reductionProjection6675]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
