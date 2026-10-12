import NoFourMUBs.Step2.SOS.Canonical376
import NoFourMUBs.Step2.SOS.Canonical399
import NoFourMUBs.Step2.SOS.Canonical404
import NoFourMUBs.Step2.SOS.Canonical432
import NoFourMUBs.Step2.SOS.Canonical433
import NoFourMUBs.Step2.SOS.Canonical434
import NoFourMUBs.Step2.SOS.Canonical436
import NoFourMUBs.Step2.SOS.Canonical439
import NoFourMUBs.Step2.SOS.Canonical440
import NoFourMUBs.Step2.SOS.Canonical444
import NoFourMUBs.Step2.SOS.Canonical445
import NoFourMUBs.Step2.SOS.Canonical446
import NoFourMUBs.Step2.SOS.Canonical449
import NoFourMUBs.Step2.SOS.Canonical453
import NoFourMUBs.Step2.SOS.Canonical455
import NoFourMUBs.Step2.SOS.Canonical468
import NoFourMUBs.Step2.SOS.Canonical469
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions046
import NoFourMUBs.Step2.SOS.Reductions050
import NoFourMUBs.Step2.SOS.Reductions163
import NoFourMUBs.Step2.SOS.Reductions164
import NoFourMUBs.Step2.SOS.Reductions167
import NoFourMUBs.Step2.SOS.Reductions169
import NoFourMUBs.Step2.SOS.Reductions170
import NoFourMUBs.Step2.SOS.Reductions172
import NoFourMUBs.Step2.SOS.Reductions180
import NoFourMUBs.Step2.SOS.Reductions181
import NoFourMUBs.Step2.SOS.Reductions183
import NoFourMUBs.Step2.SOS.Reductions230
import NoFourMUBs.Step2.SOS.Reductions234
import NoFourMUBs.Step2.SOS.Reductions251
import NoFourMUBs.Step2.SOS.Reductions275
import NoFourMUBs.Step2.SOS.Reductions276
import NoFourMUBs.Step2.SOS.Reductions277

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput1226 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 2, 1, -1], ![1, -3, 2, 0]]

theorem rowSound1226 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1226) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1226 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1226 H]
  have hshape : boundaryInput1226 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1226 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1226 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5455, reductionProjection5455, reductionProjection5771, reductionProjection5450, oldProjection2970, reductionProjection8860] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1226 (0 : Fin 6)) = canonicalInput27655.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1226 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5455 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1226 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5455 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27655 hH))).trans (reductionSound5455 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1226 (1 : Fin 6)) = canonicalInput28157.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1226 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5455 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1226 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5455 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28157 hH))).trans (reductionSound5455 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1226 (2 : Fin 6)) = canonicalInput28419.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1226 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5771 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1226 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5771 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28419 hH))).trans (reductionSound5771 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1226 (3 : Fin 6)) = canonicalInput28472.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1226 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5450 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1226 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5450 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28472 hH))).trans (reductionSound5450 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1226 (4 : Fin 6)) = canonicalInput28477.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1226 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2970 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1226 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2970 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28477 hH))).trans (oldProjectionSound2970 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1226 (5 : Fin 6)) = canonicalInput28478.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1226 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8860 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1226 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8860 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28478 hH))).trans (reductionSound8860 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1226 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 288, 1440] ![-1440, -1440, -1440, -1440, -7200, -1440] (extendRow Arithmetic.row1226) ![reductionProjection5455, reductionProjection5455, reductionProjection5771, reductionProjection5450, oldProjection2970, reductionProjection8860]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1260 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, 1, 1, -2], ![1, -2, 1, 0], ![-2, 2, 1, -1]]

theorem rowSound1260 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1260) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1260 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1260 H]
  have hshape : boundaryInput1260 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1260 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1260 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5235, reductionProjection5235, reductionProjection5233, reductionProjection5451, reductionProjection8863, reductionProjection7372] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1260 (0 : Fin 6)) = canonicalInput27681.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1260 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5235 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1260 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5235 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27681 hH))).trans (reductionSound5235 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1260 (1 : Fin 6)) = canonicalInput28179.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1260 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5235 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1260 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5235 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28179 hH))).trans (reductionSound5235 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1260 (2 : Fin 6)) = canonicalInput28516.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1260 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5233 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1260 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5233 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28516 hH))).trans (reductionSound5233 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1260 (3 : Fin 6)) = canonicalInput28600.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1260 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5451 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1260 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5451 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28600 hH))).trans (reductionSound5451 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1260 (4 : Fin 6)) = canonicalInput28602.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1260 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8863 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1260 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8863 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28602 hH))).trans (reductionSound8863 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1260 (5 : Fin 6)) = canonicalInput28603.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1260 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7372 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1260 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7372 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28603 hH))).trans (reductionSound7372 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1260 (j : Fin 6)))
    288 1440 ![1440, 1440, 1440, 1440, 1440, 288] ![-288, -288, -288, -288, -288, -1440] (extendRow Arithmetic.row1260) ![reductionProjection5235, reductionProjection5235, reductionProjection5233, reductionProjection5451, reductionProjection8863, reductionProjection7372]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput420 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![2, -1, 1, -2], ![-2, 2, 2, -2]]

theorem rowSound420 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 420) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row420 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row420 H]
  have hshape : boundaryInput420 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput420 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 1440, 1440, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput420 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5863, reductionProjection5857, reductionProjection5857, oldProjection3265, reductionProjection1627, reductionProjection8885] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput420 (0 : Fin 6)) = canonicalInput24123.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput420 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5863 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput420 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5863 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24123 hH))).trans (reductionSound5863 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput420 (1 : Fin 6)) = canonicalInput25551.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput420 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5857 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput420 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5857 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25551 hH))).trans (reductionSound5857 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput420 (2 : Fin 6)) = canonicalInput25858.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput420 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5857 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput420 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5857 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25858 hH))).trans (reductionSound5857 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput420 (3 : Fin 6)) = canonicalInput25887.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput420 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3265 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput420 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3265 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25887 hH))).trans (oldProjectionSound3265 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput420 (4 : Fin 6)) = canonicalInput25893.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput420 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1627 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput420 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1627 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25893 hH))).trans (reductionSound1627 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput420 (5 : Fin 6)) = canonicalInput25894.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput420 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8885 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput420 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8885 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25894 hH))).trans (reductionSound8885 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput420 (j : Fin 6)))
    1440 1440 ![288, 1440, 1440, 1440, 1440, 720] ![-7200, -1440, -1440, -1440, -1440, -2880] (extendRow Arithmetic.row420) ![reductionProjection5863, reductionProjection5857, reductionProjection5857, oldProjection3265, reductionProjection1627, reductionProjection8885]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1164 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 0, -1, 2], ![0, -1, 2, -1], ![-1, 2, 1, -2]]

theorem rowSound1164 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1164) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1164 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1164 H]
  have hshape : boundaryInput1164 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1164 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1164 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8851, reductionProjection8843, reductionProjection8889, reductionProjection8848, reductionProjection5801, reductionProjection8034] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1164 (0 : Fin 6)) = canonicalInput27947.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1164 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8851 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1164 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8851 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27947 hH))).trans (reductionSound8851 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1164 (1 : Fin 6)) = canonicalInput30000.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1164 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8843 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1164 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8843 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30000 hH))).trans (reductionSound8843 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1164 (2 : Fin 6)) = canonicalInput30057.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1164 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8889 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1164 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8889 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30057 hH))).trans (reductionSound8889 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1164 (3 : Fin 6)) = canonicalInput30071.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1164 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8848 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1164 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8848 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30071 hH))).trans (reductionSound8848 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1164 (4 : Fin 6)) = canonicalInput30074.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1164 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5801 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1164 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5801 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30074 hH))).trans (reductionSound5801 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1164 (5 : Fin 6)) = canonicalInput30075.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1164 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8034 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1164 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8034 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30075 hH))).trans (reductionSound8034 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1164 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 288, 1440] ![-1440, -1440, -1440, -1440, -7200, -1440] (extendRow Arithmetic.row1164) ![reductionProjection8851, reductionProjection8843, reductionProjection8889, reductionProjection8848, reductionProjection5801, reductionProjection8034]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1231 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 2, -1, 1], ![1, -3, 2, 0]]

theorem rowSound1231 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1231) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1231 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1231 H]
  have hshape : boundaryInput1231 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1231 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 720, 1440, 720, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1231 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5246, oldProjection1634, reductionProjection8878, reductionProjection8811, reductionProjection1477, reductionProjection5523] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1231 (0 : Fin 6)) = canonicalInput27778.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1231 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5246 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1231 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5246 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27778 hH))).trans (reductionSound5246 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1231 (1 : Fin 6)) = canonicalInput28775.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1231 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1634 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1231 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1634 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28775 hH))).trans (oldProjectionSound1634 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1231 (2 : Fin 6)) = canonicalInput29021.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1231 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8878 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1231 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8878 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29021 hH))).trans (reductionSound8878 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1231 (3 : Fin 6)) = canonicalInput29159.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1231 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8811 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1231 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8811 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29159 hH))).trans (reductionSound8811 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1231 (4 : Fin 6)) = canonicalInput29171.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1231 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1477 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1231 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1477 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29171 hH))).trans (reductionSound1477 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1231 (5 : Fin 6)) = canonicalInput29172.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1231 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5523 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1231 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5523 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29172 hH))).trans (reductionSound5523 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1231 (j : Fin 6)))
    288 1440 ![1440, 720, 1440, 720, 1440, 1440] ![-288, -576, -288, -576, -288, -288] (extendRow Arithmetic.row1231) ![reductionProjection5246, oldProjection1634, reductionProjection8878, reductionProjection8811, reductionProjection1477, reductionProjection5523]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1232 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 2, 1, -1], ![1, -3, 1, 1]]

theorem rowSound1232 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1232) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1232 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1232 H]
  have hshape : boundaryInput1232 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1232 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1232 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5374, oldProjection1739, reductionProjection5523, reductionProjection5365, oldProjection3161, reductionProjection8878] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1232 (0 : Fin 6)) = canonicalInput27773.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1232 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5374 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1232 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5374 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27773 hH))).trans (reductionSound5374 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1232 (1 : Fin 6)) = canonicalInput28770.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1232 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1739 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1232 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1739 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28770 hH))).trans (oldProjectionSound1739 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1232 (2 : Fin 6)) = canonicalInput29014.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1232 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5523 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1232 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5523 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29014 hH))).trans (reductionSound5523 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1232 (3 : Fin 6)) = canonicalInput29153.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1232 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5365 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1232 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5365 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29153 hH))).trans (reductionSound5365 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1232 (4 : Fin 6)) = canonicalInput29160.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1232 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3161 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1232 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3161 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29160 hH))).trans (oldProjectionSound3161 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1232 (5 : Fin 6)) = canonicalInput29161.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1232 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8878 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1232 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8878 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29161 hH))).trans (reductionSound8878 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1232 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 720, 1440] ![-1440, -1440, -1440, -1440, -2880, -1440] (extendRow Arithmetic.row1232) ![reductionProjection5374, oldProjection1739, reductionProjection5523, reductionProjection5365, oldProjection3161, reductionProjection8878]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1233 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, 2, -1, 1], ![1, -2, 2, -1]]

theorem rowSound1233 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1233) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1233 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1233 H]
  have hshape : boundaryInput1233 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1233 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![144, 1440, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1233 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5250, reductionProjection5435, reductionProjection8881, reductionProjection5522, reductionProjection1476, reductionProjection5524] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1233 (0 : Fin 6)) = canonicalInput27767.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1233 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5250 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1233 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5250 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27767 hH))).trans (reductionSound5250 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1233 (1 : Fin 6)) = canonicalInput28764.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1233 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5435 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1233 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5435 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28764 hH))).trans (reductionSound5435 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1233 (2 : Fin 6)) = canonicalInput29003.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1233 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8881 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1233 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8881 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29003 hH))).trans (reductionSound8881 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1233 (3 : Fin 6)) = canonicalInput29135.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1233 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5522 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1233 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5522 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29135 hH))).trans (reductionSound5522 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1233 (4 : Fin 6)) = canonicalInput29143.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1233 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1476 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1233 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1476 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29143 hH))).trans (reductionSound1476 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1233 (5 : Fin 6)) = canonicalInput29144.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1233 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5524 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1233 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5524 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29144 hH))).trans (reductionSound5524 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1233 (j : Fin 6)))
    1440 1440 ![144, 1440, 1440, 1440, 288, 1440] ![-14400, -1440, -1440, -1440, -7200, -1440] (extendRow Arithmetic.row1233) ![reductionProjection5250, reductionProjection5435, reductionProjection8881, reductionProjection5522, reductionProjection1476, reductionProjection5524]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1259 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, -2, 2, 0], ![1, 1, 0, -2], ![-2, 2, 1, -1]]

theorem rowSound1259 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1259) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1259 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1259 H]
  have hshape : boundaryInput1259 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1259 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![144, 144, 1440, 288, 288, 360] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1259 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5865, reductionProjection5865, reductionProjection5861, reductionProjection8864, oldProjection3087, reductionProjection7500] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1259 (0 : Fin 6)) = canonicalInput27678.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1259 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5865 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1259 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5865 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27678 hH))).trans (reductionSound5865 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1259 (1 : Fin 6)) = canonicalInput28176.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1259 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5865 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1259 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5865 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28176 hH))).trans (reductionSound5865 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1259 (2 : Fin 6)) = canonicalInput28513.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1259 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5861 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1259 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5861 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28513 hH))).trans (reductionSound5861 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1259 (3 : Fin 6)) = canonicalInput28585.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1259 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8864 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1259 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8864 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28585 hH))).trans (reductionSound8864 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1259 (4 : Fin 6)) = canonicalInput28588.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1259 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3087 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1259 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3087 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28588 hH))).trans (oldProjectionSound3087 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1259 (5 : Fin 6)) = canonicalInput28589.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1259 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7500 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1259 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7500 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28589 hH))).trans (reductionSound7500 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1259 (j : Fin 6)))
    288 1440 ![144, 144, 1440, 288, 288, 360] ![-2880, -2880, -288, -1440, -1440, -1152] (extendRow Arithmetic.row1259) ![reductionProjection5865, reductionProjection5865, reductionProjection5861, reductionProjection8864, oldProjection3087, reductionProjection7500]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
