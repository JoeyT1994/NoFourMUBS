import NoFourMUBs.Step2.SOS.Canonical376
import NoFourMUBs.Step2.SOS.Canonical381
import NoFourMUBs.Step2.SOS.Canonical386
import NoFourMUBs.Step2.SOS.Canonical387
import NoFourMUBs.Step2.SOS.Canonical388
import NoFourMUBs.Step2.SOS.Canonical399
import NoFourMUBs.Step2.SOS.Canonical404
import NoFourMUBs.Step2.SOS.Canonical412
import NoFourMUBs.Step2.SOS.Canonical414
import NoFourMUBs.Step2.SOS.Canonical433
import NoFourMUBs.Step2.SOS.Canonical435
import NoFourMUBs.Step2.SOS.Canonical438
import NoFourMUBs.Step2.SOS.Canonical439
import NoFourMUBs.Step2.SOS.Canonical440
import NoFourMUBs.Step2.SOS.Canonical441
import NoFourMUBs.Step2.SOS.Canonical445
import NoFourMUBs.Step2.SOS.Canonical447
import NoFourMUBs.Step2.SOS.Canonical448
import NoFourMUBs.Step2.SOS.Canonical452
import NoFourMUBs.Step2.SOS.Canonical453
import NoFourMUBs.Step2.SOS.Canonical460
import NoFourMUBs.Step2.SOS.Canonical462
import NoFourMUBs.Step2.SOS.Canonical463
import NoFourMUBs.Step2.SOS.Canonical464
import NoFourMUBs.Step2.SOS.Canonical465
import NoFourMUBs.Step2.SOS.Canonical471
import NoFourMUBs.Step2.SOS.Canonical491
import NoFourMUBs.Step2.SOS.Canonical492
import NoFourMUBs.Step2.SOS.Canonical493
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections026
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions118
import NoFourMUBs.Step2.SOS.Reductions127
import NoFourMUBs.Step2.SOS.Reductions134
import NoFourMUBs.Step2.SOS.Reductions148
import NoFourMUBs.Step2.SOS.Reductions170
import NoFourMUBs.Step2.SOS.Reductions178
import NoFourMUBs.Step2.SOS.Reductions192
import NoFourMUBs.Step2.SOS.Reductions204
import NoFourMUBs.Step2.SOS.Reductions208
import NoFourMUBs.Step2.SOS.Reductions214
import NoFourMUBs.Step2.SOS.Reductions215
import NoFourMUBs.Step2.SOS.Reductions238
import NoFourMUBs.Step2.SOS.Reductions240
import NoFourMUBs.Step2.SOS.Reductions254
import NoFourMUBs.Step2.SOS.Reductions259
import NoFourMUBs.Step2.SOS.Reductions260
import NoFourMUBs.Step2.SOS.Reductions261
import NoFourMUBs.Step2.SOS.Reductions262
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical263
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical289

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput916 : Matrix (Fin 7) (Fin 3) ℤ := ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![-2, 0, 2], ![1, 1, -2], ![0, 3, -3]]

theorem rowSound916 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 916) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row916 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row916 H]
  have hshape : boundaryInput916 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput916 2 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![480, 480, 480, 480, 480, 240] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput916 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8293, reductionProjection8293, reductionProjection8300, reductionProjection6149, oldProjection2132, oldProjection2130] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput916 (0 : Fin 6)) = canonicalInput24390.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput916 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8293 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput916 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8293 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound24390 hH))).trans (reductionSound8293 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput916 (1 : Fin 6)) = canonicalInput26411.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput916 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8293 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput916 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8293 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26411 hH))).trans (reductionSound8293 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput916 (2 : Fin 6)) = canonicalInput26497.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput916 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8300 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput916 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8300 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26497 hH))).trans (reductionSound8300 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput916 (3 : Fin 6)) = canonicalInput26508.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput916 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6149 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput916 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6149 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26508 hH))).trans (reductionSound6149 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput916 (4 : Fin 6)) = canonicalInput26512.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput916 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2132 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput916 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2132 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26512 hH))).trans (oldProjectionSound2132 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput916 (5 : Fin 6)) = canonicalInput26513.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput916 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2130 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput916 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2130 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26513 hH))).trans (oldProjectionSound2130 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput916 (j : Fin 6)))
    480 480 ![480, 480, 480, 480, 480, 240] ![-480, -480, -480, -480, -480, -960] (extendRow Arithmetic.row916) ![reductionProjection8293, reductionProjection8293, reductionProjection8300, reductionProjection6149, oldProjection2132, oldProjection2130]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1138 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 0, 2, 0], ![1, 1, 0, -2], ![1, -2, -1, 2]]

theorem rowSound1138 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1138) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1138 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1138 H]
  have hshape : boundaryInput1138 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1138 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 1440, 720, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1138 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8328, reductionProjection3793, reductionProjection7686, reductionProjection5446, reductionProjection7685, reductionProjection8330] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1138 (0 : Fin 6)) = canonicalInput27737.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1138 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8328 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1138 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8328 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27737 hH))).trans (reductionSound8328 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1138 (1 : Fin 6)) = canonicalInput28731.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1138 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3793 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1138 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3793 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28731 hH))).trans (reductionSound3793 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1138 (2 : Fin 6)) = canonicalInput28939.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1138 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7686 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1138 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7686 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28939 hH))).trans (reductionSound7686 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1138 (3 : Fin 6)) = canonicalInput29048.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1138 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5446 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1138 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5446 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29048 hH))).trans (reductionSound5446 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1138 (4 : Fin 6)) = canonicalInput29051.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1138 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7685 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1138 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7685 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29051 hH))).trans (reductionSound7685 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1138 (5 : Fin 6)) = canonicalInput29052.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1138 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8330 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1138 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8330 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29052 hH))).trans (reductionSound8330 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1138 (j : Fin 6)))
    1440 1440 ![288, 288, 1440, 720, 1440, 720] ![-7200, -7200, -1440, -2880, -1440, -2880] (extendRow Arithmetic.row1138) ![reductionProjection8328, reductionProjection3793, reductionProjection7686, reductionProjection5446, reductionProjection7685, reductionProjection8330]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1150 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 0, 2, 0], ![0, -1, -1, 2], ![2, -1, 1, -2]]

theorem rowSound1150 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1150) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1150 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1150 H]
  have hshape : boundaryInput1150 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1150 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 360] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1150 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8323, reductionProjection7633, reductionProjection7633, reductionProjection5706, reductionProjection8318, reductionProjection8145] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1150 (0 : Fin 6)) = canonicalInput27881.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1150 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8323 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1150 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8323 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27881 hH))).trans (reductionSound8323 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1150 (1 : Fin 6)) = canonicalInput29468.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1150 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7633 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1150 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7633 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29468 hH))).trans (reductionSound7633 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1150 (2 : Fin 6)) = canonicalInput29757.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1150 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7633 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1150 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7633 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29757 hH))).trans (reductionSound7633 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1150 (3 : Fin 6)) = canonicalInput29784.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1150 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5706 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1150 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5706 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29784 hH))).trans (reductionSound5706 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1150 (4 : Fin 6)) = canonicalInput29787.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1150 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8318 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1150 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8318 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29787 hH))).trans (reductionSound8318 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1150 (5 : Fin 6)) = canonicalInput29788.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1150 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8145 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1150 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8145 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29788 hH))).trans (reductionSound8145 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1150 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 360] ![-1440, -1440, -1440, -1440, -1440, -5760] (extendRow Arithmetic.row1150) ![reductionProjection8323, reductionProjection7633, reductionProjection7633, reductionProjection5706, reductionProjection8318, reductionProjection8145]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput524 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![0, -2, 0, 2], ![-2, 0, 3, -1], ![1, 2, 0, -3]]

theorem rowSound524 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 524) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row524 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row524 H]
  have hshape : boundaryInput524 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput524 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 288, 360, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput524 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8376, reductionProjection4306, reductionProjection8382, reductionProjection8352, reductionProjection4082, reductionProjection6668] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput524 (0 : Fin 6)) = canonicalInput24861.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput524 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8376 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput524 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8376 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24861 hH))).trans (reductionSound8376 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput524 (1 : Fin 6)) = canonicalInput28655.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput524 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4306 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput524 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4306 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28655 hH))).trans (reductionSound4306 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput524 (2 : Fin 6)) = canonicalInput29574.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput524 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8382 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput524 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8382 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29574 hH))).trans (reductionSound8382 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput524 (3 : Fin 6)) = canonicalInput29689.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput524 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8352 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput524 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8352 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29689 hH))).trans (reductionSound8352 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput524 (4 : Fin 6)) = canonicalInput29691.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput524 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4082 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput524 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4082 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29691 hH))).trans (reductionSound4082 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput524 (5 : Fin 6)) = canonicalInput29693.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput524 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6668 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput524 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6668 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29693 hH))).trans (reductionSound6668 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput524 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 288, 360, 1440] ![-1440, -1440, -1440, -7200, -5760, -1440] (extendRow Arithmetic.row524) ![reductionProjection8376, reductionProjection4306, reductionProjection8382, reductionProjection8352, reductionProjection4082, reductionProjection6668]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput388 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -2, 0], ![-2, 0, -1, 3], ![0, -1, 3, -2]]

theorem rowSound388 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 388) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row388 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row388 H]
  have hshape : boundaryInput388 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput388 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 720, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput388 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1948, reductionProjection8388, reductionProjection6887, reductionProjection6894, reductionProjection6550, reductionProjection6867] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput388 (0 : Fin 6)) = canonicalInput30199.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput388 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1948 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput388 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1948 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30199 hH))).trans (oldProjectionSound1948 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput388 (1 : Fin 6)) = canonicalInput31448.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput388 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8388 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput388 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8388 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31448 hH))).trans (reductionSound8388 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput388 (2 : Fin 6)) = canonicalInput31521.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput388 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6887 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput388 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6887 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31521 hH))).trans (reductionSound6887 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput388 (3 : Fin 6)) = canonicalInput31580.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput388 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6894 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput388 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6894 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31580 hH))).trans (reductionSound6894 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput388 (4 : Fin 6)) = canonicalInput31582.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput388 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6550 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput388 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6550 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31582 hH))).trans (reductionSound6550 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput388 (5 : Fin 6)) = canonicalInput31583.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput388 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6867 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput388 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6867 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31583 hH))).trans (reductionSound6867 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput388 (j : Fin 6)))
    1440 1440 ![1440, 1440, 288, 720, 1440, 1440] ![-1440, -1440, -7200, -2880, -1440, -1440] (extendRow Arithmetic.row388) ![oldProjection1948, reductionProjection8388, reductionProjection6887, reductionProjection6894, reductionProjection6550, reductionProjection6867]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput399 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 3, 0, -1], ![1, -1, 3, -3]]

theorem rowSound399 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 399) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row399 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row399 H]
  have hshape : boundaryInput399 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput399 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 480, 480, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput399 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8392, reductionProjection8392, reductionProjection8392, reductionProjection8403, oldProjection3328, reductionProjection4740] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput399 (0 : Fin 6)) = canonicalInput24765.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput399 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8392 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput399 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8392 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24765 hH))).trans (reductionSound8392 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput399 (1 : Fin 6)) = canonicalInput28074.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput399 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8392 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput399 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8392 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28074 hH))).trans (reductionSound8392 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput399 (2 : Fin 6)) = canonicalInput28222.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput399 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8392 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput399 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8392 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28222 hH))).trans (reductionSound8392 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput399 (3 : Fin 6)) = canonicalInput28273.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput399 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8403 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput399 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8403 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28273 hH))).trans (reductionSound8403 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput399 (4 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9276 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput399 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3328 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput399 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3328 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9276 hH))).trans (oldProjectionSound3328 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput399 (5 : Fin 6)) = canonicalInput28283.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput399 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4740 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput399 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4740 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28283 hH))).trans (reductionSound4740 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput399 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 480, 480, 1440] ![-1440, -1440, -1440, -4320, -4320, -1440] (extendRow Arithmetic.row399) ![reductionProjection8392, reductionProjection8392, reductionProjection8392, reductionProjection8403, oldProjection3328, reductionProjection4740]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput421 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![-2, 3, 0, -1], ![1, -1, 3, -3]]

theorem rowSound421 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 421) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row421 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row421 H]
  have hshape : boundaryInput421 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput421 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 720, 720, 480, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput421 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8406, reductionProjection8395, reductionProjection8395, reductionProjection8409, oldProjection3326, reductionProjection4743] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput421 (0 : Fin 6)) = canonicalInput24126.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput421 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8406 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput421 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8406 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24126 hH))).trans (reductionSound8406 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput421 (1 : Fin 6)) = canonicalInput25553.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput421 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8395 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput421 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8395 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25553 hH))).trans (reductionSound8395 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput421 (2 : Fin 6)) = canonicalInput25860.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput421 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8395 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput421 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8395 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25860 hH))).trans (reductionSound8395 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput421 (3 : Fin 6)) = canonicalInput25897.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput421 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8409 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput421 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8409 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25897 hH))).trans (reductionSound8409 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput421 (4 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw8445 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput421 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3326 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput421 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3326 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8445 hH))).trans (oldProjectionSound3326 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput421 (5 : Fin 6)) = canonicalInput25905.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput421 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4743 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput421 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4743 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25905 hH))).trans (reductionSound4743 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput421 (j : Fin 6)))
    1440 1440 ![720, 720, 720, 480, 1440, 1440] ![-2880, -2880, -2880, -4320, -1440, -1440] (extendRow Arithmetic.row421) ![reductionProjection8406, reductionProjection8395, reductionProjection8395, reductionProjection8409, oldProjection3326, reductionProjection4743]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput518 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![0, -2, 1, 1], ![-2, 3, 0, -1], ![1, 0, 2, -3]]

theorem rowSound518 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 518) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row518 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row518 H]
  have hshape : boundaryInput518 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput518 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 288, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput518 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8397, reductionProjection8397, reductionProjection8413, reductionProjection8411, reductionProjection8140, reductionProjection4748] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput518 (0 : Fin 6)) = canonicalInput24800.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput518 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8397 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput518 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8397 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24800 hH))).trans (reductionSound8397 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput518 (1 : Fin 6)) = canonicalInput28107.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput518 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8397 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput518 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8397 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28107 hH))).trans (reductionSound8397 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput518 (2 : Fin 6)) = canonicalInput28511.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput518 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8413 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput518 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8413 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28511 hH))).trans (reductionSound8413 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput518 (3 : Fin 6)) = canonicalInput28654.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput518 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8411 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput518 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8411 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28654 hH))).trans (reductionSound8411 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput518 (4 : Fin 6)) = canonicalInput28658.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput518 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8140 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput518 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8140 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28658 hH))).trans (reductionSound8140 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput518 (5 : Fin 6)) = canonicalInput28660.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput518 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4748 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput518 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4748 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28660 hH))).trans (reductionSound4748 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput518 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 288, 288] ![-1440, -1440, -1440, -1440, -7200, -7200] (extendRow Arithmetic.row518) ![reductionProjection8397, reductionProjection8397, reductionProjection8413, reductionProjection8411, reductionProjection8140, reductionProjection4748]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
