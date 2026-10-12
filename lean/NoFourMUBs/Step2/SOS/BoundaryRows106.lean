import NoFourMUBs.Step2.SOS.Canonical267
import NoFourMUBs.Step2.SOS.Canonical268
import NoFourMUBs.Step2.SOS.Canonical316
import NoFourMUBs.Step2.SOS.Canonical317
import NoFourMUBs.Step2.SOS.Canonical396
import NoFourMUBs.Step2.SOS.Canonical397
import NoFourMUBs.Step2.SOS.Canonical399
import NoFourMUBs.Step2.SOS.Canonical400
import NoFourMUBs.Step2.SOS.Canonical401
import NoFourMUBs.Step2.SOS.Canonical403
import NoFourMUBs.Step2.SOS.Canonical405
import NoFourMUBs.Step2.SOS.Canonical420
import NoFourMUBs.Step2.SOS.Canonical437
import NoFourMUBs.Step2.SOS.Canonical438
import NoFourMUBs.Step2.SOS.Canonical440
import NoFourMUBs.Step2.SOS.Canonical443
import NoFourMUBs.Step2.SOS.Canonical459
import NoFourMUBs.Step2.SOS.Canonical461
import NoFourMUBs.Step2.SOS.Canonical486
import NoFourMUBs.Step2.SOS.Canonical492
import NoFourMUBs.Step2.SOS.Canonical493
import NoFourMUBs.Step2.SOS.Canonical497
import NoFourMUBs.Step2.SOS.Canonical499
import NoFourMUBs.Step2.SOS.Canonical500
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections037
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.OldProjections041
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions193
import NoFourMUBs.Step2.SOS.Reductions194
import NoFourMUBs.Step2.SOS.Reductions195
import NoFourMUBs.Step2.SOS.Reductions196
import NoFourMUBs.Step2.SOS.Reductions201
import NoFourMUBs.Step2.SOS.Reductions202
import NoFourMUBs.Step2.SOS.Reductions206
import NoFourMUBs.Step2.SOS.Reductions210
import NoFourMUBs.Step2.SOS.Reductions268
import NoFourMUBs.Step2.SOS.Reductions273
import NoFourMUBs.Step2.SOS.Reductions274
import NoFourMUBs.Step2.SOS.Reductions275
import NoFourMUBs.Step2.SOS.Reductions276
import NoFourMUBs.Step2.SOS.Reductions277
import NoFourMUBs.Step2.SOS.Reductions278
import NoFourMUBs.Step2.SOS.Reductions294
import NoFourMUBs.Step2.SOS.Reductions301
import NoFourMUBs.Step2.SOS.Reductions302
import NoFourMUBs.Step2.SOS.Reductions308
import NoFourMUBs.Step2.SOS.Reductions368
import NoFourMUBs.Step2.SOS.Reductions369
import NoFourMUBs.Step2.SOS.Reductions370

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput324 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 0, 1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, 2, -3, 1], ![-1, 0, 4, -3]]

theorem rowSound324 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 324) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row324 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row324 H]
  have hshape : boundaryInput324 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput324 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 720, 72, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput324 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6737, reductionProjection6737, reductionProjection11839, reductionProjection8790, reductionProjection8582, reductionProjection6457] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput324 (0 : Fin 6)) = canonicalInput17118.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput324 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6737 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput324 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6737 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17118 hH))).trans (reductionSound6737 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput324 (1 : Fin 6)) = canonicalInput25407.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput324 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6737 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput324 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6737 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25407 hH))).trans (reductionSound6737 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput324 (2 : Fin 6)) = canonicalInput25625.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput324 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11839 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput324 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11839 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25625 hH))).trans (reductionSound11839 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput324 (3 : Fin 6)) = canonicalInput25674.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput324 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8790 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput324 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8790 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25674 hH))).trans (reductionSound8790 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput324 (4 : Fin 6)) = canonicalInput25683.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput324 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8582 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput324 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8582 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25683 hH))).trans (reductionSound8582 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput324 (5 : Fin 6)) = canonicalInput25684.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput324 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6457 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput324 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6457 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25684 hH))).trans (reductionSound6457 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput324 (j : Fin 6)))
    1440 1440 ![288, 288, 720, 72, 288, 1440] ![-7200, -7200, -2880, -28800, -7200, -1440] (extendRow Arithmetic.row324) ![reductionProjection6737, reductionProjection6737, reductionProjection11839, reductionProjection8790, reductionProjection8582, reductionProjection6457]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput438 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 1, 2, -2], ![-1, 1, -3, 3]]

theorem rowSound438 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 438) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row438 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row438 H]
  have hshape : boundaryInput438 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput438 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 720, 288, 288, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput438 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9876, oldProjection2835, reductionProjection9879, reductionProjection9879, oldProjection3418, reductionProjection11827] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput438 (0 : Fin 6)) = canonicalInput26896.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput438 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9876 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput438 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9876 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26896 hH))).trans (reductionSound9876 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput438 (1 : Fin 6)) = canonicalInput31165.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput438 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection2835 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput438 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection2835 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31165 hH))).trans (oldProjectionSound2835 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput438 (2 : Fin 6)) = canonicalInput31502.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput438 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9879 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput438 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9879 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31502 hH))).trans (reductionSound9879 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput438 (3 : Fin 6)) = canonicalInput31547.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput438 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9879 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput438 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9879 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31547 hH))).trans (reductionSound9879 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput438 (4 : Fin 6)) = canonicalInput31553.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput438 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3418 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput438 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3418 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31553 hH))).trans (oldProjectionSound3418 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput438 (5 : Fin 6)) = canonicalInput31555.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput438 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11827 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput438 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11827 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31555 hH))).trans (reductionSound11827 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput438 (j : Fin 6)))
    1440 1440 ![720, 720, 288, 288, 720, 1440] ![-2880, -2880, -7200, -7200, -2880, -1440] (extendRow Arithmetic.row438) ![reductionProjection9876, oldProjection2835, reductionProjection9879, reductionProjection9879, oldProjection3418, reductionProjection11827]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput101 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 1, -1, 1], ![2, 0, 3, -5]]

theorem rowSound101 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 101) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row101 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row101 H]
  have hshape : boundaryInput101 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput101 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 720, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput101 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6226, reductionProjection6226, reductionProjection6250, reductionProjection6280, reductionProjection6214, reductionProjection11855] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput101 (0 : Fin 6)) = canonicalInput17098.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput101 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6226 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput101 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6226 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17098 hH))).trans (reductionSound6226 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput101 (1 : Fin 6)) = canonicalInput25389.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput101 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6226 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput101 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6226 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25389 hH))).trans (reductionSound6226 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput101 (2 : Fin 6)) = canonicalInput25570.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput101 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6250 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput101 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6250 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25570 hH))).trans (reductionSound6250 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput101 (3 : Fin 6)) = canonicalInput25606.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput101 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6280 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput101 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6280 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25606 hH))).trans (reductionSound6280 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput101 (4 : Fin 6)) = canonicalInput25615.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput101 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6214 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput101 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6214 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25615 hH))).trans (reductionSound6214 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput101 (5 : Fin 6)) = canonicalInput25616.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput101 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11855 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput101 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11855 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25616 hH))).trans (reductionSound11855 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput101 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 720, 1440, 288] ![-1440, -1440, -1440, -2880, -1440, -7200] (extendRow Arithmetic.row101) ![reductionProjection6226, reductionProjection6226, reductionProjection6250, reductionProjection6280, reductionProjection6214, reductionProjection11855]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput103 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-1, 0, -1, 2], ![2, 0, 3, -5]]

theorem rowSound103 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 103) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row103 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row103 H]
  have hshape : boundaryInput103 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput103 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput103 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6187, reductionProjection6187, reductionProjection6250, reductionProjection6250, reductionProjection6183, reductionProjection11845] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput103 (0 : Fin 6)) = canonicalInput17101.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput103 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6187 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput103 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6187 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17101 hH))).trans (reductionSound6187 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput103 (1 : Fin 6)) = canonicalInput25393.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput103 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6187 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput103 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6187 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25393 hH))).trans (reductionSound6187 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput103 (2 : Fin 6)) = canonicalInput25575.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput103 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6250 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput103 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6250 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25575 hH))).trans (reductionSound6250 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput103 (3 : Fin 6)) = canonicalInput25635.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput103 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6250 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput103 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6250 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25635 hH))).trans (reductionSound6250 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput103 (4 : Fin 6)) = canonicalInput25639.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput103 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6183 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput103 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6183 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25639 hH))).trans (reductionSound6183 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput103 (5 : Fin 6)) = canonicalInput25640.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput103 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11845 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput103 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11845 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25640 hH))).trans (reductionSound11845 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput103 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 288, 1440] ![-1440, -1440, -1440, -1440, -7200, -1440] (extendRow Arithmetic.row103) ![reductionProjection6187, reductionProjection6187, reductionProjection6250, reductionProjection6250, reductionProjection6183, reductionProjection11845]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput283 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 0, -2, 3], ![-1, 0, 4, -3]]

theorem rowSound283 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 283) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row283 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row283 H]
  have hshape : boundaryInput283 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput283 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 288, 288, 144, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput283 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection11783, reductionProjection11784, reductionProjection11781, reductionProjection11781, reductionProjection11786, reductionProjection11871] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput283 (0 : Fin 6)) = canonicalInput31850.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput283 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11783 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput283 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11783 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31850 hH))).trans (reductionSound11783 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput283 (1 : Fin 6)) = canonicalInput31955.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput283 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11784 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput283 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11784 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31955 hH))).trans (reductionSound11784 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput283 (2 : Fin 6)) = canonicalInput31993.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput283 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11781 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput283 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11781 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31993 hH))).trans (reductionSound11781 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput283 (3 : Fin 6)) = canonicalInput32008.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput283 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11781 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput283 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11781 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32008 hH))).trans (reductionSound11781 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput283 (4 : Fin 6)) = canonicalInput32011.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput283 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11786 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput283 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11786 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32011 hH))).trans (reductionSound11786 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput283 (5 : Fin 6)) = canonicalInput32012.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput283 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11871 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput283 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11871 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32012 hH))).trans (reductionSound11871 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput283 (j : Fin 6)))
    1440 1440 ![288, 288, 288, 288, 144, 720] ![-7200, -7200, -7200, -7200, -14400, -2880] (extendRow Arithmetic.row283) ![reductionProjection11783, reductionProjection11784, reductionProjection11781, reductionProjection11781, reductionProjection11786, reductionProjection11871]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput293 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -2, -1, 1], ![-1, 0, 4, -3]]

theorem rowSound293 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 293) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row293 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row293 H]
  have hshape : boundaryInput293 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput293 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 288, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput293 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9640, reductionProjection9640, reductionProjection9666, oldProjection3314, reductionProjection11861, oldProjection3118] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput293 (0 : Fin 6)) = canonicalInput20241.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput293 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9640 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput293 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9640 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20241 hH))).trans (reductionSound9640 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput293 (1 : Fin 6)) = canonicalInput27981.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput293 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9640 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput293 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9640 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27981 hH))).trans (reductionSound9640 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput293 (2 : Fin 6)) = canonicalInput28205.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput293 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9666 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput293 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9666 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28205 hH))).trans (reductionSound9666 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput293 (3 : Fin 6)) = canonicalInput28378.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput293 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3314 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput293 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3314 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28378 hH))).trans (oldProjectionSound3314 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput293 (4 : Fin 6)) = canonicalInput28397.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput293 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11861 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput293 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11861 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28397 hH))).trans (reductionSound11861 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput293 (5 : Fin 6)) = canonicalInput28398.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput293 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3118 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput293 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3118 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28398 hH))).trans (oldProjectionSound3118 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput293 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 288, 288] ![-1440, -1440, -1440, -1440, -7200, -7200] (extendRow Arithmetic.row293) ![reductionProjection9640, reductionProjection9640, reductionProjection9666, oldProjection3314, reductionProjection11861, oldProjection3118]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput314 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, -2, -1, 2], ![-1, 0, 4, -3]]

theorem rowSound314 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 314) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row314 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row314 H]
  have hshape : boundaryInput314 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput314 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 1440, 288, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput314 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8765, reductionProjection8917, reductionProjection9439, reductionProjection11861, reductionProjection11835, reductionProjection6611] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput314 (0 : Fin 6)) = canonicalInput20327.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput314 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8765 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput314 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8765 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20327 hH))).trans (reductionSound8765 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput314 (1 : Fin 6)) = canonicalInput28037.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput314 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8917 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput314 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8917 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28037 hH))).trans (reductionSound8917 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput314 (2 : Fin 6)) = canonicalInput29401.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput314 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9439 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput314 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9439 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29401 hH))).trans (reductionSound9439 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput314 (3 : Fin 6)) = canonicalInput29508.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput314 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11861 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput314 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11861 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29508 hH))).trans (reductionSound11861 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput314 (4 : Fin 6)) = canonicalInput29534.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput314 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11835 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput314 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11835 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29534 hH))).trans (reductionSound11835 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput314 (5 : Fin 6)) = canonicalInput29535.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput314 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6611 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput314 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6611 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29535 hH))).trans (reductionSound6611 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput314 (j : Fin 6)))
    1440 1440 ![1440, 288, 1440, 288, 1440, 288] ![-1440, -7200, -1440, -7200, -1440, -7200] (extendRow Arithmetic.row314) ![reductionProjection8765, reductionProjection8917, reductionProjection9439, reductionProjection11861, reductionProjection11835, reductionProjection6611]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput319 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, -2, 1], ![-1, 0, 4, -3]]

theorem rowSound319 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 319) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row319 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row319 H]
  have hshape : boundaryInput319 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput319 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 720, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput319 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8798, reductionProjection8809, reductionProjection8877, reductionProjection8838, reductionProjection11850, reductionProjection6490] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput319 (0 : Fin 6)) = canonicalInput17212.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput319 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8798 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput319 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8798 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17212 hH))).trans (reductionSound8798 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput319 (1 : Fin 6)) = canonicalInput25461.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput319 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8809 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput319 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8809 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25461 hH))).trans (reductionSound8809 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput319 (2 : Fin 6)) = canonicalInput25844.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput319 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8877 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput319 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8877 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25844 hH))).trans (reductionSound8877 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput319 (3 : Fin 6)) = canonicalInput25933.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput319 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8838 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput319 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8838 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25933 hH))).trans (reductionSound8838 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput319 (4 : Fin 6)) = canonicalInput25952.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput319 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11850 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput319 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11850 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25952 hH))).trans (reductionSound11850 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput319 (5 : Fin 6)) = canonicalInput25953.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput319 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6490 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput319 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6490 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25953 hH))).trans (reductionSound6490 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput319 (j : Fin 6)))
    1440 1440 ![1440, 720, 1440, 1440, 1440, 288] ![-1440, -2880, -1440, -1440, -1440, -7200] (extendRow Arithmetic.row319) ![reductionProjection8798, reductionProjection8809, reductionProjection8877, reductionProjection8838, reductionProjection11850, reductionProjection6490]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
