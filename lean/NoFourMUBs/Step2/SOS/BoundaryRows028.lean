import NoFourMUBs.Step2.SOS.Canonical420
import NoFourMUBs.Step2.SOS.Canonical432
import NoFourMUBs.Step2.SOS.Canonical440
import NoFourMUBs.Step2.SOS.Canonical445
import NoFourMUBs.Step2.SOS.Canonical447
import NoFourMUBs.Step2.SOS.Canonical495
import NoFourMUBs.Step2.SOS.Canonical496
import NoFourMUBs.Step2.SOS.Canonical501
import NoFourMUBs.Step2.SOS.Canonical508
import NoFourMUBs.Step2.SOS.Canonical509
import NoFourMUBs.Step2.SOS.Canonical510
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions069
import NoFourMUBs.Step2.SOS.Reductions128
import NoFourMUBs.Step2.SOS.Reductions129
import NoFourMUBs.Step2.SOS.Reductions135
import NoFourMUBs.Step2.SOS.Reductions198
import NoFourMUBs.Step2.SOS.Reductions208
import NoFourMUBs.Step2.SOS.Reductions209

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput535 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 0, 0, -1], ![0, -2, 2, 0], ![-2, 0, -1, 3], ![0, 3, -2, -1]]

theorem rowSound535 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 535) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row535 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row535 H]
  have hshape : boundaryInput535 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput535 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 288, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput535 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4124, reductionProjection4143, reductionProjection4143, reductionProjection4141, reductionProjection2217, reductionProjection6669] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput535 (0 : Fin 6)) = canonicalInput26915.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput535 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4124 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput535 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4124 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26915 hH))).trans (reductionSound4124 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput535 (1 : Fin 6)) = canonicalInput31726.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput535 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4143 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput535 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4143 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31726 hH))).trans (reductionSound4143 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput535 (2 : Fin 6)) = canonicalInput31753.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput535 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4143 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput535 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4143 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31753 hH))).trans (reductionSound4143 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput535 (3 : Fin 6)) = canonicalInput31754.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput535 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4141 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput535 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4141 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31754 hH))).trans (reductionSound4141 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput535 (4 : Fin 6)) = canonicalInput31755.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput535 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2217 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput535 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2217 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31755 hH))).trans (reductionSound2217 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput535 (5 : Fin 6)) = canonicalInput31756.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput535 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6669 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput535 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6669 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31756 hH))).trans (reductionSound6669 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput535 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 288, 288, 1440] ![-1440, -1440, -1440, -7200, -7200, -1440] (extendRow Arithmetic.row535) ![reductionProjection4124, reductionProjection4143, reductionProjection4143, reductionProjection4141, reductionProjection2217, reductionProjection6669]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput269 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![0, -2, -1, 3], ![-2, 0, 4, -2]]

theorem rowSound269 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 269) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row269 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row269 H]
  have hshape : boundaryInput269 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput269 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 72, 360] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput269 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6346, reductionProjection6346, reductionProjection6345, reductionProjection6345, reductionProjection6362, reductionProjection6690] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput269 (0 : Fin 6)) = canonicalInput32074.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput269 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6346 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput269 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6346 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32074 hH))).trans (reductionSound6346 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput269 (1 : Fin 6)) = canonicalInput32544.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput269 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6346 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput269 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6346 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32544 hH))).trans (reductionSound6346 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput269 (2 : Fin 6)) = canonicalInput32613.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput269 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6345 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput269 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6345 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32613 hH))).trans (reductionSound6345 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput269 (3 : Fin 6)) = canonicalInput32641.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput269 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6345 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput269 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6345 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32641 hH))).trans (reductionSound6345 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput269 (4 : Fin 6)) = canonicalInput32660.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput269 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6362 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput269 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6362 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32660 hH))).trans (reductionSound6362 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput269 (5 : Fin 6)) = canonicalInput32661.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput269 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6690 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput269 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6690 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32661 hH))).trans (reductionSound6690 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput269 (j : Fin 6)))
    720 1440 ![1440, 1440, 1440, 1440, 72, 360] ![-720, -720, -720, -720, -14400, -2880] (extendRow Arithmetic.row269) ![reductionProjection6346, reductionProjection6346, reductionProjection6345, reductionProjection6345, reductionProjection6362, reductionProjection6690]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput271 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, 0, -1, 3], ![0, -2, 4, -2]]

theorem rowSound271 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 271) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row271 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row271 H]
  have hshape : boundaryInput271 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput271 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 288, 288, 72, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput271 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6348, reductionProjection6348, reductionProjection6350, reductionProjection6350, reductionProjection6364, reductionProjection6694] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput271 (0 : Fin 6)) = canonicalInput32066.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput271 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6348 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput271 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6348 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32066 hH))).trans (reductionSound6348 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput271 (1 : Fin 6)) = canonicalInput32537.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput271 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6348 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput271 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6348 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32537 hH))).trans (reductionSound6348 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput271 (2 : Fin 6)) = canonicalInput32606.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput271 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6350 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput271 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6350 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32606 hH))).trans (reductionSound6350 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput271 (3 : Fin 6)) = canonicalInput32634.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput271 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6350 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput271 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6350 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32634 hH))).trans (reductionSound6350 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput271 (4 : Fin 6)) = canonicalInput32645.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput271 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6364 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput271 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6364 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32645 hH))).trans (reductionSound6364 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput271 (5 : Fin 6)) = canonicalInput32646.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput271 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6694 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput271 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6694 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32646 hH))).trans (reductionSound6694 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput271 (j : Fin 6)))
    1440 1440 ![288, 288, 288, 288, 72, 1440] ![-7200, -7200, -7200, -7200, -28800, -1440] (extendRow Arithmetic.row271) ![reductionProjection6348, reductionProjection6348, reductionProjection6350, reductionProjection6350, reductionProjection6364, reductionProjection6694]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput842 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![0, -2, 0, 2], ![-2, 0, 3, -1]]

theorem rowSound842 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 842) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row842 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row842 H]
  have hshape : boundaryInput842 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput842 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 288, 360, 72] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput842 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4348, reductionProjection4348, reductionProjection6675, reductionProjection6675, reductionProjection6690, oldProjection3155] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput842 (0 : Fin 6)) = canonicalInput32075.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput842 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4348 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput842 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4348 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32075 hH))).trans (reductionSound4348 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput842 (1 : Fin 6)) = canonicalInput32545.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput842 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4348 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput842 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4348 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32545 hH))).trans (reductionSound4348 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput842 (2 : Fin 6)) = canonicalInput32614.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput842 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6675 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput842 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6675 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32614 hH))).trans (reductionSound6675 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput842 (3 : Fin 6)) = canonicalInput32642.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput842 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6675 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput842 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6675 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32642 hH))).trans (reductionSound6675 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput842 (4 : Fin 6)) = canonicalInput32661.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput842 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6690 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput842 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6690 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32661 hH))).trans (reductionSound6690 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput842 (5 : Fin 6)) = canonicalInput32662.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput842 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3155 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput842 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3155 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32662 hH))).trans (oldProjectionSound3155 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput842 (j : Fin 6)))
    144 1440 ![1440, 1440, 288, 288, 360, 72] ![-144, -144, -720, -720, -576, -2880] (extendRow Arithmetic.row842) ![reductionProjection4348, reductionProjection4348, reductionProjection6675, reductionProjection6675, reductionProjection6690, oldProjection3155]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput844 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, 0, 0, 2], ![0, -2, 3, -1]]

theorem rowSound844 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 844) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row844 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row844 H]
  have hshape : boundaryInput844 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput844 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 288, 1440, 72] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput844 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection3002, oldProjection3002, reductionProjection6678, reductionProjection6678, reductionProjection6694, oldProjection3157] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput844 (0 : Fin 6)) = canonicalInput32067.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput844 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection3002 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput844 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection3002 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32067 hH))).trans (oldProjectionSound3002 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput844 (1 : Fin 6)) = canonicalInput32538.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput844 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection3002 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput844 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection3002 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32538 hH))).trans (oldProjectionSound3002 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput844 (2 : Fin 6)) = canonicalInput32607.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput844 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6678 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput844 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6678 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32607 hH))).trans (reductionSound6678 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput844 (3 : Fin 6)) = canonicalInput32635.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput844 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6678 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput844 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6678 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32635 hH))).trans (reductionSound6678 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput844 (4 : Fin 6)) = canonicalInput32646.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput844 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6694 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput844 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6694 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32646 hH))).trans (reductionSound6694 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput844 (5 : Fin 6)) = canonicalInput32647.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput844 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3157 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput844 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3157 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32647 hH))).trans (oldProjectionSound3157 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput844 (j : Fin 6)))
    1440 1440 ![1440, 1440, 288, 288, 1440, 72] ![-1440, -1440, -7200, -7200, -1440, -28800] (extendRow Arithmetic.row844) ![oldProjection3002, oldProjection3002, reductionProjection6678, reductionProjection6678, reductionProjection6694, oldProjection3157]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1093 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-2, 0, -1, 3], ![0, -2, 3, -1]]

theorem rowSound1093 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1093) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1093 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1093 H]
  have hshape : boundaryInput1093 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1093 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1093 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6691, reductionProjection6691, reductionProjection6693, reductionProjection6694, reductionProjection6348, oldProjection3002] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1093 (0 : Fin 6)) = canonicalInput32077.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1093 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6691 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1093 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6691 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32077 hH))).trans (reductionSound6691 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1093 (1 : Fin 6)) = canonicalInput32546.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1093 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6691 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1093 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6691 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32546 hH))).trans (reductionSound6691 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1093 (2 : Fin 6)) = canonicalInput32615.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1093 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6693 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1093 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6693 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32615 hH))).trans (reductionSound6693 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1093 (3 : Fin 6)) = canonicalInput32646.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1093 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6694 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1093 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6694 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32646 hH))).trans (reductionSound6694 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1093 (4 : Fin 6)) = canonicalInput32666.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1093 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6348 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1093 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6348 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32666 hH))).trans (reductionSound6348 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1093 (5 : Fin 6)) = canonicalInput32667.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1093 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3002 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1093 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3002 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32667 hH))).trans (oldProjectionSound3002 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1093 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 288, 1440] ![-1440, -1440, -1440, -1440, -7200, -1440] (extendRow Arithmetic.row1093) ![reductionProjection6691, reductionProjection6691, reductionProjection6693, reductionProjection6694, reductionProjection6348, oldProjection3002]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1094 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-2, 0, 3, -1], ![0, -2, -1, 3]]

theorem rowSound1094 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1094) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1094 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1094 H]
  have hshape : boundaryInput1094 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1094 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 360, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1094 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6691, reductionProjection6691, reductionProjection6689, reductionProjection6690, reductionProjection4348, reductionProjection6346] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1094 (0 : Fin 6)) = canonicalInput32078.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1094 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6691 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1094 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6691 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32078 hH))).trans (reductionSound6691 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1094 (1 : Fin 6)) = canonicalInput32547.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1094 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6691 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1094 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6691 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32547 hH))).trans (reductionSound6691 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1094 (2 : Fin 6)) = canonicalInput32616.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1094 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6689 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1094 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6689 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32616 hH))).trans (reductionSound6689 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1094 (3 : Fin 6)) = canonicalInput32648.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1094 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6690 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1094 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6690 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32648 hH))).trans (reductionSound6690 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1094 (4 : Fin 6)) = canonicalInput32668.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1094 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4348 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1094 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4348 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32668 hH))).trans (reductionSound4348 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1094 (5 : Fin 6)) = canonicalInput32669.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1094 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6346 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1094 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6346 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32669 hH))).trans (reductionSound6346 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1094 (j : Fin 6)))
    1440 1440 ![1440, 1440, 288, 360, 1440, 1440] ![-1440, -1440, -7200, -5760, -1440, -1440] (extendRow Arithmetic.row1094) ![reductionProjection6691, reductionProjection6691, reductionProjection6689, reductionProjection6690, reductionProjection4348, reductionProjection6346]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1229 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 3, 0, -1], ![0, -1, 3, -2]]

theorem rowSound1229 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1229) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1229 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1229 H]
  have hshape : boundaryInput1229 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1229 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 288, 360, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1229 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4124, reductionProjection4124, reductionProjection4114, reductionProjection4114, reductionProjection6690, oldProjection2976] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1229 (0 : Fin 6)) = canonicalInput27687.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1229 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4124 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1229 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4124 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27687 hH))).trans (reductionSound4124 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1229 (1 : Fin 6)) = canonicalInput28185.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1229 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4124 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1229 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4124 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28185 hH))).trans (reductionSound4124 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1229 (2 : Fin 6)) = canonicalInput28522.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1229 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4114 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1229 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4114 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28522 hH))).trans (reductionSound4114 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1229 (3 : Fin 6)) = canonicalInput28615.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1229 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4114 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1229 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4114 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28615 hH))).trans (reductionSound4114 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1229 (4 : Fin 6)) = canonicalInput28621.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1229 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6690 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1229 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6690 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28621 hH))).trans (reductionSound6690 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1229 (5 : Fin 6)) = canonicalInput28622.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1229 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2976 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1229 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2976 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28622 hH))).trans (oldProjectionSound2976 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1229 (j : Fin 6)))
    1440 1440 ![1440, 1440, 288, 288, 360, 1440] ![-1440, -1440, -7200, -7200, -5760, -1440] (extendRow Arithmetic.row1229) ![reductionProjection4124, reductionProjection4124, reductionProjection4114, reductionProjection4114, reductionProjection6690, oldProjection2976]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
