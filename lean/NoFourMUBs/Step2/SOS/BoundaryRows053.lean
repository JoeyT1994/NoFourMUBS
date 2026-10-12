import NoFourMUBs.Step2.SOS.Canonical432
import NoFourMUBs.Step2.SOS.Canonical433
import NoFourMUBs.Step2.SOS.Canonical434
import NoFourMUBs.Step2.SOS.Canonical436
import NoFourMUBs.Step2.SOS.Canonical448
import NoFourMUBs.Step2.SOS.Canonical449
import NoFourMUBs.Step2.SOS.Canonical450
import NoFourMUBs.Step2.SOS.Canonical451
import NoFourMUBs.Step2.SOS.Canonical452
import NoFourMUBs.Step2.SOS.Canonical453
import NoFourMUBs.Step2.SOS.Canonical454
import NoFourMUBs.Step2.SOS.Canonical455
import NoFourMUBs.Step2.SOS.Canonical456
import NoFourMUBs.Step2.SOS.Canonical466
import NoFourMUBs.Step2.SOS.Canonical467
import NoFourMUBs.Step2.SOS.Canonical472
import NoFourMUBs.Step2.SOS.Canonical491
import NoFourMUBs.Step2.SOS.Canonical493
import NoFourMUBs.Step2.SOS.Canonical494
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions027
import NoFourMUBs.Step2.SOS.Reductions046
import NoFourMUBs.Step2.SOS.Reductions051
import NoFourMUBs.Step2.SOS.Reductions062
import NoFourMUBs.Step2.SOS.Reductions164
import NoFourMUBs.Step2.SOS.Reductions167
import NoFourMUBs.Step2.SOS.Reductions168
import NoFourMUBs.Step2.SOS.Reductions169
import NoFourMUBs.Step2.SOS.Reductions172
import NoFourMUBs.Step2.SOS.Reductions173
import NoFourMUBs.Step2.SOS.Reductions174
import NoFourMUBs.Step2.SOS.Reductions175
import NoFourMUBs.Step2.SOS.Reductions180
import NoFourMUBs.Step2.SOS.Reductions181
import NoFourMUBs.Step2.SOS.Reductions233
import NoFourMUBs.Step2.SOS.Reductions236
import NoFourMUBs.Step2.SOS.Reductions237
import NoFourMUBs.Step2.SOS.Reductions271
import NoFourMUBs.Step2.SOS.Reductions277
import NoFourMUBs.Step2.SOS.Reductions278
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical294
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical299
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical302

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput1265 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, -2, 1, 1], ![2, -1, -1, 0], ![-2, 2, 1, -1]]

theorem rowSound1265 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1265) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1265 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1265 H]
  have hshape : boundaryInput1265 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1265 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 288, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1265 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5367, reductionProjection883, reductionProjection5512, reductionProjection8872, reductionProjection5362, reductionProjection7483] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1265 (0 : Fin 6)) = canonicalInput27759.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1265 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5367 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1265 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5367 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27759 hH))).trans (reductionSound5367 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1265 (1 : Fin 6)) = canonicalInput28756.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1265 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection883 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1265 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection883 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28756 hH))).trans (reductionSound883 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1265 (2 : Fin 6)) = canonicalInput28973.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1265 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5512 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1265 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5512 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28973 hH))).trans (reductionSound5512 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1265 (3 : Fin 6)) = canonicalInput29109.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1265 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8872 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1265 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8872 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29109 hH))).trans (reductionSound8872 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1265 (4 : Fin 6)) = canonicalInput29112.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1265 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5362 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1265 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5362 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29112 hH))).trans (reductionSound5362 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1265 (5 : Fin 6)) = canonicalInput29113.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1265 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7483 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1265 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7483 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29113 hH))).trans (reductionSound7483 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1265 (j : Fin 6)))
    1440 1440 ![288, 1440, 288, 1440, 288, 1440] ![-7200, -1440, -7200, -1440, -7200, -1440] (extendRow Arithmetic.row1265) ![reductionProjection5367, reductionProjection883, reductionProjection5512, reductionProjection8872, reductionProjection5362, reductionProjection7483]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1266 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, -1, 1, 1], ![-1, 2, -1, 0], ![2, -2, 1, -1]]

theorem rowSound1266 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1266) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1266 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1266 H]
  have hshape : boundaryInput1266 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1266 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 288, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1266 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5566, oldProjection1789, reductionProjection8888, reductionProjection5549, reductionProjection5548, reductionProjection7571] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1266 (0 : Fin 6)) = canonicalInput27751.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1266 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5566 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1266 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5566 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27751 hH))).trans (reductionSound5566 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1266 (1 : Fin 6)) = canonicalInput28746.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1266 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1789 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1266 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1789 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28746 hH))).trans (oldProjectionSound1789 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1266 (2 : Fin 6)) = canonicalInput28953.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1266 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8888 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1266 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8888 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28953 hH))).trans (reductionSound8888 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1266 (3 : Fin 6)) = canonicalInput29084.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1266 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5549 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1266 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5549 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29084 hH))).trans (reductionSound5549 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1266 (4 : Fin 6)) = canonicalInput29087.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1266 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5548 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1266 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5548 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29087 hH))).trans (reductionSound5548 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1266 (5 : Fin 6)) = canonicalInput29088.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1266 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7571 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1266 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7571 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29088 hH))).trans (reductionSound7571 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1266 (j : Fin 6)))
    144 1440 ![720, 288, 1440, 1440, 288, 1440] ![-288, -720, -144, -144, -720, -144] (extendRow Arithmetic.row1266) ![reductionProjection5566, oldProjection1789, reductionProjection8888, reductionProjection5549, reductionProjection5548, reductionProjection7571]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1269 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, -1, 2, 0], ![-1, 2, 0, -1], ![2, -2, -1, 1]]

theorem rowSound1269 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1269) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1269 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1269 H]
  have hshape : boundaryInput1269 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1269 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1269 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5261, reductionProjection2010, reductionProjection5549, reductionProjection8888, reductionProjection5591, reductionProjection1487] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1269 (0 : Fin 6)) = canonicalInput27752.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1269 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5261 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1269 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5261 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27752 hH))).trans (reductionSound5261 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1269 (1 : Fin 6)) = canonicalInput28747.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1269 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2010 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1269 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2010 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28747 hH))).trans (reductionSound2010 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1269 (2 : Fin 6)) = canonicalInput28954.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1269 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5549 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1269 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5549 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28954 hH))).trans (reductionSound5549 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1269 (3 : Fin 6)) = canonicalInput29089.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1269 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8888 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1269 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8888 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29089 hH))).trans (reductionSound8888 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1269 (4 : Fin 6)) = canonicalInput29090.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1269 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5591 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1269 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5591 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29090 hH))).trans (reductionSound5591 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1269 (5 : Fin 6)) = canonicalInput29091.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1269 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1487 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1269 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1487 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29091 hH))).trans (reductionSound1487 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1269 (j : Fin 6)))
    1440 1440 ![288, 1440, 1440, 1440, 288, 1440] ![-7200, -1440, -1440, -1440, -7200, -1440] (extendRow Arithmetic.row1269) ![reductionProjection5261, reductionProjection2010, reductionProjection5549, reductionProjection8888, reductionProjection5591, reductionProjection1487]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1276 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -2, 1, 0], ![1, -1, 1, -1], ![-2, 2, -1, 1]]

theorem rowSound1276 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1276) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1276 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1276 H]
  have hshape : boundaryInput1276 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1276 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 720, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1276 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5251, reductionProjection5406, reductionProjection8880, reductionProjection5525, reductionProjection5524, reductionProjection1478] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1276 (0 : Fin 6)) = canonicalInput27764.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1276 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5251 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1276 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5251 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27764 hH))).trans (reductionSound5251 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1276 (1 : Fin 6)) = canonicalInput28761.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1276 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5406 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1276 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5406 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28761 hH))).trans (reductionSound5406 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1276 (2 : Fin 6)) = canonicalInput28997.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1276 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8880 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1276 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8880 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28997 hH))).trans (reductionSound8880 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1276 (3 : Fin 6)) = canonicalInput29130.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1276 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5525 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1276 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5525 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29130 hH))).trans (reductionSound5525 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1276 (4 : Fin 6)) = canonicalInput29131.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1276 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5524 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1276 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5524 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29131 hH))).trans (reductionSound5524 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1276 (5 : Fin 6)) = canonicalInput29132.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1276 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1478 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1276 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1478 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29132 hH))).trans (reductionSound1478 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1276 (j : Fin 6)))
    720 1440 ![1440, 1440, 720, 1440, 1440, 1440] ![-720, -720, -1440, -720, -720, -720] (extendRow Arithmetic.row1276) ![reductionProjection5251, reductionProjection5406, reductionProjection8880, reductionProjection5525, reductionProjection5524, reductionProjection1478]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1282 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![0, -2, 1, 1], ![1, 1, -1, -1], ![-2, 2, 1, -1]]

theorem rowSound1282 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1282) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1282 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1282 H]
  have hshape : boundaryInput1282 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1282 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 360, 720, 288, 288, 180] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1282 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5602, oldProjection1826, reductionProjection5593, reductionProjection8891, reductionProjection5594, reductionProjection7603] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1282 (0 : Fin 6)) = canonicalInput27793.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1282 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5602 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1282 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5602 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27793 hH))).trans (reductionSound5602 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1282 (1 : Fin 6)) = canonicalInput28788.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1282 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1826 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1282 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1826 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28788 hH))).trans (oldProjectionSound1826 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1282 (2 : Fin 6)) = canonicalInput29199.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1282 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5593 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1282 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5593 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29199 hH))).trans (reductionSound5593 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1282 (3 : Fin 6)) = canonicalInput29241.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1282 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8891 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1282 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8891 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29241 hH))).trans (reductionSound8891 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1282 (4 : Fin 6)) = canonicalInput29242.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1282 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5594 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1282 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5594 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29242 hH))).trans (reductionSound5594 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1282 (5 : Fin 6)) = canonicalInput29243.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1282 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7603 (Normalization.momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1282 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7603 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29243 hH))).trans (reductionSound7603 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1282 (j : Fin 6)))
    1440 1440 ![288, 360, 720, 288, 288, 180] ![-7200, -5760, -2880, -7200, -7200, -11520] (extendRow Arithmetic.row1282) ![reductionProjection5602, oldProjection1826, reductionProjection5593, reductionProjection8891, reductionProjection5594, reductionProjection7603]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1317 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![0, -1, 2, -1], ![1, -2, 0, 1], ![-2, 2, -1, 1]]

theorem rowSound1317 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1317) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1317 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1317 H]
  have hshape : boundaryInput1317 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1317 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 288, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1317 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1773, reductionProjection8865, reductionProjection5797, reductionProjection5776, reductionProjection5799, reductionProjection1645] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1317 (0 : Fin 6)) = canonicalInput30216.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1317 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1773 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1317 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1773 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30216 hH))).trans (oldProjectionSound1773 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1317 (1 : Fin 6)) = canonicalInput31465.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1317 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8865 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1317 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8865 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31465 hH))).trans (reductionSound8865 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1317 (2 : Fin 6)) = canonicalInput31605.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1317 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5797 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1317 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5797 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31605 hH))).trans (reductionSound5797 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1317 (3 : Fin 6)) = canonicalInput31649.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1317 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5776 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1317 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5776 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31649 hH))).trans (reductionSound5776 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1317 (4 : Fin 6)) = canonicalInput31651.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1317 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5799 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1317 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5799 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31651 hH))).trans (reductionSound5799 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1317 (5 : Fin 6)) = canonicalInput31652.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1317 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1645 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1317 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1645 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31652 hH))).trans (reductionSound1645 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1317 (j : Fin 6)))
    288 1440 ![720, 288, 1440, 1440, 1440, 1440] ![-576, -1440, -288, -288, -288, -288] (extendRow Arithmetic.row1317) ![oldProjection1773, reductionProjection8865, reductionProjection5797, reductionProjection5776, reductionProjection5799, reductionProjection1645]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1060 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, -1, 2], ![2, -2, 1, -1]]

theorem rowSound1060 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1060) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1060 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1060 H]
  have hshape : boundaryInput1060 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1060 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1060 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8926, oldProjection1737, oldProjection1737, oldProjection3257, reductionProjection8695, oldProjection3030] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1060 (0 : Fin 6)) = canonicalInput27708.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1060 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8926 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1060 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8926 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27708 hH))).trans (reductionSound8926 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1060 (1 : Fin 6)) = canonicalInput28702.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1060 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1737 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1060 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1737 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28702 hH))).trans (oldProjectionSound1737 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1060 (2 : Fin 6)) = canonicalInput28846.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1060 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection1737 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1060 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection1737 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28846 hH))).trans (oldProjectionSound1737 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1060 (3 : Fin 6)) = canonicalInput28889.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1060 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3257 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1060 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3257 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28889 hH))).trans (oldProjectionSound3257 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1060 (4 : Fin 6)) = canonicalInput28897.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1060 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8695 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1060 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8695 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28897 hH))).trans (reductionSound8695 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1060 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9435 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1060 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3030 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1060 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3030 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9435 hH))).trans (oldProjectionSound3030 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1060 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-1440, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row1060) ![reductionProjection8926, oldProjection1737, oldProjection1737, oldProjection3257, reductionProjection8695, oldProjection3030]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1071 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 1, -1, 2], ![0, -1, 3, -2]]

theorem rowSound1071 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1071) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1071 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1071 H]
  have hshape : boundaryInput1071 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1071 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1071 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8907, oldProjection3251, reductionProjection8909, oldProjection3252, reductionProjection8683, reductionProjection5428] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1071 (0 : Fin 6)) = canonicalInput27907.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1071 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8907 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1071 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8907 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27907 hH))).trans (reductionSound8907 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1071 (1 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9599 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1071 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection3251 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1071 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection3251 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9599 hH))).trans (oldProjectionSound3251 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1071 (2 : Fin 6)) = canonicalInput29862.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1071 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8909 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1071 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8909 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29862 hH))).trans (reductionSound8909 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1071 (3 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9665 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1071 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3252 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1071 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3252 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9665 hH))).trans (oldProjectionSound3252 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1071 (4 : Fin 6)) = canonicalInput29895.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1071 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8683 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1071 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8683 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29895 hH))).trans (reductionSound8683 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1071 (5 : Fin 6)) = canonicalInput29896.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1071 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5428 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1071 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5428 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29896 hH))).trans (reductionSound5428 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1071 (j : Fin 6)))
    1440 1440 ![288, 288, 1440, 1440, 1440, 1440] ![-7200, -7200, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row1071) ![reductionProjection8907, oldProjection3251, reductionProjection8909, oldProjection3252, reductionProjection8683, reductionProjection5428]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
