import NoFourMUBs.Step2.SOS.Canonical387
import NoFourMUBs.Step2.SOS.Canonical432
import NoFourMUBs.Step2.SOS.Canonical435
import NoFourMUBs.Step2.SOS.Canonical436
import NoFourMUBs.Step2.SOS.Canonical439
import NoFourMUBs.Step2.SOS.Canonical440
import NoFourMUBs.Step2.SOS.Canonical445
import NoFourMUBs.Step2.SOS.Canonical446
import NoFourMUBs.Step2.SOS.Canonical447
import NoFourMUBs.Step2.SOS.Canonical448
import NoFourMUBs.Step2.SOS.Canonical459
import NoFourMUBs.Step2.SOS.Canonical461
import NoFourMUBs.Step2.SOS.Canonical462
import NoFourMUBs.Step2.SOS.Canonical468
import NoFourMUBs.Step2.SOS.Canonical469
import NoFourMUBs.Step2.SOS.Canonical471
import NoFourMUBs.Step2.SOS.Canonical489
import NoFourMUBs.Step2.SOS.Canonical490
import NoFourMUBs.Step2.SOS.Canonical497
import NoFourMUBs.Step2.SOS.Canonical499
import NoFourMUBs.Step2.SOS.Canonical500
import NoFourMUBs.Step2.SOS.Canonical501
import NoFourMUBs.Step2.SOS.Canonical511
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions133
import NoFourMUBs.Step2.SOS.Reductions143
import NoFourMUBs.Step2.SOS.Reductions163
import NoFourMUBs.Step2.SOS.Reductions167
import NoFourMUBs.Step2.SOS.Reductions168
import NoFourMUBs.Step2.SOS.Reductions169
import NoFourMUBs.Step2.SOS.Reductions171
import NoFourMUBs.Step2.SOS.Reductions207
import NoFourMUBs.Step2.SOS.Reductions212
import NoFourMUBs.Step2.SOS.Reductions213
import NoFourMUBs.Step2.SOS.Reductions214
import NoFourMUBs.Step2.SOS.Reductions218
import NoFourMUBs.Step2.SOS.Reductions228
import NoFourMUBs.Step2.SOS.Reductions229
import NoFourMUBs.Step2.SOS.Reductions230

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput1251 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, 0, -1], ![1, 0, 0, -1], ![-2, 3, -1, 0], ![0, -2, 3, -1]]

theorem rowSound1251 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1251) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1251 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1251 H]
  have hshape : boundaryInput1251 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1251 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 720, 1440, 1440, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1251 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4280, reductionProjection4280, oldProjection3128, oldProjection3128, oldProjection3135, reductionProjection6979] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1251 (0 : Fin 6)) = canonicalInput24805.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1251 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4280 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1251 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4280 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24805 hH))).trans (reductionSound4280 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1251 (1 : Fin 6)) = canonicalInput28112.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1251 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4280 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1251 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4280 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28112 hH))).trans (reductionSound4280 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1251 (2 : Fin 6)) = canonicalInput28641.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1251 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection3128 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1251 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection3128 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28641 hH))).trans (oldProjectionSound3128 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1251 (3 : Fin 6)) = canonicalInput28683.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1251 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3128 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1251 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3128 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28683 hH))).trans (oldProjectionSound3128 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1251 (4 : Fin 6)) = canonicalInput28686.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1251 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3135 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1251 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3135 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28686 hH))).trans (oldProjectionSound3135 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1251 (5 : Fin 6)) = canonicalInput28687.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1251 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6979 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1251 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6979 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28687 hH))).trans (reductionSound6979 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1251 (j : Fin 6)))
    1440 1440 ![720, 720, 1440, 1440, 1440, 720] ![-2880, -2880, -1440, -1440, -1440, -2880] (extendRow Arithmetic.row1251) ![reductionProjection4280, reductionProjection4280, oldProjection3128, oldProjection3128, oldProjection3135, reductionProjection6979]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1322 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, -1, 2], ![2, -2, 0, 0], ![-2, 1, 2, -1]]

theorem rowSound1322 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1322) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1322 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1322 H]
  have hshape : boundaryInput1322 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1322 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1322 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1839, reductionProjection5369, reductionProjection5417, reductionProjection5349, reductionProjection5217, reductionProjection7344] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1322 (0 : Fin 6)) = canonicalInput30164.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1322 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1839 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1322 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1839 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30164 hH))).trans (oldProjectionSound1839 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1322 (1 : Fin 6)) = canonicalInput31307.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1322 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5369 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1322 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5369 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31307 hH))).trans (reductionSound5369 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1322 (2 : Fin 6)) = canonicalInput31336.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1322 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5417 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1322 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5417 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31336 hH))).trans (reductionSound5417 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1322 (3 : Fin 6)) = canonicalInput31396.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1322 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5349 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1322 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5349 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31396 hH))).trans (reductionSound5349 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1322 (4 : Fin 6)) = canonicalInput31398.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1322 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5217 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1322 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5217 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31398 hH))).trans (reductionSound5217 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1322 (5 : Fin 6)) = canonicalInput31399.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1322 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7344 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1322 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7344 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31399 hH))).trans (reductionSound7344 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1322 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-1440, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row1322) ![oldProjection1839, reductionProjection5369, reductionProjection5417, reductionProjection5349, reductionProjection5217, reductionProjection7344]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1169 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![-1, 0, 2, -1], ![0, 2, 1, -3]]

theorem rowSound1169 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1169) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1169 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1169 H]
  have hshape : boundaryInput1169 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1169 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![144, 720, 1440, 1440, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1169 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6832, reductionProjection6823, reductionProjection6861, reductionProjection6820, oldProjection2972, reductionProjection7374] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1169 (0 : Fin 6)) = canonicalInput27938.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1169 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6832 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1169 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6832 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27938 hH))).trans (reductionSound6832 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1169 (1 : Fin 6)) = canonicalInput29990.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1169 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6823 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1169 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6823 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29990 hH))).trans (reductionSound6823 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1169 (2 : Fin 6)) = canonicalInput30028.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1169 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6861 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1169 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6861 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30028 hH))).trans (reductionSound6861 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1169 (3 : Fin 6)) = canonicalInput30044.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1169 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6820 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1169 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6820 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30044 hH))).trans (reductionSound6820 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1169 (4 : Fin 6)) = canonicalInput30046.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1169 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2972 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1169 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2972 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30046 hH))).trans (oldProjectionSound2972 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1169 (5 : Fin 6)) = canonicalInput30047.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1169 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7374 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1169 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7374 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30047 hH))).trans (reductionSound7374 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1169 (j : Fin 6)))
    1440 1440 ![144, 720, 1440, 1440, 720, 1440] ![-14400, -2880, -1440, -1440, -2880, -1440] (extendRow Arithmetic.row1169) ![reductionProjection6832, reductionProjection6823, reductionProjection6861, reductionProjection6820, oldProjection2972, reductionProjection7374]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1196 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, 0, 0, 2], ![0, -2, 1, 1], ![0, 1, 2, -3]]

theorem rowSound1196 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1196) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1196 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1196 H]
  have hshape : boundaryInput1196 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1196 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 288, 288, 1440, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1196 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7378, reductionProjection7381, reductionProjection7381, reductionProjection6655, oldProjection2952, reductionProjection7380] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1196 (0 : Fin 6)) = canonicalInput32118.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1196 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7378 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1196 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7378 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32118 hH))).trans (reductionSound7378 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1196 (1 : Fin 6)) = canonicalInput32709.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1196 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7381 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1196 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7381 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32709 hH))).trans (reductionSound7381 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1196 (2 : Fin 6)) = canonicalInput32716.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1196 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7381 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1196 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7381 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32716 hH))).trans (reductionSound7381 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1196 (3 : Fin 6)) = canonicalInput32721.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1196 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6655 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1196 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6655 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32721 hH))).trans (reductionSound6655 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1196 (4 : Fin 6)) = canonicalInput32722.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1196 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2952 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1196 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2952 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32722 hH))).trans (oldProjectionSound2952 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1196 (5 : Fin 6)) = canonicalInput32723.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1196 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7380 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1196 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7380 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32723 hH))).trans (reductionSound7380 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1196 (j : Fin 6)))
    1440 1440 ![720, 288, 288, 1440, 720, 1440] ![-2880, -7200, -7200, -1440, -2880, -1440] (extendRow Arithmetic.row1196) ![reductionProjection7378, reductionProjection7381, reductionProjection7381, reductionProjection6655, oldProjection2952, reductionProjection7380]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1197 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 1, 2, -3]]

theorem rowSound1197 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1197) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1197 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1197 H]
  have hshape : boundaryInput1197 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1197 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 1440, 720, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1197 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7370, reductionProjection7365, reductionProjection7365, oldProjection2952, reductionProjection6648, reductionProjection7372] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1197 (0 : Fin 6)) = canonicalInput32119.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1197 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7370 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1197 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7370 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32119 hH))).trans (reductionSound7370 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1197 (1 : Fin 6)) = canonicalInput32710.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1197 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7365 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1197 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7365 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32710 hH))).trans (reductionSound7365 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1197 (2 : Fin 6)) = canonicalInput32717.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1197 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7365 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1197 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7365 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32717 hH))).trans (reductionSound7365 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1197 (3 : Fin 6)) = canonicalInput32722.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1197 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2952 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1197 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2952 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32722 hH))).trans (oldProjectionSound2952 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1197 (4 : Fin 6)) = canonicalInput32724.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1197 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6648 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1197 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6648 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32724 hH))).trans (reductionSound6648 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1197 (5 : Fin 6)) = canonicalInput32725.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1197 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7372 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1197 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7372 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32725 hH))).trans (reductionSound7372 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1197 (j : Fin 6)))
    1440 1440 ![288, 1440, 1440, 720, 1440, 288] ![-7200, -1440, -1440, -2880, -1440, -7200] (extendRow Arithmetic.row1197) ![reductionProjection7370, reductionProjection7365, reductionProjection7365, oldProjection2952, reductionProjection6648, reductionProjection7372]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1202 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -2, 0, 2], ![1, 0, 2, -3]]

theorem rowSound1202 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1202) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1202 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1202 H]
  have hshape : boundaryInput1202 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1202 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 720, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1202 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7377, reductionProjection7378, reductionProjection7368, reductionProjection4591, reductionProjection6652, reductionProjection7375] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1202 (0 : Fin 6)) = canonicalInput31857.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1202 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7377 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1202 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7377 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31857 hH))).trans (reductionSound7377 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1202 (1 : Fin 6)) = canonicalInput31969.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1202 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7378 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1202 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7378 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31969 hH))).trans (reductionSound7378 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1202 (2 : Fin 6)) = canonicalInput32032.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1202 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7368 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1202 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7368 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32032 hH))).trans (reductionSound7368 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1202 (3 : Fin 6)) = canonicalInput32044.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1202 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4591 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1202 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4591 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32044 hH))).trans (reductionSound4591 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1202 (4 : Fin 6)) = canonicalInput32046.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1202 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6652 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1202 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6652 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32046 hH))).trans (reductionSound6652 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1202 (5 : Fin 6)) = canonicalInput32047.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1202 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7375 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1202 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7375 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32047 hH))).trans (reductionSound7375 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1202 (j : Fin 6)))
    1440 1440 ![1440, 720, 1440, 1440, 1440, 1440] ![-1440, -2880, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row1202) ![reductionProjection7377, reductionProjection7378, reductionProjection7368, reductionProjection4591, reductionProjection6652, reductionProjection7375]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1263 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 2, 0, 0], ![1, -2, 1, 0], ![0, 1, 2, -3]]

theorem rowSound1263 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1263) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1263 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1263 H]
  have hshape : boundaryInput1263 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1263 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 288, 1440, 720, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1263 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7315, reductionProjection7315, reductionProjection7313, reductionProjection5475, reductionProjection6791, reductionProjection7372] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1263 (0 : Fin 6)) = canonicalInput27671.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1263 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7315 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1263 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7315 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27671 hH))).trans (reductionSound7315 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1263 (1 : Fin 6)) = canonicalInput28169.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1263 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7315 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1263 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7315 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28169 hH))).trans (reductionSound7315 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1263 (2 : Fin 6)) = canonicalInput28504.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1263 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7313 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1263 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7313 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28504 hH))).trans (reductionSound7313 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1263 (3 : Fin 6)) = canonicalInput28555.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1263 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5475 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1263 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5475 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28555 hH))).trans (reductionSound5475 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1263 (4 : Fin 6)) = canonicalInput28560.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1263 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6791 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1263 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6791 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28560 hH))).trans (reductionSound6791 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1263 (5 : Fin 6)) = canonicalInput28561.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1263 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7372 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1263 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7372 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28561 hH))).trans (reductionSound7372 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1263 (j : Fin 6)))
    1440 1440 ![288, 288, 288, 1440, 720, 288] ![-7200, -7200, -7200, -1440, -2880, -7200] (extendRow Arithmetic.row1263) ![reductionProjection7315, reductionProjection7315, reductionProjection7313, reductionProjection5475, reductionProjection6791, reductionProjection7372]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1309 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 2, 0, 0], ![1, -2, 0, 1], ![0, 0, 3, -3]]

theorem rowSound1309 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1309) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1309 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1309 H]
  have hshape : boundaryInput1309 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1309 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 144, 1440, 720, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1309 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7326, reductionProjection7327, reductionProjection7324, reductionProjection5380, reductionProjection7323, reductionProjection7390] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1309 (0 : Fin 6)) = canonicalInput27855.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1309 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7326 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1309 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7326 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27855 hH))).trans (reductionSound7326 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1309 (1 : Fin 6)) = canonicalInput29376.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1309 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7327 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1309 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7327 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29376 hH))).trans (reductionSound7327 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1309 (2 : Fin 6)) = canonicalInput29564.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1309 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7324 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1309 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7324 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29564 hH))).trans (reductionSound7324 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1309 (3 : Fin 6)) = canonicalInput29618.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1309 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5380 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1309 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5380 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29618 hH))).trans (reductionSound5380 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1309 (4 : Fin 6)) = canonicalInput29619.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1309 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7323 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1309 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7323 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29619 hH))).trans (reductionSound7323 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1309 (5 : Fin 6)) = canonicalInput29620.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1309 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7390 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1309 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7390 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29620 hH))).trans (reductionSound7390 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1309 (j : Fin 6)))
    1440 1440 ![288, 144, 1440, 720, 1440, 1440] ![-7200, -14400, -1440, -2880, -1440, -1440] (extendRow Arithmetic.row1309) ![reductionProjection7326, reductionProjection7327, reductionProjection7324, reductionProjection5380, reductionProjection7323, reductionProjection7390]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
