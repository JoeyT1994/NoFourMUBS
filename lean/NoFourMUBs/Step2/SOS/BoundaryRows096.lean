import NoFourMUBs.Step2.SOS.Canonical244
import NoFourMUBs.Step2.SOS.Canonical245
import NoFourMUBs.Step2.SOS.Canonical247
import NoFourMUBs.Step2.SOS.Canonical248
import NoFourMUBs.Step2.SOS.Canonical389
import NoFourMUBs.Step2.SOS.Canonical390
import NoFourMUBs.Step2.SOS.Canonical391
import NoFourMUBs.Step2.SOS.Canonical392
import NoFourMUBs.Step2.SOS.Canonical393
import NoFourMUBs.Step2.SOS.Canonical394
import NoFourMUBs.Step2.SOS.Canonical395
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions096
import NoFourMUBs.Step2.SOS.Reductions099
import NoFourMUBs.Step2.SOS.Reductions104
import NoFourMUBs.Step2.SOS.Reductions114
import NoFourMUBs.Step2.SOS.Reductions118
import NoFourMUBs.Step2.SOS.Reductions126
import NoFourMUBs.Step2.SOS.Reductions150
import NoFourMUBs.Step2.SOS.Reductions151
import NoFourMUBs.Step2.SOS.Reductions152
import NoFourMUBs.Step2.SOS.Reductions153
import NoFourMUBs.Step2.SOS.Reductions156
import NoFourMUBs.Step2.SOS.Reductions160
import NoFourMUBs.Step2.SOS.Reductions184
import NoFourMUBs.Step2.SOS.Reductions185
import NoFourMUBs.Step2.SOS.Reductions219
import NoFourMUBs.Step2.SOS.Reductions227
import NoFourMUBs.Step2.SOS.Reductions242
import NoFourMUBs.Step2.SOS.Reductions257
import NoFourMUBs.Step2.SOS.Reductions318
import NoFourMUBs.Step2.SOS.Reductions322
import NoFourMUBs.Step2.SOS.Reductions338
import NoFourMUBs.Step2.SOS.Reductions339
import NoFourMUBs.Step2.SOS.Reductions347
import NoFourMUBs.Step2.SOS.Reductions351
import NoFourMUBs.Step2.SOS.Reductions352
import NoFourMUBs.Step2.SOS.Reductions353

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput611 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 0, 2, 0, -1], ![1, 1, 0, -2, 0], ![1, 1, -1, 1, -2]]

theorem rowSound611 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 611) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row611 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row611 H]
  have hshape : boundaryInput611 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput611 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![576, 576, 2880, 2880, 576, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput611 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7295, reductionProjection7295, reductionProjection7288, reductionProjection5010, reductionProjection10844, reductionProjection11233] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput611 (0 : Fin 6)) = canonicalInput15677.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput611 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7295 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput611 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7295 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15677 hH))).trans (reductionSound7295 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput611 (1 : Fin 6)) = canonicalInput24923.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput611 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7295 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput611 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7295 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24923 hH))).trans (reductionSound7295 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput611 (2 : Fin 6)) = canonicalInput25020.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput611 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7288 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput611 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7288 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25020 hH))).trans (reductionSound7288 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput611 (3 : Fin 6)) = canonicalInput25038.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput611 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5010 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput611 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5010 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25038 hH))).trans (reductionSound5010 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput611 (4 : Fin 6)) = canonicalInput25048.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput611 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10844 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput611 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10844 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25048 hH))).trans (reductionSound10844 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput611 (5 : Fin 6)) = canonicalInput25051.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput611 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11233 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput611 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11233 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25051 hH))).trans (reductionSound11233 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput611 (j : Fin 6)))
    2880 2880 ![576, 576, 2880, 2880, 576, 720] ![-14400, -14400, -2880, -2880, -14400, -11520] (extendRow Arithmetic.row611) ![reductionProjection7295, reductionProjection7295, reductionProjection7288, reductionProjection5010, reductionProjection10844, reductionProjection11233]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput583 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![-1, 1, 0, 1, -1], ![1, 1, 0, 0, -2], ![1, -1, 2, -2, 0]]

theorem rowSound583 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 583) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row583 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row583 H]
  have hshape : boundaryInput583 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput583 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 2880, 576, 2880, 1440, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput583 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5902, reductionProjection5923, reductionProjection5928, reductionProjection3337, reductionProjection10176, reductionProjection11277] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput583 (0 : Fin 6)) = canonicalInput15839.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput583 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5902 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput583 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5902 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15839 hH))).trans (reductionSound5902 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput583 (1 : Fin 6)) = canonicalInput24944.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput583 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5923 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput583 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5923 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24944 hH))).trans (reductionSound5923 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput583 (2 : Fin 6)) = canonicalInput25114.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput583 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5928 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput583 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5928 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25114 hH))).trans (reductionSound5928 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput583 (3 : Fin 6)) = canonicalInput25158.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput583 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3337 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput583 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3337 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25158 hH))).trans (reductionSound3337 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput583 (4 : Fin 6)) = canonicalInput25173.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput583 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10176 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput583 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10176 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25173 hH))).trans (reductionSound10176 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput583 (5 : Fin 6)) = canonicalInput25175.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput583 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11277 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput583 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11277 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25175 hH))).trans (reductionSound11277 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput583 (j : Fin 6)))
    2880 2880 ![2880, 2880, 576, 2880, 1440, 2880] ![-2880, -2880, -14400, -2880, -5760, -2880] (extendRow Arithmetic.row583) ![reductionProjection5902, reductionProjection5923, reductionProjection5928, reductionProjection3337, reductionProjection10176, reductionProjection11277]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput594 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![-1, 1, 1, -1, 0], ![1, 1, 0, 0, -2], ![1, -1, -1, 2, -1]]

theorem rowSound594 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 594) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row594 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row594 H]
  have hshape : boundaryInput594 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput594 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 576, 2880, 2880, 576, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput594 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4855, reductionProjection4866, reductionProjection4838, reductionProjection4832, reductionProjection10325, reductionProjection11289] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput594 (0 : Fin 6)) = canonicalInput15857.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput594 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4855 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput594 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4855 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15857 hH))).trans (reductionSound4855 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput594 (1 : Fin 6)) = canonicalInput24962.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput594 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4866 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput594 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4866 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24962 hH))).trans (reductionSound4866 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput594 (2 : Fin 6)) = canonicalInput25132.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput594 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4838 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput594 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4838 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25132 hH))).trans (reductionSound4838 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput594 (3 : Fin 6)) = canonicalInput25206.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput594 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4832 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput594 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4832 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25206 hH))).trans (reductionSound4832 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput594 (4 : Fin 6)) = canonicalInput25221.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput594 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10325 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput594 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10325 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25221 hH))).trans (reductionSound10325 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput594 (5 : Fin 6)) = canonicalInput25223.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput594 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11289 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput594 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11289 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25223 hH))).trans (reductionSound11289 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput594 (j : Fin 6)))
    2880 2880 ![2880, 576, 2880, 2880, 576, 1440] ![-2880, -14400, -2880, -2880, -14400, -5760] (extendRow Arithmetic.row594) ![reductionProjection4855, reductionProjection4866, reductionProjection4838, reductionProjection4832, reductionProjection10325, reductionProjection11289]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput620 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![1, 0, -1, 0, 0], ![-1, 0, -1, 2, 0], ![0, 1, 1, 0, -2], ![1, 1, 1, -2, -1]]

theorem rowSound620 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 620) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row620 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row620 H]
  have hshape : boundaryInput620 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput620 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 2880, 2880, 1440, 2880, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput620 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8251, reductionProjection8251, reductionProjection10868, reductionProjection4061, reductionProjection4905, reductionProjection11266] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput620 (0 : Fin 6)) = canonicalInput15689.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput620 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8251 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput620 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8251 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15689 hH))).trans (reductionSound8251 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput620 (1 : Fin 6)) = canonicalInput24935.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput620 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8251 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput620 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8251 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24935 hH))).trans (reductionSound8251 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput620 (2 : Fin 6)) = canonicalInput25032.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput620 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10868 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput620 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10868 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25032 hH))).trans (reductionSound10868 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput620 (3 : Fin 6)) = canonicalInput25081.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput620 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4061 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput620 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4061 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25081 hH))).trans (reductionSound4061 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput620 (4 : Fin 6)) = canonicalInput25083.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput620 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4905 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput620 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4905 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25083 hH))).trans (reductionSound4905 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput620 (5 : Fin 6)) = canonicalInput25084.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput620 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11266 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput620 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11266 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25084 hH))).trans (reductionSound11266 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput620 (j : Fin 6)))
    2880 2880 ![2880, 2880, 2880, 1440, 2880, 1440] ![-2880, -2880, -2880, -5760, -2880, -5760] (extendRow Arithmetic.row620) ![reductionProjection8251, reductionProjection8251, reductionProjection10868, reductionProjection4061, reductionProjection4905, reductionProjection11266]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput593 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![-1, 1, 1, -1, 0], ![0, 1, 0, 1, -2], ![2, -1, -1, 1, -1]]

theorem rowSound593 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 593) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row593 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row593 H]
  have hshape : boundaryInput593 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput593 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 2880, 2880, 2880, 720, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput593 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4846, reductionProjection4863, reductionProjection4838, reductionProjection4818, reductionProjection5133, reductionProjection11322] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput593 (0 : Fin 6)) = canonicalInput15856.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput593 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4846 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput593 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4846 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15856 hH))).trans (reductionSound4846 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput593 (1 : Fin 6)) = canonicalInput24961.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput593 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4863 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput593 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4863 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24961 hH))).trans (reductionSound4863 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput593 (2 : Fin 6)) = canonicalInput25131.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput593 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4838 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput593 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4838 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25131 hH))).trans (reductionSound4838 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput593 (3 : Fin 6)) = canonicalInput25205.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput593 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4818 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput593 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4818 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25205 hH))).trans (reductionSound4818 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput593 (4 : Fin 6)) = canonicalInput25220.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput593 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5133 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput593 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5133 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25220 hH))).trans (reductionSound5133 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput593 (5 : Fin 6)) = canonicalInput25222.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput593 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11322 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput593 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11322 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25222 hH))).trans (reductionSound11322 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput593 (j : Fin 6)))
    576 2880 ![2880, 2880, 2880, 2880, 720, 2880] ![-576, -576, -576, -576, -2304, -576] (extendRow Arithmetic.row593) ![reductionProjection4846, reductionProjection4863, reductionProjection4838, reductionProjection4818, reductionProjection5133, reductionProjection11322]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput615 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 1, -1, 1, 0], ![2, 0, 0, 0, -2], ![0, 1, 2, -2, -1]]

theorem rowSound615 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 615) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row615 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row615 H]
  have hshape : boundaryInput615 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput615 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 2880, 2880, 2880, 2880, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput615 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4049, reductionProjection4049, reductionProjection4036, reductionProjection4044, reductionProjection11320, reductionProjection3798] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput615 (0 : Fin 6)) = canonicalInput15679.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput615 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4049 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput615 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4049 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15679 hH))).trans (reductionSound4049 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput615 (1 : Fin 6)) = canonicalInput24925.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput615 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4049 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput615 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4049 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24925 hH))).trans (reductionSound4049 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput615 (2 : Fin 6)) = canonicalInput25022.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput615 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4036 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput615 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4036 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25022 hH))).trans (reductionSound4036 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput615 (3 : Fin 6)) = canonicalInput25040.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput615 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4044 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput615 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4044 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25040 hH))).trans (reductionSound4044 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput615 (4 : Fin 6)) = canonicalInput25053.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput615 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11320 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput615 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11320 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25053 hH))).trans (reductionSound11320 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput615 (5 : Fin 6)) = canonicalInput25055.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput615 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3798 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput615 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3798 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25055 hH))).trans (reductionSound3798 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput615 (j : Fin 6)))
    576 2880 ![2880, 2880, 2880, 2880, 2880, 2880] ![-576, -576, -576, -576, -576, -576] (extendRow Arithmetic.row615) ![reductionProjection4049, reductionProjection4049, reductionProjection4036, reductionProjection4044, reductionProjection11320, reductionProjection3798]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput641 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, 0, -2, 1], ![-1, 1, 2, 0, -2], ![2, 0, -1, 1, -2]]

theorem rowSound641 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 641) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row641 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row641 H]
  have hshape : boundaryInput641 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput641 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 2880, 36, 2880, 576, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput641 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection3185, reductionProjection3185, reductionProjection3678, reductionProjection3101, reductionProjection3089, reductionProjection11326] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput641 (0 : Fin 6)) = canonicalInput15683.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput641 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3185 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput641 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3185 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15683 hH))).trans (reductionSound3185 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput641 (1 : Fin 6)) = canonicalInput24929.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput641 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3185 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput641 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3185 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24929 hH))).trans (reductionSound3185 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput641 (2 : Fin 6)) = canonicalInput25026.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput641 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3678 (Normalization.momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst boundaryInput641 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3678 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25026 hH))).trans (reductionSound3678 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput641 (3 : Fin 6)) = canonicalInput25057.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput641 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3101 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput641 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3101 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25057 hH))).trans (reductionSound3101 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput641 (4 : Fin 6)) = canonicalInput25067.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput641 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3089 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput641 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3089 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25067 hH))).trans (reductionSound3089 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput641 (5 : Fin 6)) = canonicalInput25069.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput641 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11326 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput641 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11326 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25069 hH))).trans (reductionSound11326 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput641 (j : Fin 6)))
    576 2880 ![2880, 2880, 36, 2880, 576, 2880] ![-576, -576, -46080, -576, -2880, -576] (extendRow Arithmetic.row641) ![reductionProjection3185, reductionProjection3185, reductionProjection3678, reductionProjection3101, reductionProjection3089, reductionProjection11326]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput651 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![1, -1, 0, 0, 0], ![-1, 1, -1, 1, 0], ![0, 0, 2, -3, 1], ![1, 1, 0, 1, -3]]

theorem rowSound651 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 651) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row651 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row651 H]
  have hshape : boundaryInput651 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput651 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 2880, 2880, 576, 576, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput651 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7039, reductionProjection7015, reductionProjection11135, reductionProjection5002, reductionProjection7775, reductionProjection11316] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput651 (0 : Fin 6)) = canonicalInput15929.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput651 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7039 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput651 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7039 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15929 hH))).trans (reductionSound7039 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput651 (1 : Fin 6)) = canonicalInput24997.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput651 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7015 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput651 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7015 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24997 hH))).trans (reductionSound7015 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput651 (2 : Fin 6)) = canonicalInput25296.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput651 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11135 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput651 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11135 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25296 hH))).trans (reductionSound11135 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput651 (3 : Fin 6)) = canonicalInput25334.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput651 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5002 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput651 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5002 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25334 hH))).trans (reductionSound5002 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput651 (4 : Fin 6)) = canonicalInput25336.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput651 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7775 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput651 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7775 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25336 hH))).trans (reductionSound7775 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput651 (5 : Fin 6)) = canonicalInput25338.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput651 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11316 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput651 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11316 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25338 hH))).trans (reductionSound11316 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput651 (j : Fin 6)))
    2880 2880 ![2880, 2880, 2880, 576, 576, 2880] ![-2880, -2880, -2880, -14400, -14400, -2880] (extendRow Arithmetic.row651) ![reductionProjection7039, reductionProjection7015, reductionProjection11135, reductionProjection5002, reductionProjection7775, reductionProjection11316]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
