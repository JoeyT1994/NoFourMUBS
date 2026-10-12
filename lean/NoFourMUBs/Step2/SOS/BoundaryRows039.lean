import NoFourMUBs.Step2.SOS.Canonical420
import NoFourMUBs.Step2.SOS.Canonical432
import NoFourMUBs.Step2.SOS.Canonical433
import NoFourMUBs.Step2.SOS.Canonical435
import NoFourMUBs.Step2.SOS.Canonical439
import NoFourMUBs.Step2.SOS.Canonical440
import NoFourMUBs.Step2.SOS.Canonical443
import NoFourMUBs.Step2.SOS.Canonical444
import NoFourMUBs.Step2.SOS.Canonical445
import NoFourMUBs.Step2.SOS.Canonical448
import NoFourMUBs.Step2.SOS.Canonical449
import NoFourMUBs.Step2.SOS.Canonical452
import NoFourMUBs.Step2.SOS.Canonical453
import NoFourMUBs.Step2.SOS.Canonical454
import NoFourMUBs.Step2.SOS.Canonical458
import NoFourMUBs.Step2.SOS.Canonical459
import NoFourMUBs.Step2.SOS.Canonical461
import NoFourMUBs.Step2.SOS.Canonical462
import NoFourMUBs.Step2.SOS.Canonical463
import NoFourMUBs.Step2.SOS.Canonical472
import NoFourMUBs.Step2.SOS.Canonical485
import NoFourMUBs.Step2.SOS.Canonical486
import NoFourMUBs.Step2.SOS.Canonical492
import NoFourMUBs.Step2.SOS.Canonical494
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions030
import NoFourMUBs.Step2.SOS.Reductions083
import NoFourMUBs.Step2.SOS.Reductions119
import NoFourMUBs.Step2.SOS.Reductions146
import NoFourMUBs.Step2.SOS.Reductions159
import NoFourMUBs.Step2.SOS.Reductions162
import NoFourMUBs.Step2.SOS.Reductions189
import NoFourMUBs.Step2.SOS.Reductions216
import NoFourMUBs.Step2.SOS.Reductions217
import NoFourMUBs.Step2.SOS.Reductions226
import NoFourMUBs.Step2.SOS.Reductions228
import NoFourMUBs.Step2.SOS.Reductions234
import NoFourMUBs.Step2.SOS.Reductions236
import NoFourMUBs.Step2.SOS.Reductions238
import NoFourMUBs.Step2.SOS.Reductions239
import NoFourMUBs.Step2.SOS.Reductions240
import NoFourMUBs.Step2.SOS.Reductions241
import NoFourMUBs.Step2.SOS.Reductions243
import NoFourMUBs.Step2.SOS.Reductions245

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput1134 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, -2, 0, 2], ![2, 0, -1, -1], ![-2, 1, 2, -1]]

theorem rowSound1134 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1134) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1134 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1134 H]
  have hshape : boundaryInput1134 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1134 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 360, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1134 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7668, reductionProjection962, reductionProjection7687, reductionProjection6933, reductionProjection7555, reductionProjection7497] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1134 (0 : Fin 6)) = canonicalInput27758.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1134 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7668 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1134 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7668 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27758 hH))).trans (reductionSound7668 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1134 (1 : Fin 6)) = canonicalInput28755.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1134 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection962 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1134 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection962 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28755 hH))).trans (reductionSound962 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1134 (2 : Fin 6)) = canonicalInput28971.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1134 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7687 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1134 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7687 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28971 hH))).trans (reductionSound7687 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1134 (3 : Fin 6)) = canonicalInput29108.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1134 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6933 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1134 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6933 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29108 hH))).trans (reductionSound6933 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1134 (4 : Fin 6)) = canonicalInput29110.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1134 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7555 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1134 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7555 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29110 hH))).trans (reductionSound7555 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1134 (5 : Fin 6)) = canonicalInput29111.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1134 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7497 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1134 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7497 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29111 hH))).trans (reductionSound7497 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1134 (j : Fin 6)))
    720 1440 ![1440, 288, 360, 1440, 1440, 1440] ![-720, -3600, -2880, -720, -720, -720] (extendRow Arithmetic.row1134) ![reductionProjection7668, reductionProjection962, reductionProjection7687, reductionProjection6933, reductionProjection7555, reductionProjection7497]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1136 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![1, 1, -1, -1], ![1, -2, 2, -1]]

theorem rowSound1136 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1136) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1136 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1136 H]
  have hshape : boundaryInput1136 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1136 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 288, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1136 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7667, oldProjection1848, reductionProjection7685, reductionProjection6932, reductionProjection7686, reductionProjection7507] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1136 (0 : Fin 6)) = canonicalInput27732.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1136 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7667 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1136 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7667 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27732 hH))).trans (reductionSound7667 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1136 (1 : Fin 6)) = canonicalInput28725.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1136 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1848 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1136 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1848 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28725 hH))).trans (oldProjectionSound1848 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1136 (2 : Fin 6)) = canonicalInput28934.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1136 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7685 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1136 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7685 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28934 hH))).trans (reductionSound7685 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1136 (3 : Fin 6)) = canonicalInput29034.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1136 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6932 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1136 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6932 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29034 hH))).trans (reductionSound6932 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1136 (4 : Fin 6)) = canonicalInput29041.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1136 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7686 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1136 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7686 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29041 hH))).trans (reductionSound7686 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1136 (5 : Fin 6)) = canonicalInput29042.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1136 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7507 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1136 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7507 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29042 hH))).trans (reductionSound7507 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1136 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 288, 1440, 720] ![-1440, -1440, -1440, -7200, -1440, -2880] (extendRow Arithmetic.row1136) ![reductionProjection7667, oldProjection1848, reductionProjection7685, reductionProjection6932, reductionProjection7686, reductionProjection7507]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1162 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 0, 0, 2], ![0, 1, 1, -2], ![1, -1, 2, -2]]

theorem rowSound1162 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1162) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1162 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1162 H]
  have hshape : boundaryInput1162 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1162 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 720, 1440, 288, 180] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1162 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7674, reductionProjection7696, reductionProjection7700, reductionProjection6953, oldProjection3041, reductionProjection7488] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1162 (0 : Fin 6)) = canonicalInput27843.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1162 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7674 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1162 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7674 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27843 hH))).trans (reductionSound7674 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1162 (1 : Fin 6)) = canonicalInput29364.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1162 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7696 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1162 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7696 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29364 hH))).trans (reductionSound7696 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1162 (2 : Fin 6)) = canonicalInput29551.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1162 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7700 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1162 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7700 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29551 hH))).trans (reductionSound7700 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1162 (3 : Fin 6)) = canonicalInput29585.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1162 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6953 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1162 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6953 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29585 hH))).trans (reductionSound6953 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1162 (4 : Fin 6)) = canonicalInput29587.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1162 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3041 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1162 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3041 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29587 hH))).trans (oldProjectionSound3041 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1162 (5 : Fin 6)) = canonicalInput29588.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1162 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7488 (Normalization.momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1162 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7488 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29588 hH))).trans (reductionSound7488 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1162 (j : Fin 6)))
    144 1440 ![1440, 288, 720, 1440, 288, 180] ![-144, -720, -288, -144, -720, -1152] (extendRow Arithmetic.row1162) ![reductionProjection7674, reductionProjection7696, reductionProjection7700, reductionProjection6953, oldProjection3041, reductionProjection7488]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput534 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 0, 0, 2], ![0, 2, -3, 1], ![1, -2, 2, -1]]

theorem rowSound534 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 534) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row534 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row534 H]
  have hshape : boundaryInput534 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput534 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 720, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput534 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7300, reductionProjection2659, reductionProjection7303, reductionProjection4684, reductionProjection7732, reductionProjection7306] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput534 (0 : Fin 6)) = canonicalInput26899.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput534 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7300 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput534 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7300 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26899 hH))).trans (reductionSound7300 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput534 (1 : Fin 6)) = canonicalInput31167.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput534 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2659 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput534 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2659 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31167 hH))).trans (reductionSound2659 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput534 (2 : Fin 6)) = canonicalInput31528.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput534 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7303 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput534 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7303 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31528 hH))).trans (reductionSound7303 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput534 (3 : Fin 6)) = canonicalInput31668.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput534 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4684 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput534 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4684 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31668 hH))).trans (reductionSound4684 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput534 (4 : Fin 6)) = canonicalInput31669.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput534 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7732 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput534 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7732 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31669 hH))).trans (reductionSound7732 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput534 (5 : Fin 6)) = canonicalInput31670.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput534 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7306 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput534 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7306 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31670 hH))).trans (reductionSound7306 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput534 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 720, 1440, 1440] ![-1440, -1440, -1440, -2880, -1440, -1440] (extendRow Arithmetic.row534) ![reductionProjection7300, reductionProjection2659, reductionProjection7303, reductionProjection4684, reductionProjection7732, reductionProjection7306]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput799 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 0, 2, 0], ![2, -2, 1, -1]]

theorem rowSound799 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 799) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row799 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row799 H]
  have hshape : boundaryInput799 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput799 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 720, 720, 288, 360] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput799 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7718, reductionProjection7718, oldProjection3098, oldProjection3098, reductionProjection6078, oldProjection3168] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput799 (0 : Fin 6)) = canonicalInput27648.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput799 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7718 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput799 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7718 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27648 hH))).trans (reductionSound7718 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput799 (1 : Fin 6)) = canonicalInput28150.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput799 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7718 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput799 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7718 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28150 hH))).trans (reductionSound7718 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput799 (2 : Fin 6)) = canonicalInput28393.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput799 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection3098 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput799 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection3098 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28393 hH))).trans (oldProjectionSound3098 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput799 (3 : Fin 6)) = canonicalInput28437.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput799 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3098 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput799 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3098 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28437 hH))).trans (oldProjectionSound3098 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput799 (4 : Fin 6)) = canonicalInput28447.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput799 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6078 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput799 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6078 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28447 hH))).trans (reductionSound6078 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput799 (5 : Fin 6)) = canonicalInput28448.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput799 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3168 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput799 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3168 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28448 hH))).trans (oldProjectionSound3168 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput799 (j : Fin 6)))
    1440 1440 ![288, 288, 720, 720, 288, 360] ![-7200, -7200, -2880, -2880, -7200, -5760] (extendRow Arithmetic.row799) ![reductionProjection7718, reductionProjection7718, oldProjection3098, oldProjection3098, reductionProjection6078, oldProjection3168]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput860 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 0, 2, 0], ![0, 2, 0, -2], ![1, -1, 1, -1]]

theorem rowSound860 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 860) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row860 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row860 H]
  have hshape : boundaryInput860 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput860 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 720, 18, 360, 360, 72] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput860 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7719, reductionProjection7719, reductionProjection7715, reductionProjection7638, reductionProjection7638, oldProjection3157] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput860 (0 : Fin 6)) = canonicalInput27664.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput860 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7719 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput860 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7719 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27664 hH))).trans (reductionSound7719 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput860 (1 : Fin 6)) = canonicalInput28162.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput860 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7719 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput860 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7719 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28162 hH))).trans (reductionSound7719 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput860 (2 : Fin 6)) = canonicalInput28497.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput860 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7715 (Normalization.momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst boundaryInput860 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7715 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28497 hH))).trans (reductionSound7715 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput860 (3 : Fin 6)) = canonicalInput28536.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput860 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7638 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput860 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7638 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28536 hH))).trans (reductionSound7638 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput860 (4 : Fin 6)) = canonicalInput28539.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput860 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7638 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput860 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7638 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28539 hH))).trans (reductionSound7638 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput860 (5 : Fin 6)) = canonicalInput28540.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput860 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3157 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput860 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3157 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28540 hH))).trans (oldProjectionSound3157 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput860 (j : Fin 6)))
    180 720 ![720, 720, 18, 360, 360, 72] ![-180, -180, -7200, -360, -360, -1800] (extendRow Arithmetic.row860) ![reductionProjection7719, reductionProjection7719, reductionProjection7715, reductionProjection7638, reductionProjection7638, oldProjection3157]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput648 : Matrix (Fin 7) (Fin 5) ℤ := ![![0, 0, 0, -1, 1], ![0, 0, 0, 1, -1], ![0, 0, 1, -1, 0], ![0, 0, 1, 0, -1], ![-1, 2, 0, 0, -1], ![-1, -1, -1, 2, 1], ![2, -1, -1, -1, 1]]

theorem rowSound648 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 648) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row648 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row648 H]
  have hshape : boundaryInput648 0 = Pi.single (4 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput648 4 3 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![576, 288, 2880, 2880, 2880, 144] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput648 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection3828, reductionProjection7799, reductionProjection5096, reductionProjection5187, reductionProjection7248, reductionProjection7797] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput648 (0 : Fin 6)) = canonicalInput30234.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput648 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3828 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput648 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3828 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound30234 hH))).trans (reductionSound3828 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput648 (1 : Fin 6)) = canonicalInput31066.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput648 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7799 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput648 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7799 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound31066 hH))).trans (reductionSound7799 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput648 (2 : Fin 6)) = canonicalInput31070.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput648 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5096 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput648 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5096 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound31070 hH))).trans (reductionSound5096 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput648 (3 : Fin 6)) = canonicalInput31076.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput648 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5187 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput648 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5187 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound31076 hH))).trans (reductionSound5187 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput648 (4 : Fin 6)) = canonicalInput31077.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput648 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7248 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput648 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7248 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound31077 hH))).trans (reductionSound7248 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput648 (5 : Fin 6)) = canonicalInput31078.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput648 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7797 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput648 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7797 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound31078 hH))).trans (reductionSound7797 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput648 (j : Fin 6)))
    2880 2880 ![576, 288, 2880, 2880, 2880, 144] ![-14400, -28800, -2880, -2880, -2880, -57600] (extendRow Arithmetic.row648) ![reductionProjection3828, reductionProjection7799, reductionProjection5096, reductionProjection5187, reductionProjection7248, reductionProjection7797]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput366 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![1, 1, 2, -4]]

theorem rowSound366 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 366) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row366 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row366 H]
  have hshape : boundaryInput366 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput366 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 18, 18, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput366 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7862, reductionProjection7863, reductionProjection7863, oldProjection3151, oldProjection3151, reductionProjection7869] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput366 (0 : Fin 6)) = canonicalInput27872.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput366 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7862 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput366 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7862 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27872 hH))).trans (reductionSound7862 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput366 (1 : Fin 6)) = canonicalInput29393.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput366 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7863 (Normalization.momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst boundaryInput366 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7863 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29393 hH))).trans (reductionSound7863 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput366 (2 : Fin 6)) = canonicalInput29677.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput366 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7863 (Normalization.momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst boundaryInput366 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7863 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29677 hH))).trans (reductionSound7863 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput366 (3 : Fin 6)) = canonicalInput29681.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput366 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3151 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput366 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3151 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29681 hH))).trans (oldProjectionSound3151 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput366 (4 : Fin 6)) = canonicalInput29683.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput366 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3151 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput366 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3151 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29683 hH))).trans (oldProjectionSound3151 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput366 (5 : Fin 6)) = canonicalInput29684.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput366 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7869 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput366 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7869 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29684 hH))).trans (reductionSound7869 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput366 (j : Fin 6)))
    288 1440 ![288, 18, 18, 1440, 1440, 1440] ![-1440, -23040, -23040, -288, -288, -288] (extendRow Arithmetic.row366) ![reductionProjection7862, reductionProjection7863, reductionProjection7863, oldProjection3151, oldProjection3151, reductionProjection7869]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
