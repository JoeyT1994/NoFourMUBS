import NoFourMUBs.Step2.SOS.Canonical431
import NoFourMUBs.Step2.SOS.Canonical434
import NoFourMUBs.Step2.SOS.Canonical435
import NoFourMUBs.Step2.SOS.Canonical436
import NoFourMUBs.Step2.SOS.Canonical439
import NoFourMUBs.Step2.SOS.Canonical443
import NoFourMUBs.Step2.SOS.Canonical458
import NoFourMUBs.Step2.SOS.Canonical459
import NoFourMUBs.Step2.SOS.Canonical460
import NoFourMUBs.Step2.SOS.Canonical461
import NoFourMUBs.Step2.SOS.Canonical462
import NoFourMUBs.Step2.SOS.Canonical463
import NoFourMUBs.Step2.SOS.Canonical464
import NoFourMUBs.Step2.SOS.Canonical465
import NoFourMUBs.Step2.SOS.Canonical466
import NoFourMUBs.Step2.SOS.Canonical467
import NoFourMUBs.Step2.SOS.Canonical471
import NoFourMUBs.Step2.SOS.Canonical488
import NoFourMUBs.Step2.SOS.Canonical489
import NoFourMUBs.Step2.SOS.Canonical490
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions051
import NoFourMUBs.Step2.SOS.Reductions144
import NoFourMUBs.Step2.SOS.Reductions173
import NoFourMUBs.Step2.SOS.Reductions176
import NoFourMUBs.Step2.SOS.Reductions177
import NoFourMUBs.Step2.SOS.Reductions178
import NoFourMUBs.Step2.SOS.Reductions179
import NoFourMUBs.Step2.SOS.Reductions180
import NoFourMUBs.Step2.SOS.Reductions181
import NoFourMUBs.Step2.SOS.Reductions182
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical299
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical301
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical302

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput1070 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -2, 1, 2], ![-1, 1, 2, -2]]

theorem rowSound1070 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1070) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1070 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1070 H]
  have hshape : boundaryInput1070 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1070 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 288, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1070 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5676, reductionProjection5777, reductionProjection5760, reductionProjection5772, oldProjection2989, oldProjection3076] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1070 (0 : Fin 6)) = canonicalInput27918.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1070 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5676 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1070 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5676 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27918 hH))).trans (reductionSound5676 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1070 (1 : Fin 6)) = canonicalInput29714.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1070 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5777 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1070 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5777 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29714 hH))).trans (reductionSound5777 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1070 (2 : Fin 6)) = canonicalInput29910.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1070 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5760 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1070 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5760 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29910 hH))).trans (reductionSound5760 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1070 (3 : Fin 6)) = canonicalInput29939.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1070 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5772 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1070 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5772 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29939 hH))).trans (reductionSound5772 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1070 (4 : Fin 6)) = canonicalInput29945.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1070 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2989 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1070 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2989 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29945 hH))).trans (oldProjectionSound2989 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1070 (5 : Fin 6)) = canonicalInput29946.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1070 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3076 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1070 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3076 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29946 hH))).trans (oldProjectionSound3076 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1070 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 288, 1440, 1440] ![-1440, -1440, -1440, -7200, -1440, -1440] (extendRow Arithmetic.row1070) ![reductionProjection5676, reductionProjection5777, reductionProjection5760, reductionProjection5772, oldProjection2989, oldProjection3076]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1074 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, -1, 1, 2], ![1, 0, 2, -3]]

theorem rowSound1074 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1074) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1074 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1074 H]
  have hshape : boundaryInput1074 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1074 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 288, 1440, 1440, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1074 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5674, reductionProjection5759, reductionProjection5771, reductionProjection5775, oldProjection2962, reductionProjection5776] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1074 (0 : Fin 6)) = canonicalInput27835.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1074 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5674 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1074 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5674 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27835 hH))).trans (reductionSound5674 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1074 (1 : Fin 6)) = canonicalInput29356.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1074 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5759 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1074 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5759 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29356 hH))).trans (reductionSound5759 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1074 (2 : Fin 6)) = canonicalInput29445.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1074 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5771 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1074 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5771 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29445 hH))).trans (reductionSound5771 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1074 (3 : Fin 6)) = canonicalInput29514.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1074 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5775 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1074 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5775 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29514 hH))).trans (reductionSound5775 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1074 (4 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9573 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1074 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2962 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1074 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2962 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9573 hH))).trans (oldProjectionSound2962 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1074 (5 : Fin 6)) = canonicalInput29519.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1074 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5776 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1074 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5776 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29519 hH))).trans (reductionSound5776 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1074 (j : Fin 6)))
    720 1440 ![720, 288, 1440, 1440, 720, 1440] ![-1440, -3600, -720, -720, -1440, -720] (extendRow Arithmetic.row1074) ![reductionProjection5674, reductionProjection5759, reductionProjection5771, reductionProjection5775, oldProjection2962, reductionProjection5776]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1075 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, -1, 1, 2], ![0, 1, 2, -3]]

theorem rowSound1075 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1075) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1075 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1075 H]
  have hshape : boundaryInput1075 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1075 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 288, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1075 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5691, reductionProjection5766, reductionProjection5787, reductionProjection5788, oldProjection2990, oldProjection3077] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1075 (0 : Fin 6)) = canonicalInput27870.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1075 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5691 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1075 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5691 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27870 hH))).trans (reductionSound5691 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1075 (1 : Fin 6)) = canonicalInput29391.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1075 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5766 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1075 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5766 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29391 hH))).trans (reductionSound5766 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1075 (2 : Fin 6)) = canonicalInput29582.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1075 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5787 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1075 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5787 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29582 hH))).trans (reductionSound5787 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1075 (3 : Fin 6)) = canonicalInput29668.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1075 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5788 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1075 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5788 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29668 hH))).trans (reductionSound5788 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1075 (4 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9598 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1075 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2990 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1075 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2990 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9598 hH))).trans (oldProjectionSound2990 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1075 (5 : Fin 6)) = canonicalInput29673.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1075 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3077 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1075 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3077 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29673 hH))).trans (oldProjectionSound3077 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1075 (j : Fin 6)))
    1440 1440 ![720, 288, 1440, 1440, 1440, 1440] ![-2880, -7200, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row1075) ![reductionProjection5691, reductionProjection5766, reductionProjection5787, reductionProjection5788, oldProjection2990, oldProjection3077]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1163 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, 1, 1, -2], ![1, 0, 1, -2], ![-2, -1, 1, 2]]

theorem rowSound1163 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1163) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1163 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1163 H]
  have hshape : boundaryInput1163 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1163 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1163 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5682, reductionProjection5763, reductionProjection5783, reductionProjection5776, oldProjection3077, reductionProjection4610] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1163 (0 : Fin 6)) = canonicalInput27867.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1163 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5682 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1163 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5682 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27867 hH))).trans (reductionSound5682 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1163 (1 : Fin 6)) = canonicalInput29388.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1163 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5763 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1163 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5763 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29388 hH))).trans (reductionSound5763 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1163 (2 : Fin 6)) = canonicalInput29578.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1163 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5783 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1163 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5783 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29578 hH))).trans (reductionSound5783 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1163 (3 : Fin 6)) = canonicalInput29658.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1163 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5776 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1163 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5776 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29658 hH))).trans (reductionSound5776 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1163 (4 : Fin 6)) = canonicalInput29661.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1163 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3077 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1163 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3077 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29661 hH))).trans (oldProjectionSound3077 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1163 (5 : Fin 6)) = canonicalInput29662.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1163 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4610 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1163 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4610 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29662 hH))).trans (reductionSound4610 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1163 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-1440, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row1163) ![reductionProjection5682, reductionProjection5763, reductionProjection5783, reductionProjection5776, oldProjection3077, reductionProjection4610]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1069 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, -1, 1, 2], ![1, -1, 2, -2]]

theorem rowSound1069 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1069) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1069 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1069 H]
  have hshape : boundaryInput1069 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1069 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 1440, 1440, 288, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1069 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5692, reductionProjection5777, reductionProjection5777, reductionProjection5800, oldProjection2992, oldProjection3078] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1069 (0 : Fin 6)) = canonicalInput27890.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1069 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5692 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1069 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5692 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27890 hH))).trans (reductionSound5692 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1069 (1 : Fin 6)) = canonicalInput29529.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1069 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5777 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1069 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5777 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29529 hH))).trans (reductionSound5777 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1069 (2 : Fin 6)) = canonicalInput29766.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1069 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5777 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1069 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5777 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29766 hH))).trans (reductionSound5777 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1069 (3 : Fin 6)) = canonicalInput29824.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1069 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5800 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1069 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5800 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29824 hH))).trans (reductionSound5800 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1069 (4 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9633 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1069 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2992 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1069 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2992 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9633 hH))).trans (oldProjectionSound2992 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1069 (5 : Fin 6)) = canonicalInput29830.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1069 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3078 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1069 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3078 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29830 hH))).trans (oldProjectionSound3078 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1069 (j : Fin 6)))
    1440 1440 ![720, 1440, 1440, 288, 1440, 1440] ![-2880, -1440, -1440, -7200, -1440, -1440] (extendRow Arithmetic.row1069) ![reductionProjection5692, reductionProjection5777, reductionProjection5777, reductionProjection5800, oldProjection2992, oldProjection3078]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1072 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, -1, 1, 2], ![0, 1, 2, -3]]

theorem rowSound1072 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1072) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1072 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1072 H]
  have hshape : boundaryInput1072 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1072 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 1440, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1072 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5693, reductionProjection5788, reductionProjection5804, reductionProjection5806, oldProjection2955, reductionProjection5801] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1072 (0 : Fin 6)) = canonicalInput27903.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1072 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5693 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1072 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5693 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27903 hH))).trans (reductionSound5693 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1072 (1 : Fin 6)) = canonicalInput29668.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1072 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5788 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1072 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5788 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29668 hH))).trans (reductionSound5788 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1072 (2 : Fin 6)) = canonicalInput29858.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1072 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5804 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1072 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5804 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29858 hH))).trans (reductionSound5804 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1072 (3 : Fin 6)) = canonicalInput29883.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1072 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5806 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1072 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5806 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29883 hH))).trans (reductionSound5806 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1072 (4 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9664 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1072 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2955 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1072 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2955 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9664 hH))).trans (oldProjectionSound2955 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1072 (5 : Fin 6)) = canonicalInput29888.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1072 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5801 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1072 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5801 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29888 hH))).trans (reductionSound5801 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1072 (j : Fin 6)))
    1440 1440 ![720, 1440, 1440, 1440, 1440, 288] ![-2880, -1440, -1440, -1440, -1440, -7200] (extendRow Arithmetic.row1072) ![reductionProjection5693, reductionProjection5788, reductionProjection5804, reductionProjection5806, oldProjection2955, reductionProjection5801]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1325 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![0, -1, 2, -1], ![2, -2, -1, 1]]

theorem rowSound1325 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1325) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1325 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1325 H]
  have hshape : boundaryInput1325 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1325 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 360, 1440, 144] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1325 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1781, reductionProjection5635, reductionProjection5823, reductionProjection5555, oldProjection3057, reductionProjection1632] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1325 (0 : Fin 6)) = canonicalInput30152.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1325 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1781 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1325 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1781 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30152 hH))).trans (oldProjectionSound1781 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1325 (1 : Fin 6)) = canonicalInput31295.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1325 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5635 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1325 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5635 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31295 hH))).trans (reductionSound5635 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1325 (2 : Fin 6)) = canonicalInput31324.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1325 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5823 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1325 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5823 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31324 hH))).trans (reductionSound5823 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1325 (3 : Fin 6)) = canonicalInput31360.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1325 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5555 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1325 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5555 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31360 hH))).trans (reductionSound5555 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1325 (4 : Fin 6)) = canonicalInput31362.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1325 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3057 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1325 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3057 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31362 hH))).trans (oldProjectionSound3057 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1325 (5 : Fin 6)) = canonicalInput31363.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1325 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1632 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1325 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1632 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31363 hH))).trans (reductionSound1632 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1325 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 360, 1440, 144] ![-1440, -1440, -1440, -5760, -1440, -14400] (extendRow Arithmetic.row1325) ![oldProjection1781, reductionProjection5635, reductionProjection5823, reductionProjection5555, oldProjection3057, reductionProjection1632]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput238 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, -1, 2, 1], ![2, -1, 2, -3]]

theorem rowSound238 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 238) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row238 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row238 H]
  have hshape : boundaryInput238 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput238 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 144, 288, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput238 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5851, reductionProjection5851, reductionProjection5830, reductionProjection5831, reductionProjection5703, reductionProjection5826] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput238 (0 : Fin 6)) = canonicalInput27643.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput238 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5851 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput238 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5851 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27643 hH))).trans (reductionSound5851 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput238 (1 : Fin 6)) = canonicalInput28145.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput238 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5851 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput238 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5851 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28145 hH))).trans (reductionSound5851 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput238 (2 : Fin 6)) = canonicalInput28357.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput238 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5830 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput238 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5830 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28357 hH))).trans (reductionSound5830 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput238 (3 : Fin 6)) = canonicalInput28385.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput238 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5831 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput238 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5831 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28385 hH))).trans (reductionSound5831 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput238 (4 : Fin 6)) = canonicalInput28390.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput238 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5703 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput238 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5703 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28390 hH))).trans (reductionSound5703 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput238 (5 : Fin 6)) = canonicalInput28391.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput238 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5826 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput238 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5826 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28391 hH))).trans (reductionSound5826 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput238 (j : Fin 6)))
    1440 1440 ![1440, 1440, 144, 288, 1440, 1440] ![-1440, -1440, -14400, -7200, -1440, -1440] (extendRow Arithmetic.row238) ![reductionProjection5851, reductionProjection5851, reductionProjection5830, reductionProjection5831, reductionProjection5703, reductionProjection5826]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
