import NoFourMUBs.Step2.SOS.Canonical377
import NoFourMUBs.Step2.SOS.Canonical399
import NoFourMUBs.Step2.SOS.Canonical405
import NoFourMUBs.Step2.SOS.Canonical433
import NoFourMUBs.Step2.SOS.Canonical434
import NoFourMUBs.Step2.SOS.Canonical435
import NoFourMUBs.Step2.SOS.Canonical436
import NoFourMUBs.Step2.SOS.Canonical448
import NoFourMUBs.Step2.SOS.Canonical449
import NoFourMUBs.Step2.SOS.Canonical452
import NoFourMUBs.Step2.SOS.Canonical453
import NoFourMUBs.Step2.SOS.Canonical456
import NoFourMUBs.Step2.SOS.Canonical457
import NoFourMUBs.Step2.SOS.Canonical458
import NoFourMUBs.Step2.SOS.Canonical459
import NoFourMUBs.Step2.SOS.Canonical460
import NoFourMUBs.Step2.SOS.Canonical462
import NoFourMUBs.Step2.SOS.Canonical463
import NoFourMUBs.Step2.SOS.Canonical464
import NoFourMUBs.Step2.SOS.Canonical466
import NoFourMUBs.Step2.SOS.Canonical467
import NoFourMUBs.Step2.SOS.Canonical471
import NoFourMUBs.Step2.SOS.Canonical489
import NoFourMUBs.Step2.SOS.Canonical490
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions046
import NoFourMUBs.Step2.SOS.Reductions103
import NoFourMUBs.Step2.SOS.Reductions164
import NoFourMUBs.Step2.SOS.Reductions167
import NoFourMUBs.Step2.SOS.Reductions169
import NoFourMUBs.Step2.SOS.Reductions172
import NoFourMUBs.Step2.SOS.Reductions173
import NoFourMUBs.Step2.SOS.Reductions174
import NoFourMUBs.Step2.SOS.Reductions179
import NoFourMUBs.Step2.SOS.Reductions180
import NoFourMUBs.Step2.SOS.Reductions181
import NoFourMUBs.Step2.SOS.Reductions183
import NoFourMUBs.Step2.SOS.Reductions188
import NoFourMUBs.Step2.SOS.Reductions189
import NoFourMUBs.Step2.SOS.Reductions234
import NoFourMUBs.Step2.SOS.Reductions251
import NoFourMUBs.Step2.SOS.Reductions252
import NoFourMUBs.Step2.SOS.Reductions274
import NoFourMUBs.Step2.SOS.Reductions275
import NoFourMUBs.Step2.SOS.Reductions276
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical263

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput1234 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![-2, 2, 1, -1], ![1, -3, 1, 1]]

theorem rowSound1234 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1234) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1234 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1234 H]
  have hshape : boundaryInput1234 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1234 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 1440, 1440, 720, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1234 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5533, oldProjection1768, reductionProjection5580, reductionProjection5523, oldProjection3161, reductionProjection8811] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1234 (0 : Fin 6)) = canonicalInput27728.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1234 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5533 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1234 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5533 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27728 hH))).trans (reductionSound5533 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1234 (1 : Fin 6)) = canonicalInput28721.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1234 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1768 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1234 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1768 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28721 hH))).trans (oldProjectionSound1768 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1234 (2 : Fin 6)) = canonicalInput28930.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1234 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5580 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1234 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5580 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28930 hH))).trans (reductionSound5580 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1234 (3 : Fin 6)) = canonicalInput29014.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1234 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5523 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1234 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5523 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29014 hH))).trans (reductionSound5523 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1234 (4 : Fin 6)) = canonicalInput29022.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1234 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3161 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1234 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3161 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29022 hH))).trans (oldProjectionSound3161 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1234 (5 : Fin 6)) = canonicalInput29023.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1234 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8811 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1234 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8811 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29023 hH))).trans (reductionSound8811 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1234 (j : Fin 6)))
    1440 1440 ![288, 1440, 1440, 1440, 720, 720] ![-7200, -1440, -1440, -1440, -2880, -2880] (extendRow Arithmetic.row1234) ![reductionProjection5533, oldProjection1768, reductionProjection5580, reductionProjection5523, oldProjection3161, reductionProjection8811]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1237 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, -1, 2, 1], ![0, 3, -1, -2]]

theorem rowSound1237 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1237) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1237 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1237 H]
  have hshape : boundaryInput1237 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1237 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 720, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1237 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5749, oldProjection1674, reductionProjection5734, reductionProjection5734, reductionProjection8830, reductionProjection8830] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1237 (0 : Fin 6)) = canonicalInput27797.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1237 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5749 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1237 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5749 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27797 hH))).trans (reductionSound5749 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1237 (1 : Fin 6)) = canonicalInput28792.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1237 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1674 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1237 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1674 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28792 hH))).trans (oldProjectionSound1674 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1237 (2 : Fin 6)) = canonicalInput29203.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1237 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5734 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1237 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5734 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29203 hH))).trans (reductionSound5734 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1237 (3 : Fin 6)) = canonicalInput29261.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1237 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5734 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1237 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5734 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29261 hH))).trans (reductionSound5734 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1237 (4 : Fin 6)) = canonicalInput29264.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1237 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8830 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1237 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8830 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29264 hH))).trans (reductionSound8830 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1237 (5 : Fin 6)) = canonicalInput29265.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1237 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8830 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1237 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8830 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29265 hH))).trans (reductionSound8830 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1237 (j : Fin 6)))
    720 1440 ![720, 720, 1440, 1440, 1440, 1440] ![-1440, -1440, -720, -720, -720, -720] (extendRow Arithmetic.row1237) ![reductionProjection5749, oldProjection1674, reductionProjection5734, reductionProjection5734, reductionProjection8830, reductionProjection8830]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1239 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 2, -1, 1], ![0, -2, 3, -1]]

theorem rowSound1239 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1239) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1239 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1239 H]
  have hshape : boundaryInput1239 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1239 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 1440, 1440, 144, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1239 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5254, oldProjection3251, reductionProjection5538, reductionProjection8829, reductionProjection1479, oldProjection3041] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1239 (0 : Fin 6)) = canonicalInput27908.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1239 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5254 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1239 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5254 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27908 hH))).trans (reductionSound5254 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1239 (1 : Fin 6)) = canonicalInput29674.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1239 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection3251 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1239 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection3251 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29674 hH))).trans (oldProjectionSound3251 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1239 (2 : Fin 6)) = canonicalInput29863.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1239 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5538 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1239 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5538 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29863 hH))).trans (reductionSound5538 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1239 (3 : Fin 6)) = canonicalInput29891.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1239 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8829 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1239 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8829 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29891 hH))).trans (reductionSound8829 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1239 (4 : Fin 6)) = canonicalInput29897.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1239 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1479 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1239 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1479 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29897 hH))).trans (reductionSound1479 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1239 (5 : Fin 6)) = canonicalInput29898.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1239 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3041 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1239 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3041 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29898 hH))).trans (oldProjectionSound3041 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1239 (j : Fin 6)))
    1440 1440 ![1440, 288, 1440, 1440, 144, 288] ![-1440, -7200, -1440, -1440, -14400, -7200] (extendRow Arithmetic.row1239) ![reductionProjection5254, oldProjection3251, reductionProjection5538, reductionProjection8829, reductionProjection1479, oldProjection3041]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1242 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 0, -1], ![-2, 2, 1, -1], ![0, -3, 2, 1]]

theorem rowSound1242 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1242) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1242 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1242 H]
  have hshape : boundaryInput1242 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1242 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 720, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1242 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5818, reductionProjection5873, reductionProjection5788, reductionProjection5788, oldProjection3017, reductionProjection8812] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1242 (0 : Fin 6)) = canonicalInput27875.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1242 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5818 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1242 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5818 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27875 hH))).trans (reductionSound5818 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1242 (1 : Fin 6)) = canonicalInput29396.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1242 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5873 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1242 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5873 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29396 hH))).trans (reductionSound5873 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1242 (2 : Fin 6)) = canonicalInput29711.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1242 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5788 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1242 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5788 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29711 hH))).trans (reductionSound5788 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1242 (3 : Fin 6)) = canonicalInput29725.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1242 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5788 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1242 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5788 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29725 hH))).trans (reductionSound5788 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1242 (4 : Fin 6)) = canonicalInput29727.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1242 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3017 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1242 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3017 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29727 hH))).trans (oldProjectionSound3017 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1242 (5 : Fin 6)) = canonicalInput29728.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1242 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8812 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1242 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8812 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29728 hH))).trans (reductionSound8812 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1242 (j : Fin 6)))
    1440 1440 ![1440, 720, 1440, 1440, 1440, 288] ![-1440, -2880, -1440, -1440, -1440, -7200] (extendRow Arithmetic.row1242) ![reductionProjection5818, reductionProjection5873, reductionProjection5788, reductionProjection5788, oldProjection3017, reductionProjection8812]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1294 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, -2, 1, 1], ![1, 0, 1, -2], ![-2, 2, 1, -1]]

theorem rowSound1294 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1294) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1294 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1294 H]
  have hshape : boundaryInput1294 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1294 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1294 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5809, reductionProjection5872, reductionProjection5781, reductionProjection8805, oldProjection3077, reductionProjection7489] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1294 (0 : Fin 6)) = canonicalInput27865.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1294 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5809 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1294 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5809 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27865 hH))).trans (reductionSound5809 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1294 (1 : Fin 6)) = canonicalInput29386.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1294 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5872 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1294 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5872 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29386 hH))).trans (reductionSound5872 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1294 (2 : Fin 6)) = canonicalInput29576.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1294 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5781 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1294 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5781 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29576 hH))).trans (reductionSound5781 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1294 (3 : Fin 6)) = canonicalInput29653.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1294 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8805 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1294 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8805 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29653 hH))).trans (reductionSound8805 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1294 (4 : Fin 6)) = canonicalInput29654.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1294 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3077 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1294 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3077 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29654 hH))).trans (oldProjectionSound3077 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1294 (5 : Fin 6)) = canonicalInput29655.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1294 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7489 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1294 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7489 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29655 hH))).trans (reductionSound7489 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1294 (j : Fin 6)))
    1440 1440 ![720, 1440, 1440, 1440, 1440, 1440] ![-2880, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row1294) ![reductionProjection5809, reductionProjection5872, reductionProjection5781, reductionProjection8805, oldProjection3077, reductionProjection7489]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput425 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 2, -1, 1], ![1, 0, 3, -4]]

theorem rowSound425 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 425) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row425 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row425 H]
  have hshape : boundaryInput425 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput425 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput425 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6048, reductionProjection6020, oldProjection3314, reductionProjection6050, reductionProjection8838, reductionProjection5359] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput425 (0 : Fin 6)) = canonicalInput24133.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput425 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6048 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput425 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6048 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24133 hH))).trans (reductionSound6048 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput425 (1 : Fin 6)) = canonicalInput25559.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput425 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6020 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput425 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6020 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25559 hH))).trans (reductionSound6020 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput425 (2 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw8438 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput425 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection3314 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput425 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection3314 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8438 hH))).trans (oldProjectionSound3314 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput425 (3 : Fin 6)) = canonicalInput25954.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput425 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6050 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput425 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6050 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25954 hH))).trans (reductionSound6050 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput425 (4 : Fin 6)) = canonicalInput25959.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput425 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8838 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput425 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8838 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25959 hH))).trans (reductionSound8838 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput425 (5 : Fin 6)) = canonicalInput25960.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput425 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5359 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput425 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5359 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25960 hH))).trans (reductionSound5359 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput425 (j : Fin 6)))
    288 1440 ![1440, 288, 1440, 1440, 1440, 1440] ![-288, -1440, -288, -288, -288, -288] (extendRow Arithmetic.row425) ![reductionProjection6048, reductionProjection6020, oldProjection3314, reductionProjection6050, reductionProjection8838, reductionProjection5359]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1154 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![-1, 0, 2, -1], ![2, -1, 1, -2]]

theorem rowSound1154 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1154) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1154 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1154 H]
  have hshape : boundaryInput1154 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1154 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1154 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8804, reductionProjection8824, reductionProjection8862, reductionProjection8799, reductionProjection5776, reductionProjection8084] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1154 (0 : Fin 6)) = canonicalInput27828.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1154 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8804 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1154 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8804 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27828 hH))).trans (reductionSound8804 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1154 (1 : Fin 6)) = canonicalInput29349.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1154 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8824 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1154 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8824 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29349 hH))).trans (reductionSound8824 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1154 (2 : Fin 6)) = canonicalInput29431.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1154 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8862 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1154 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8862 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29431 hH))).trans (reductionSound8862 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1154 (3 : Fin 6)) = canonicalInput29479.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1154 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8799 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1154 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8799 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29479 hH))).trans (reductionSound8799 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1154 (4 : Fin 6)) = canonicalInput29484.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1154 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5776 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1154 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5776 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29484 hH))).trans (reductionSound5776 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1154 (5 : Fin 6)) = canonicalInput29485.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1154 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8084 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1154 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8084 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29485 hH))).trans (reductionSound8084 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1154 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 288] ![-1440, -1440, -1440, -1440, -1440, -7200] (extendRow Arithmetic.row1154) ![reductionProjection8804, reductionProjection8824, reductionProjection8862, reductionProjection8799, reductionProjection5776, reductionProjection8084]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1184 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 1, 1], ![-1, 0, -1, 2], ![2, -1, 1, -2]]

theorem rowSound1184 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1184) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1184 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1184 H]
  have hshape : boundaryInput1184 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1184 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1184 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection3301, reductionProjection8820, reductionProjection8861, reductionProjection5413, reductionProjection8796, reductionProjection8055] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1184 (0 : Fin 6)) = canonicalInput30157.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1184 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3301 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1184 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3301 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30157 hH))).trans (reductionSound3301 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1184 (1 : Fin 6)) = canonicalInput31300.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1184 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8820 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1184 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8820 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31300 hH))).trans (reductionSound8820 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1184 (2 : Fin 6)) = canonicalInput31329.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1184 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8861 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1184 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8861 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31329 hH))).trans (reductionSound8861 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1184 (3 : Fin 6)) = canonicalInput31371.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1184 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5413 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1184 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5413 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31371 hH))).trans (reductionSound5413 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1184 (4 : Fin 6)) = canonicalInput31377.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1184 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8796 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1184 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8796 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31377 hH))).trans (reductionSound8796 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1184 (5 : Fin 6)) = canonicalInput31378.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1184 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8055 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1184 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8055 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31378 hH))).trans (reductionSound8055 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1184 (j : Fin 6)))
    1440 1440 ![1440, 288, 1440, 1440, 1440, 288] ![-1440, -7200, -1440, -1440, -1440, -7200] (extendRow Arithmetic.row1184) ![reductionProjection3301, reductionProjection8820, reductionProjection8861, reductionProjection5413, reductionProjection8796, reductionProjection8055]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
