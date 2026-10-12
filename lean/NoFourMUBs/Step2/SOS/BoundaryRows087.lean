import NoFourMUBs.Step2.SOS.Canonical267
import NoFourMUBs.Step2.SOS.Canonical397
import NoFourMUBs.Step2.SOS.Canonical400
import NoFourMUBs.Step2.SOS.Canonical401
import NoFourMUBs.Step2.SOS.Canonical419
import NoFourMUBs.Step2.SOS.Canonical420
import NoFourMUBs.Step2.SOS.Canonical486
import NoFourMUBs.Step2.SOS.Canonical488
import NoFourMUBs.Step2.SOS.Canonical495
import NoFourMUBs.Step2.SOS.Canonical496
import NoFourMUBs.Step2.SOS.Canonical497
import NoFourMUBs.Step2.SOS.Canonical499
import NoFourMUBs.Step2.SOS.Canonical500
import NoFourMUBs.Step2.SOS.Canonical501
import NoFourMUBs.Step2.SOS.Canonical508
import NoFourMUBs.Step2.SOS.Canonical509
import NoFourMUBs.Step2.SOS.Canonical510
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions004
import NoFourMUBs.Step2.SOS.Reductions009
import NoFourMUBs.Step2.SOS.Reductions132
import NoFourMUBs.Step2.SOS.Reductions209
import NoFourMUBs.Step2.SOS.Reductions246
import NoFourMUBs.Step2.SOS.Reductions250
import NoFourMUBs.Step2.SOS.Reductions283
import NoFourMUBs.Step2.SOS.Reductions285
import NoFourMUBs.Step2.SOS.Reductions313
import NoFourMUBs.Step2.SOS.Reductions316
import NoFourMUBs.Step2.SOS.Reductions328
import NoFourMUBs.Step2.SOS.Reductions331
import NoFourMUBs.Step2.SOS.Reductions332
import NoFourMUBs.Step2.SOS.Reductions340

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput270 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -1, -1, 3], ![-1, -1, 4, -2]]

theorem rowSound270 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 270) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row270 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row270 H]
  have hshape : boundaryInput270 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput270 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput270 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10628, reductionProjection10628, reductionProjection10623, reductionProjection10623, reductionProjection10634, reductionProjection10903] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput270 (0 : Fin 6)) = canonicalInput32071.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput270 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10628 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput270 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10628 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32071 hH))).trans (reductionSound10628 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput270 (1 : Fin 6)) = canonicalInput32541.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput270 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10628 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput270 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10628 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32541 hH))).trans (reductionSound10628 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput270 (2 : Fin 6)) = canonicalInput32610.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput270 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10623 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput270 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10623 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32610 hH))).trans (reductionSound10623 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput270 (3 : Fin 6)) = canonicalInput32638.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput270 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10623 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput270 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10623 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32638 hH))).trans (reductionSound10623 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput270 (4 : Fin 6)) = canonicalInput32653.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput270 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10634 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput270 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10634 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32653 hH))).trans (reductionSound10634 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput270 (5 : Fin 6)) = canonicalInput32654.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput270 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10903 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput270 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10903 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32654 hH))).trans (reductionSound10903 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput270 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 288] ![-1440, -1440, -1440, -1440, -1440, -7200] (extendRow Arithmetic.row270) ![reductionProjection10628, reductionProjection10628, reductionProjection10623, reductionProjection10623, reductionProjection10634, reductionProjection10903]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput276 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -1, -1, 3], ![-1, -1, 4, -2]]

theorem rowSound276 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 276) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row276 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row276 H]
  have hshape : boundaryInput276 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput276 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 72, 360] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput276 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10627, reductionProjection10628, reductionProjection10627, reductionProjection10628, reductionProjection10637, reductionProjection10905] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput276 (0 : Fin 6)) = canonicalInput31865.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput276 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10627 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput276 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10627 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31865 hH))).trans (reductionSound10627 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput276 (1 : Fin 6)) = canonicalInput31977.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput276 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10628 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput276 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10628 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31977 hH))).trans (reductionSound10628 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput276 (2 : Fin 6)) = canonicalInput32040.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput276 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10627 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput276 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10627 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32040 hH))).trans (reductionSound10627 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput276 (3 : Fin 6)) = canonicalInput32071.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput276 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10628 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput276 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10628 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32071 hH))).trans (reductionSound10628 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput276 (4 : Fin 6)) = canonicalInput32081.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput276 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10637 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput276 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10637 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32081 hH))).trans (reductionSound10637 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput276 (5 : Fin 6)) = canonicalInput32082.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput276 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10905 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput276 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10905 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32082 hH))).trans (reductionSound10905 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput276 (j : Fin 6)))
    720 1440 ![1440, 1440, 1440, 1440, 72, 360] ![-720, -720, -720, -720, -14400, -2880] (extendRow Arithmetic.row276) ![reductionProjection10627, reductionProjection10628, reductionProjection10627, reductionProjection10628, reductionProjection10637, reductionProjection10905]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput531 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, -1, 1, -1], ![-1, -1, -1, 3], ![-1, 3, -1, -1]]

theorem rowSound531 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 531) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row531 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row531 H]
  have hshape : boundaryInput531 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput531 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![144, 144, 360, 288, 720, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput531 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10904, reductionProjection10904, reductionProjection10908, reductionProjection10902, reductionProjection10133, reductionProjection9130] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput531 (0 : Fin 6)) = canonicalInput26860.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput531 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10904 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput531 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10904 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26860 hH))).trans (reductionSound10904 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput531 (1 : Fin 6)) = canonicalInput31149.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput531 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10904 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput531 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10904 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31149 hH))).trans (reductionSound10904 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput531 (2 : Fin 6)) = canonicalInput31245.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput531 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10908 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput531 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10908 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31245 hH))).trans (reductionSound10908 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput531 (3 : Fin 6)) = canonicalInput31260.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput531 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10902 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput531 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10902 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31260 hH))).trans (reductionSound10902 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput531 (4 : Fin 6)) = canonicalInput31266.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput531 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10133 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput531 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10133 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31266 hH))).trans (reductionSound10133 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput531 (5 : Fin 6)) = canonicalInput31267.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput531 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9130 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput531 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9130 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31267 hH))).trans (reductionSound9130 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput531 (j : Fin 6)))
    1440 1440 ![144, 144, 360, 288, 720, 720] ![-14400, -14400, -5760, -7200, -2880, -2880] (extendRow Arithmetic.row531) ![reductionProjection10904, reductionProjection10904, reductionProjection10908, reductionProjection10902, reductionProjection10133, reductionProjection9130]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput536 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, -1, 2, -1], ![-1, -1, -1, 3], ![-1, 3, -1, -1]]

theorem rowSound536 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 536) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row536 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row536 H]
  have hshape : boundaryInput536 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput536 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput536 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10906, reductionProjection10909, reductionProjection10906, reductionProjection10907, reductionProjection10131, reductionProjection9078] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput536 (0 : Fin 6)) = canonicalInput26914.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput536 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10906 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput536 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10906 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26914 hH))).trans (reductionSound10906 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput536 (1 : Fin 6)) = canonicalInput31690.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput536 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10909 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput536 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10909 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31690 hH))).trans (reductionSound10909 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput536 (2 : Fin 6)) = canonicalInput31736.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput536 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10906 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput536 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10906 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31736 hH))).trans (reductionSound10906 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput536 (3 : Fin 6)) = canonicalInput31748.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput536 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10907 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput536 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10907 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31748 hH))).trans (reductionSound10907 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput536 (4 : Fin 6)) = canonicalInput31751.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput536 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10131 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput536 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10131 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31751 hH))).trans (reductionSound10131 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput536 (5 : Fin 6)) = canonicalInput31752.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput536 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9078 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput536 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9078 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31752 hH))).trans (reductionSound9078 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput536 (j : Fin 6)))
    288 1440 ![1440, 288, 1440, 1440, 1440, 288] ![-288, -1440, -288, -288, -288, -1440] (extendRow Arithmetic.row536) ![reductionProjection10906, reductionProjection10909, reductionProjection10906, reductionProjection10907, reductionProjection10131, reductionProjection9078]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput538 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -1, 2, 0], ![-1, -1, -1, 3], ![0, 3, -1, -2]]

theorem rowSound538 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 538) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row538 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row538 H]
  have hshape : boundaryInput538 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput538 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput538 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10884, reductionProjection10893, reductionProjection10894, reductionProjection10499, reductionProjection10046, reductionProjection8026] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput538 (0 : Fin 6)) = canonicalInput26911.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput538 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10884 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput538 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10884 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26911 hH))).trans (reductionSound10884 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput538 (1 : Fin 6)) = canonicalInput31685.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput538 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10893 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput538 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10893 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31685 hH))).trans (reductionSound10893 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput538 (2 : Fin 6)) = canonicalInput31733.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput538 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10894 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput538 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10894 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31733 hH))).trans (reductionSound10894 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput538 (3 : Fin 6)) = canonicalInput31741.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput538 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10499 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput538 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10499 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31741 hH))).trans (reductionSound10499 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput538 (4 : Fin 6)) = canonicalInput31743.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput538 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10046 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput538 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10046 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31743 hH))).trans (reductionSound10046 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput538 (5 : Fin 6)) = canonicalInput31744.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput538 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8026 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput538 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8026 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31744 hH))).trans (reductionSound8026 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput538 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 288, 1440] ![-1440, -1440, -1440, -1440, -7200, -1440] (extendRow Arithmetic.row538) ![reductionProjection10884, reductionProjection10893, reductionProjection10894, reductionProjection10499, reductionProjection10046, reductionProjection8026]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput562 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 0, 1], ![1, 0, -1, 0], ![2, 0, -1, -1], ![-2, -1, 3, 0], ![0, 3, -1, -2]]

theorem rowSound562 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 562) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row562 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row562 H]
  have hshape : boundaryInput562 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput562 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2, 2, 1440, 360, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput562 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection288, reductionProjection288, reductionProjection4250, reductionProjection6690, reductionProjection155, reductionProjection10882] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput562 (0 : Fin 6)) = canonicalInput17119.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput562 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection288 (Normalization.momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst boundaryInput562 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection288 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17119 hH))).trans (reductionSound288 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput562 (1 : Fin 6)) = canonicalInput25408.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput562 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection288 (Normalization.momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst boundaryInput562 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection288 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25408 hH))).trans (reductionSound288 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput562 (2 : Fin 6)) = canonicalInput25626.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput562 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4250 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput562 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4250 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25626 hH))).trans (reductionSound4250 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput562 (3 : Fin 6)) = canonicalInput25675.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput562 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6690 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput562 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6690 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25675 hH))).trans (reductionSound6690 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput562 (4 : Fin 6)) = canonicalInput25685.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput562 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection155 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput562 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection155 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25685 hH))).trans (reductionSound155 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput562 (5 : Fin 6)) = canonicalInput25686.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput562 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10882 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput562 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10882 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25686 hH))).trans (reductionSound10882 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput562 (j : Fin 6)))
    1440 1440 ![2, 2, 1440, 360, 1440, 1440] ![-1036800, -1036800, -1440, -5760, -1440, -1440] (extendRow Arithmetic.row562) ![reductionProjection288, reductionProjection288, reductionProjection4250, reductionProjection6690, reductionProjection155, reductionProjection10882]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput843 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![-1, -1, 3, -1]]

theorem rowSound843 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 843) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row843 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row843 H]
  have hshape : boundaryInput843 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput843 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput843 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection3301, oldProjection3301, reductionProjection10895, reductionProjection10895, reductionProjection10903, oldProjection3193] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput843 (0 : Fin 6)) = canonicalInput32072.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput843 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection3301 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput843 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection3301 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32072 hH))).trans (oldProjectionSound3301 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput843 (1 : Fin 6)) = canonicalInput32542.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput843 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection3301 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput843 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection3301 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32542 hH))).trans (oldProjectionSound3301 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput843 (2 : Fin 6)) = canonicalInput32611.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput843 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10895 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput843 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10895 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32611 hH))).trans (reductionSound10895 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput843 (3 : Fin 6)) = canonicalInput32639.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput843 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10895 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput843 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10895 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32639 hH))).trans (reductionSound10895 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput843 (4 : Fin 6)) = canonicalInput32654.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput843 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10903 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput843 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10903 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32654 hH))).trans (reductionSound10903 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput843 (5 : Fin 6)) = canonicalInput32655.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput843 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3193 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput843 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3193 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32655 hH))).trans (oldProjectionSound3193 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput843 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 288, 1440] ![-1440, -1440, -1440, -1440, -7200, -1440] (extendRow Arithmetic.row843) ![oldProjection3301, oldProjection3301, reductionProjection10895, reductionProjection10895, reductionProjection10903, oldProjection3193]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput849 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -1, 0, 2], ![-1, -1, 3, -1]]

theorem rowSound849 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 849) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row849 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row849 H]
  have hshape : boundaryInput849 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput849 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 360, 180] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput849 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10896, oldProjection3301, reductionProjection10896, oldProjection3301, reductionProjection10905, reductionProjection7884] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput849 (0 : Fin 6)) = canonicalInput31866.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput849 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10896 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput849 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10896 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31866 hH))).trans (reductionSound10896 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput849 (1 : Fin 6)) = canonicalInput31978.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput849 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection3301 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput849 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection3301 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31978 hH))).trans (oldProjectionSound3301 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput849 (2 : Fin 6)) = canonicalInput32041.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput849 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10896 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput849 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10896 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32041 hH))).trans (reductionSound10896 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput849 (3 : Fin 6)) = canonicalInput32072.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput849 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3301 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput849 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3301 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32072 hH))).trans (oldProjectionSound3301 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput849 (4 : Fin 6)) = canonicalInput32082.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput849 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10905 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput849 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10905 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32082 hH))).trans (reductionSound10905 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput849 (5 : Fin 6)) = canonicalInput32083.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput849 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7884 (Normalization.momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst boundaryInput849 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7884 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32083 hH))).trans (reductionSound7884 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput849 (j : Fin 6)))
    720 1440 ![1440, 1440, 1440, 1440, 360, 180] ![-720, -720, -720, -720, -2880, -5760] (extendRow Arithmetic.row849) ![reductionProjection10896, oldProjection3301, reductionProjection10896, oldProjection3301, reductionProjection10905, reductionProjection7884]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
