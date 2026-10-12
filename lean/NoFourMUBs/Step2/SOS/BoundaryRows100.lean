import NoFourMUBs.Step2.SOS.Canonical316
import NoFourMUBs.Step2.SOS.Canonical377
import NoFourMUBs.Step2.SOS.Canonical408
import NoFourMUBs.Step2.SOS.Canonical432
import NoFourMUBs.Step2.SOS.Canonical435
import NoFourMUBs.Step2.SOS.Canonical436
import NoFourMUBs.Step2.SOS.Canonical437
import NoFourMUBs.Step2.SOS.Canonical440
import NoFourMUBs.Step2.SOS.Canonical441
import NoFourMUBs.Step2.SOS.Canonical443
import NoFourMUBs.Step2.SOS.Canonical445
import NoFourMUBs.Step2.SOS.Canonical446
import NoFourMUBs.Step2.SOS.Canonical447
import NoFourMUBs.Step2.SOS.Canonical459
import NoFourMUBs.Step2.SOS.Canonical462
import NoFourMUBs.Step2.SOS.Canonical463
import NoFourMUBs.Step2.SOS.Canonical468
import NoFourMUBs.Step2.SOS.Canonical501
import NoFourMUBs.Step2.SOS.Canonical511
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions142
import NoFourMUBs.Step2.SOS.Reductions174
import NoFourMUBs.Step2.SOS.Reductions194
import NoFourMUBs.Step2.SOS.Reductions230
import NoFourMUBs.Step2.SOS.Reductions249
import NoFourMUBs.Step2.SOS.Reductions251
import NoFourMUBs.Step2.SOS.Reductions252
import NoFourMUBs.Step2.SOS.Reductions254
import NoFourMUBs.Step2.SOS.Reductions263
import NoFourMUBs.Step2.SOS.Reductions264
import NoFourMUBs.Step2.SOS.Reductions277
import NoFourMUBs.Step2.SOS.Reductions278
import NoFourMUBs.Step2.SOS.Reductions286
import NoFourMUBs.Step2.SOS.Reductions287
import NoFourMUBs.Step2.SOS.Reductions320
import NoFourMUBs.Step2.SOS.Reductions323
import NoFourMUBs.Step2.SOS.Reductions324
import NoFourMUBs.Step2.SOS.Reductions340
import NoFourMUBs.Step2.SOS.Reductions343
import NoFourMUBs.Step2.SOS.Reductions358
import NoFourMUBs.Step2.SOS.Reductions359
import NoFourMUBs.Step2.SOS.Reductions360
import NoFourMUBs.Step2.SOS.Reductions361

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput1332 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -1, 0, 2], ![-1, 2, -1, 0], ![0, -2, 3, -1]]

theorem rowSound1332 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1332) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1332 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1332 H]
  have hshape : boundaryInput1332 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1332 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1332 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9205, reductionProjection11492, reductionProjection9167, reductionProjection10891, reductionProjection10366, reductionProjection7374] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1332 (0 : Fin 6)) = canonicalInput32124.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1332 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9205 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1332 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9205 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32124 hH))).trans (reductionSound9205 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1332 (1 : Fin 6)) = canonicalInput32715.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1332 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11492 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1332 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11492 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32715 hH))).trans (reductionSound11492 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1332 (2 : Fin 6)) = canonicalInput32730.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1332 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9167 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1332 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9167 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32730 hH))).trans (reductionSound9167 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1332 (3 : Fin 6)) = canonicalInput32740.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1332 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10891 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1332 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10891 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32740 hH))).trans (reductionSound10891 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1332 (4 : Fin 6)) = canonicalInput32741.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1332 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10366 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1332 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10366 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32741 hH))).trans (reductionSound10366 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1332 (5 : Fin 6)) = canonicalInput32742.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1332 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7374 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1332 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7374 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32742 hH))).trans (reductionSound7374 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1332 (j : Fin 6)))
    1440 1440 ![1440, 1440, 288, 1440, 1440, 1440] ![-1440, -1440, -7200, -1440, -1440, -1440] (extendRow Arithmetic.row1332) ![reductionProjection9205, reductionProjection11492, reductionProjection9167, reductionProjection10891, reductionProjection10366, reductionProjection7374]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput529 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 0, 1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, 0, -1, 2], ![-1, -1, 3, -1], ![0, 3, -1, -2]]

theorem rowSound529 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 529) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row529 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row529 H]
  have hshape : boundaryInput529 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput529 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 72, 1440, 18, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput529 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection11547, reductionProjection11548, reductionProjection11000, reductionProjection10897, reductionProjection10244, reductionProjection8033] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput529 (0 : Fin 6)) = canonicalInput24167.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput529 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11547 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput529 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11547 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24167 hH))).trans (reductionSound11547 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput529 (1 : Fin 6)) = canonicalInput26156.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput529 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11548 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput529 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11548 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26156 hH))).trans (reductionSound11548 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput529 (2 : Fin 6)) = canonicalInput26161.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput529 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11000 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput529 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11000 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26161 hH))).trans (reductionSound11000 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput529 (3 : Fin 6)) = canonicalInput26162.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput529 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10897 (Normalization.momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst boundaryInput529 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10897 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26162 hH))).trans (reductionSound10897 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput529 (4 : Fin 6)) = canonicalInput26163.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput529 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10244 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput529 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10244 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26163 hH))).trans (reductionSound10244 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput529 (5 : Fin 6)) = canonicalInput26164.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput529 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8033 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput529 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8033 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26164 hH))).trans (reductionSound8033 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput529 (j : Fin 6)))
    1440 1440 ![288, 72, 1440, 18, 1440, 1440] ![-7200, -28800, -1440, -115200, -1440, -1440] (extendRow Arithmetic.row529) ![reductionProjection11547, reductionProjection11548, reductionProjection11000, reductionProjection10897, reductionProjection10244, reductionProjection8033]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput858 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, -1, 2, 0], ![-1, 1, 1, -1], ![1, 1, 0, -2]]

theorem rowSound858 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 858) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row858 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row858 H]
  have hshape : boundaryInput858 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput858 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 720, 720, 1440, 180, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput858 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection11527, reductionProjection11527, reductionProjection11525, reductionProjection11524, reductionProjection8153, reductionProjection11524] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput858 (0 : Fin 6)) = canonicalInput27674.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput858 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11527 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput858 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11527 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27674 hH))).trans (reductionSound11527 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput858 (1 : Fin 6)) = canonicalInput28172.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput858 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11527 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput858 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11527 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28172 hH))).trans (reductionSound11527 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput858 (2 : Fin 6)) = canonicalInput28507.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput858 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11525 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput858 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11525 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28507 hH))).trans (reductionSound11525 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput858 (3 : Fin 6)) = canonicalInput28567.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput858 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11524 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput858 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11524 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28567 hH))).trans (reductionSound11524 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput858 (4 : Fin 6)) = canonicalInput28571.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput858 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8153 (Normalization.momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst boundaryInput858 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8153 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28571 hH))).trans (reductionSound8153 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput858 (5 : Fin 6)) = canonicalInput28572.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput858 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11524 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput858 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11524 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28572 hH))).trans (reductionSound11524 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput858 (j : Fin 6)))
    720 1440 ![720, 720, 720, 1440, 180, 1440] ![-1440, -1440, -1440, -720, -5760, -720] (extendRow Arithmetic.row858) ![reductionProjection11527, reductionProjection11527, reductionProjection11525, reductionProjection11524, reductionProjection8153, reductionProjection11524]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput876 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, 0, 2, -1], ![1, 1, 0, -2]]

theorem rowSound876 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 876) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row876 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row876 H]
  have hshape : boundaryInput876 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput876 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 720, 1440, 288, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput876 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection11471, reductionProjection11494, reductionProjection11463, reductionProjection7986, reductionProjection8074, reductionProjection11528] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput876 (0 : Fin 6)) = canonicalInput27859.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput876 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11471 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput876 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11471 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27859 hH))).trans (reductionSound11471 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput876 (1 : Fin 6)) = canonicalInput29380.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput876 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11494 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput876 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11494 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29380 hH))).trans (reductionSound11494 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput876 (2 : Fin 6)) = canonicalInput29568.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput876 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11463 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput876 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11463 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29568 hH))).trans (reductionSound11463 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput876 (3 : Fin 6)) = canonicalInput29626.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput876 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7986 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput876 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7986 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29626 hH))).trans (reductionSound7986 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput876 (4 : Fin 6)) = canonicalInput29635.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput876 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8074 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput876 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8074 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29635 hH))).trans (reductionSound8074 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput876 (5 : Fin 6)) = canonicalInput29636.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput876 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11528 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput876 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11528 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29636 hH))).trans (reductionSound11528 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput876 (j : Fin 6)))
    720 1440 ![1440, 1440, 720, 1440, 288, 720] ![-720, -720, -1440, -720, -3600, -1440] (extendRow Arithmetic.row876) ![reductionProjection11471, reductionProjection11494, reductionProjection11463, reductionProjection7986, reductionProjection8074, reductionProjection11528]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1296 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, 2, 0, -1], ![1, -1, 2, -2]]

theorem rowSound1296 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1296) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1296 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1296 H]
  have hshape : boundaryInput1296 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1296 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 288, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1296 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10357, reductionProjection10360, reductionProjection10397, reductionProjection5587, reductionProjection8904, reductionProjection11545] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1296 (0 : Fin 6)) = canonicalInput27861.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1296 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10357 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1296 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10357 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27861 hH))).trans (reductionSound10357 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1296 (1 : Fin 6)) = canonicalInput29382.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1296 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10360 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1296 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10360 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29382 hH))).trans (reductionSound10360 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1296 (2 : Fin 6)) = canonicalInput29570.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1296 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10397 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1296 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10397 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29570 hH))).trans (reductionSound10397 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1296 (3 : Fin 6)) = canonicalInput29628.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1296 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5587 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1296 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5587 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29628 hH))).trans (reductionSound5587 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1296 (4 : Fin 6)) = canonicalInput29640.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1296 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8904 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1296 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8904 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29640 hH))).trans (reductionSound8904 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1296 (5 : Fin 6)) = canonicalInput29641.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1296 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11545 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1296 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11545 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29641 hH))).trans (reductionSound11545 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1296 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 288, 720, 1440] ![-1440, -1440, -1440, -7200, -2880, -1440] (extendRow Arithmetic.row1296) ![reductionProjection10357, reductionProjection10360, reductionProjection10397, reductionProjection5587, reductionProjection8904, reductionProjection11545]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1312 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![0, 2, -1, -1], ![-1, 1, 2, -2]]

theorem rowSound1312 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1312) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1312 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1312 H]
  have hshape : boundaryInput1312 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1312 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![144, 1440, 1440, 288, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1312 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10374, reductionProjection10371, reductionProjection10371, reductionProjection8864, oldProjection3087, reductionProjection11524] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1312 (0 : Fin 6)) = canonicalInput27931.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1312 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10374 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1312 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10374 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27931 hH))).trans (reductionSound10374 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1312 (1 : Fin 6)) = canonicalInput29983.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1312 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10371 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1312 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10371 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29983 hH))).trans (reductionSound10371 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1312 (2 : Fin 6)) = canonicalInput30003.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1312 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10371 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1312 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10371 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30003 hH))).trans (reductionSound10371 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1312 (3 : Fin 6)) = canonicalInput30011.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1312 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8864 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1312 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8864 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30011 hH))).trans (reductionSound8864 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1312 (4 : Fin 6)) = canonicalInput30014.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1312 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3087 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1312 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3087 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30014 hH))).trans (oldProjectionSound3087 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1312 (5 : Fin 6)) = canonicalInput30015.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1312 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11524 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1312 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11524 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30015 hH))).trans (reductionSound11524 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1312 (j : Fin 6)))
    1440 1440 ![144, 1440, 1440, 288, 288, 1440] ![-14400, -1440, -1440, -7200, -7200, -1440] (extendRow Arithmetic.row1312) ![reductionProjection10374, reductionProjection10371, reductionProjection10371, reductionProjection8864, oldProjection3087, reductionProjection11524]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput85 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![2, -1, 3, -4]]

theorem rowSound85 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 85) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row85 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row85 H]
  have hshape : boundaryInput85 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput85 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput85 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8423, reductionProjection8423, reductionProjection8437, reductionProjection8461, reductionProjection4552, reductionProjection11565] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput85 (0 : Fin 6)) = canonicalInput20240.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput85 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8423 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput85 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8423 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20240 hH))).trans (reductionSound8423 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput85 (1 : Fin 6)) = canonicalInput27980.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput85 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8423 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput85 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8423 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27980 hH))).trans (reductionSound8423 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput85 (2 : Fin 6)) = canonicalInput28204.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput85 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8437 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput85 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8437 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28204 hH))).trans (reductionSound8437 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput85 (3 : Fin 6)) = canonicalInput28377.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput85 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8461 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput85 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8461 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28377 hH))).trans (reductionSound8461 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput85 (4 : Fin 6)) = canonicalInput28389.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput85 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4552 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput85 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4552 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28389 hH))).trans (reductionSound4552 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput85 (5 : Fin 6)) = canonicalInput28396.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput85 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11565 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput85 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11565 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28396 hH))).trans (reductionSound11565 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput85 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-1440, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row85) ![reductionProjection8423, reductionProjection8423, reductionProjection8437, reductionProjection8461, reductionProjection4552, reductionProjection11565]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput89 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![0, 2, 3, -5]]

theorem rowSound89 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 89) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row89 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row89 H]
  have hshape : boundaryInput89 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput89 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput89 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6233, reductionProjection6233, reductionProjection11551, reductionProjection11563, reductionProjection4557, reductionProjection8461] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput89 (0 : Fin 6)) = canonicalInput20257.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput89 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6233 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput89 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6233 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20257 hH))).trans (reductionSound6233 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput89 (1 : Fin 6)) = canonicalInput27990.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput89 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6233 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput89 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6233 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27990 hH))).trans (reductionSound6233 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput89 (2 : Fin 6)) = canonicalInput28226.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput89 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11551 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput89 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11551 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28226 hH))).trans (reductionSound11551 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput89 (3 : Fin 6)) = canonicalInput28594.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput89 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11563 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput89 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11563 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28594 hH))).trans (reductionSound11563 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput89 (4 : Fin 6)) = canonicalInput28627.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput89 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4557 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput89 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4557 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28627 hH))).trans (reductionSound4557 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput89 (5 : Fin 6)) = canonicalInput28633.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput89 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8461 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput89 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8461 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28633 hH))).trans (reductionSound8461 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput89 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-1440, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row89) ![reductionProjection6233, reductionProjection6233, reductionProjection11551, reductionProjection11563, reductionProjection4557, reductionProjection8461]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
