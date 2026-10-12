import NoFourMUBs.Step2.SOS.Canonical387
import NoFourMUBs.Step2.SOS.Canonical419
import NoFourMUBs.Step2.SOS.Canonical432
import NoFourMUBs.Step2.SOS.Canonical435
import NoFourMUBs.Step2.SOS.Canonical436
import NoFourMUBs.Step2.SOS.Canonical439
import NoFourMUBs.Step2.SOS.Canonical440
import NoFourMUBs.Step2.SOS.Canonical445
import NoFourMUBs.Step2.SOS.Canonical446
import NoFourMUBs.Step2.SOS.Canonical447
import NoFourMUBs.Step2.SOS.Canonical460
import NoFourMUBs.Step2.SOS.Canonical465
import NoFourMUBs.Step2.SOS.Canonical468
import NoFourMUBs.Step2.SOS.Canonical469
import NoFourMUBs.Step2.SOS.Canonical471
import NoFourMUBs.Step2.SOS.Canonical486
import NoFourMUBs.Step2.SOS.Canonical488
import NoFourMUBs.Step2.SOS.Canonical489
import NoFourMUBs.Step2.SOS.Canonical490
import NoFourMUBs.Step2.SOS.Canonical497
import NoFourMUBs.Step2.SOS.Canonical499
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections027
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions133
import NoFourMUBs.Step2.SOS.Reductions135
import NoFourMUBs.Step2.SOS.Reductions136
import NoFourMUBs.Step2.SOS.Reductions148
import NoFourMUBs.Step2.SOS.Reductions173
import NoFourMUBs.Step2.SOS.Reductions182
import NoFourMUBs.Step2.SOS.Reductions209
import NoFourMUBs.Step2.SOS.Reductions230
import NoFourMUBs.Step2.SOS.Reductions250
import NoFourMUBs.Step2.SOS.Reductions261
import NoFourMUBs.Step2.SOS.Reductions301
import NoFourMUBs.Step2.SOS.Reductions302
import NoFourMUBs.Step2.SOS.Reductions303

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput1247 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, -1, 3, 0], ![1, -2, -1, 2]]

theorem rowSound1247 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1247) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1247 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1247 H]
  have hshape : boundaryInput1247 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1247 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 1440, 288, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1247 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4748, reductionProjection5846, reductionProjection5846, reductionProjection5565, reductionProjection9674, reductionProjection4743] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1247 (0 : Fin 6)) = canonicalInput31846.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1247 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4748 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1247 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4748 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31846 hH))).trans (reductionSound4748 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1247 (1 : Fin 6)) = canonicalInput31942.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1247 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5846 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1247 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5846 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31942 hH))).trans (reductionSound5846 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1247 (2 : Fin 6)) = canonicalInput31983.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1247 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5846 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1247 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5846 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31983 hH))).trans (reductionSound5846 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1247 (3 : Fin 6)) = canonicalInput31987.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1247 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5565 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1247 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5565 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31987 hH))).trans (reductionSound5565 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1247 (4 : Fin 6)) = canonicalInput31988.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1247 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9674 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1247 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9674 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31988 hH))).trans (reductionSound9674 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1247 (5 : Fin 6)) = canonicalInput31989.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1247 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4743 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1247 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4743 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31989 hH))).trans (reductionSound4743 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1247 (j : Fin 6)))
    1440 1440 ![288, 1440, 1440, 288, 1440, 1440] ![-7200, -1440, -1440, -7200, -1440, -1440] (extendRow Arithmetic.row1247) ![reductionProjection4748, reductionProjection5846, reductionProjection5846, reductionProjection5565, reductionProjection9674, reductionProjection4743]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1254 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 3, -1, 0], ![0, -1, 3, -2]]

theorem rowSound1254 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1254) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1254 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1254 H]
  have hshape : boundaryInput1254 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1254 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 720, 1440, 360, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1254 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4279, reductionProjection4279, reductionProjection4264, reductionProjection6690, reductionProjection9667, oldProjection3128] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1254 (0 : Fin 6)) = canonicalInput24796.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1254 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4279 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1254 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4279 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24796 hH))).trans (reductionSound4279 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1254 (1 : Fin 6)) = canonicalInput28103.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1254 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4279 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1254 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4279 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28103 hH))).trans (reductionSound4279 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1254 (2 : Fin 6)) = canonicalInput28491.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1254 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4264 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1254 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4264 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28491 hH))).trans (reductionSound4264 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1254 (3 : Fin 6)) = canonicalInput28621.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1254 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6690 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1254 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6690 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28621 hH))).trans (reductionSound6690 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1254 (4 : Fin 6)) = canonicalInput28639.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1254 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9667 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1254 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9667 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28639 hH))).trans (reductionSound9667 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1254 (5 : Fin 6)) = canonicalInput28641.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1254 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3128 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1254 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3128 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28641 hH))).trans (oldProjectionSound3128 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1254 (j : Fin 6)))
    1440 1440 ![720, 720, 1440, 360, 1440, 1440] ![-2880, -2880, -1440, -5760, -1440, -1440] (extendRow Arithmetic.row1254) ![reductionProjection4279, reductionProjection4279, reductionProjection4264, reductionProjection6690, reductionProjection9667, oldProjection3128]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput533 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, -1, 1, -1], ![-2, 3, 0, -1], ![0, -1, -2, 3]]

theorem rowSound533 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 533) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row533 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row533 H]
  have hshape : boundaryInput533 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput533 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput533 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4353, reductionProjection4353, reductionProjection8372, reductionProjection4264, reductionProjection9714, reductionProjection8360] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput533 (0 : Fin 6)) = canonicalInput26859.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput533 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4353 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput533 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4353 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26859 hH))).trans (reductionSound4353 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput533 (1 : Fin 6)) = canonicalInput31148.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput533 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4353 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput533 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4353 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31148 hH))).trans (reductionSound4353 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput533 (2 : Fin 6)) = canonicalInput31244.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput533 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8372 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput533 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8372 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31244 hH))).trans (reductionSound8372 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput533 (3 : Fin 6)) = canonicalInput31259.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput533 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4264 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput533 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4264 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31259 hH))).trans (reductionSound4264 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput533 (4 : Fin 6)) = canonicalInput31264.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput533 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9714 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput533 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9714 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31264 hH))).trans (reductionSound9714 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput533 (5 : Fin 6)) = canonicalInput31265.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput533 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8360 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput533 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8360 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31265 hH))).trans (reductionSound8360 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput533 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 288, 1440] ![-1440, -1440, -1440, -1440, -7200, -1440] (extendRow Arithmetic.row533) ![reductionProjection4353, reductionProjection4353, reductionProjection8372, reductionProjection4264, reductionProjection9714, reductionProjection8360]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput806 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 2, 0, 0], ![0, -1, 3, -2]]

theorem rowSound806 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 806) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row806 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row806 H]
  have hshape : boundaryInput806 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput806 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 288, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput806 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9715, reductionProjection9715, reductionProjection9714, reductionProjection4348, reductionProjection9667, oldProjection3170] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput806 (0 : Fin 6)) = canonicalInput27690.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput806 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9715 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput806 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9715 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27690 hH))).trans (reductionSound9715 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput806 (1 : Fin 6)) = canonicalInput28188.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput806 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9715 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput806 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9715 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28188 hH))).trans (reductionSound9715 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput806 (2 : Fin 6)) = canonicalInput28525.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput806 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9714 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput806 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9714 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28525 hH))).trans (reductionSound9714 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput806 (3 : Fin 6)) = canonicalInput28630.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput806 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4348 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput806 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4348 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28630 hH))).trans (reductionSound4348 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput806 (4 : Fin 6)) = canonicalInput28639.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput806 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9667 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput806 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9667 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28639 hH))).trans (reductionSound9667 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput806 (5 : Fin 6)) = canonicalInput28640.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput806 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3170 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput806 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3170 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28640 hH))).trans (oldProjectionSound3170 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput806 (j : Fin 6)))
    1440 1440 ![288, 288, 288, 1440, 1440, 1440] ![-7200, -7200, -7200, -1440, -1440, -1440] (extendRow Arithmetic.row806) ![reductionProjection9715, reductionProjection9715, reductionProjection9714, reductionProjection4348, reductionProjection9667, oldProjection3170]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput862 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 2, 0, 0], ![0, -1, 2, -1], ![1, 0, 1, -2]]

theorem rowSound862 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 862) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row862 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row862 H]
  have hshape : boundaryInput862 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput862 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 720, 90, 720, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput862 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9727, reductionProjection9727, reductionProjection9726, reductionProjection9675, oldProjection3170, oldProjection3170] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput862 (0 : Fin 6)) = canonicalInput27669.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput862 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9727 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput862 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9727 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27669 hH))).trans (reductionSound9727 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput862 (1 : Fin 6)) = canonicalInput28167.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput862 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9727 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput862 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9727 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28167 hH))).trans (reductionSound9727 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput862 (2 : Fin 6)) = canonicalInput28502.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((90 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput862 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9726 (Normalization.momentVector H)
      have hh : (90 : ℝ) * injectiveMoment H (mergeFirst boundaryInput862 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9726 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (90 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28502 hH))).trans (reductionSound9726 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput862 (3 : Fin 6)) = canonicalInput28553.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput862 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9675 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput862 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9675 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28553 hH))).trans (reductionSound9675 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput862 (4 : Fin 6)) = canonicalInput28556.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput862 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3170 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput862 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3170 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28556 hH))).trans (oldProjectionSound3170 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput862 (5 : Fin 6)) = canonicalInput28557.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput862 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3170 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput862 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3170 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28557 hH))).trans (oldProjectionSound3170 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput862 (j : Fin 6)))
    720 1440 ![720, 720, 90, 720, 1440, 1440] ![-1440, -1440, -11520, -1440, -720, -720] (extendRow Arithmetic.row862) ![reductionProjection9727, reductionProjection9727, reductionProjection9726, reductionProjection9675, oldProjection3170, oldProjection3170]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput892 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![-1, 0, 2, -1], ![2, -2, 0, 0]]

theorem rowSound892 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 892) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row892 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row892 H]
  have hshape : boundaryInput892 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput892 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 1440, 720, 1440, 288, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput892 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection2023, reductionProjection9718, reductionProjection8017, reductionProjection9711, oldProjection3174, reductionProjection9638] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput892 (0 : Fin 6)) = canonicalInput30159.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput892 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection2023 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput892 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection2023 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30159 hH))).trans (oldProjectionSound2023 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput892 (1 : Fin 6)) = canonicalInput31302.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput892 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9718 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput892 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9718 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31302 hH))).trans (reductionSound9718 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput892 (2 : Fin 6)) = canonicalInput31331.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput892 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8017 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput892 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8017 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31331 hH))).trans (reductionSound8017 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput892 (3 : Fin 6)) = canonicalInput31381.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput892 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9711 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput892 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9711 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31381 hH))).trans (reductionSound9711 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput892 (4 : Fin 6)) = canonicalInput31384.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput892 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3174 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput892 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3174 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31384 hH))).trans (oldProjectionSound3174 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput892 (5 : Fin 6)) = canonicalInput31385.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput892 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9638 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput892 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9638 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31385 hH))).trans (reductionSound9638 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput892 (j : Fin 6)))
    720 1440 ![720, 1440, 720, 1440, 288, 288] ![-1440, -720, -1440, -720, -3600, -3600] (extendRow Arithmetic.row892) ![oldProjection2023, reductionProjection9718, reductionProjection8017, reductionProjection9711, oldProjection3174, reductionProjection9638]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1147 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![2, -2, 0, 0], ![-1, 0, 3, -2]]

theorem rowSound1147 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1147) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1147 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1147 H]
  have hshape : boundaryInput1147 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1147 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 1440, 1440, 1440, 288, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1147 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9721, reductionProjection9711, reductionProjection9711, reductionProjection9712, reductionProjection9639, reductionProjection8017] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1147 (0 : Fin 6)) = canonicalInput27885.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1147 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9721 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1147 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9721 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27885 hH))).trans (reductionSound9721 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1147 (1 : Fin 6)) = canonicalInput29498.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1147 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9711 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1147 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9711 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29498 hH))).trans (reductionSound9711 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1147 (2 : Fin 6)) = canonicalInput29761.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1147 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9711 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1147 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9711 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29761 hH))).trans (reductionSound9711 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1147 (3 : Fin 6)) = canonicalInput29801.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1147 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9712 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1147 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9712 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29801 hH))).trans (reductionSound9712 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1147 (4 : Fin 6)) = canonicalInput29802.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1147 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9639 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1147 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9639 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29802 hH))).trans (reductionSound9639 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1147 (5 : Fin 6)) = canonicalInput29803.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1147 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8017 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1147 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8017 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29803 hH))).trans (reductionSound8017 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1147 (j : Fin 6)))
    720 1440 ![720, 1440, 1440, 1440, 288, 720] ![-1440, -720, -720, -720, -3600, -1440] (extendRow Arithmetic.row1147) ![reductionProjection9721, reductionProjection9711, reductionProjection9711, reductionProjection9712, reductionProjection9639, reductionProjection8017]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1168 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 2, 0, 0], ![0, -1, -1, 2], ![0, 0, 3, -3]]

theorem rowSound1168 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1168) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1168 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1168 H]
  have hshape : boundaryInput1168 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1168 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1168 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9723, reductionProjection9724, reductionProjection9725, reductionProjection9641, reductionProjection9713, reductionProjection7390] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1168 (0 : Fin 6)) = canonicalInput27944.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1168 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9723 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1168 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9723 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27944 hH))).trans (reductionSound9723 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1168 (1 : Fin 6)) = canonicalInput29997.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1168 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9724 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1168 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9724 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29997 hH))).trans (reductionSound9724 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1168 (2 : Fin 6)) = canonicalInput30043.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1168 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9725 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1168 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9725 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30043 hH))).trans (reductionSound9725 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1168 (3 : Fin 6)) = canonicalInput30064.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1168 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9641 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1168 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9641 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30064 hH))).trans (reductionSound9641 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1168 (4 : Fin 6)) = canonicalInput30065.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1168 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9713 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1168 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9713 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30065 hH))).trans (reductionSound9713 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1168 (5 : Fin 6)) = canonicalInput30066.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1168 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7390 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1168 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7390 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30066 hH))).trans (reductionSound7390 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1168 (j : Fin 6)))
    360 1440 ![1440, 1440, 288, 1440, 1440, 1440] ![-360, -360, -1800, -360, -360, -360] (extendRow Arithmetic.row1168) ![reductionProjection9723, reductionProjection9724, reductionProjection9725, reductionProjection9641, reductionProjection9713, reductionProjection7390]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
