import NoFourMUBs.Step2.SOS.Canonical376
import NoFourMUBs.Step2.SOS.Canonical377
import NoFourMUBs.Step2.SOS.Canonical379
import NoFourMUBs.Step2.SOS.Canonical387
import NoFourMUBs.Step2.SOS.Canonical399
import NoFourMUBs.Step2.SOS.Canonical400
import NoFourMUBs.Step2.SOS.Canonical405
import NoFourMUBs.Step2.SOS.Canonical408
import NoFourMUBs.Step2.SOS.Canonical417
import NoFourMUBs.Step2.SOS.Canonical418
import NoFourMUBs.Step2.SOS.Canonical419
import NoFourMUBs.Step2.SOS.Canonical433
import NoFourMUBs.Step2.SOS.Canonical439
import NoFourMUBs.Step2.SOS.Canonical448
import NoFourMUBs.Step2.SOS.Canonical452
import NoFourMUBs.Step2.SOS.Canonical453
import NoFourMUBs.Step2.SOS.Canonical456
import NoFourMUBs.Step2.SOS.Canonical457
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections037
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions031
import NoFourMUBs.Step2.SOS.Reductions032
import NoFourMUBs.Step2.SOS.Reductions034
import NoFourMUBs.Step2.SOS.Reductions040
import NoFourMUBs.Step2.SOS.Reductions045
import NoFourMUBs.Step2.SOS.Reductions072
import NoFourMUBs.Step2.SOS.Reductions073
import NoFourMUBs.Step2.SOS.Reductions119
import NoFourMUBs.Step2.SOS.Reductions147
import NoFourMUBs.Step2.SOS.Reductions148
import NoFourMUBs.Step2.SOS.Reductions162
import NoFourMUBs.Step2.SOS.Reductions165
import NoFourMUBs.Step2.SOS.Reductions166
import NoFourMUBs.Step2.SOS.Reductions168
import NoFourMUBs.Step2.SOS.Reductions169
import NoFourMUBs.Step2.SOS.Reductions170
import NoFourMUBs.Step2.SOS.Reductions171
import NoFourMUBs.Step2.SOS.Reductions172
import NoFourMUBs.Step2.SOS.Reductions173
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical263
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical264
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical276

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput435 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, -1, 1, 2], ![1, 1, 2, -4]]

theorem rowSound435 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 435) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row435 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row435 H]
  have hshape : boundaryInput435 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput435 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput435 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5208, oldProjection3021, oldProjection3021, reductionProjection5449, reductionProjection1020, reductionProjection5450] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput435 (0 : Fin 6)) = canonicalInput24160.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput435 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5208 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput435 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5208 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24160 hH))).trans (reductionSound5208 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput435 (1 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw8455 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput435 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection3021 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput435 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection3021 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8455 hH))).trans (oldProjectionSound3021 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput435 (2 : Fin 6)) = canonicalInput26112.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput435 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection3021 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput435 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection3021 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26112 hH))).trans (oldProjectionSound3021 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput435 (3 : Fin 6)) = canonicalInput26116.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput435 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5449 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput435 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5449 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26116 hH))).trans (reductionSound5449 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput435 (4 : Fin 6)) = canonicalInput26117.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput435 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1020 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput435 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1020 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26117 hH))).trans (reductionSound1020 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput435 (5 : Fin 6)) = canonicalInput26118.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput435 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5450 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput435 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5450 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26118 hH))).trans (reductionSound5450 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput435 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-1440, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row435) ![reductionProjection5208, oldProjection3021, oldProjection3021, reductionProjection5449, reductionProjection1020, reductionProjection5450]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput520 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![0, -1, 2, -1], ![-2, 1, -1, 2], ![1, 2, -1, -2]]

theorem rowSound520 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 520) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row520 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row520 H]
  have hshape : boundaryInput520 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput520 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput520 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5342, reductionProjection5457, reductionProjection5464, reductionProjection5461, oldProjection3071, oldProjection3250] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput520 (0 : Fin 6)) = canonicalInput24824.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput520 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5342 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput520 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5342 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24824 hH))).trans (reductionSound5342 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput520 (1 : Fin 6)) = canonicalInput28124.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput520 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5457 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput520 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5457 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28124 hH))).trans (reductionSound5457 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput520 (2 : Fin 6)) = canonicalInput29187.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput520 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5464 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput520 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5464 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29187 hH))).trans (reductionSound5464 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput520 (3 : Fin 6)) = canonicalInput29244.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput520 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5461 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput520 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5461 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29244 hH))).trans (reductionSound5461 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput520 (4 : Fin 6)) = canonicalInput29249.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput520 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3071 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput520 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3071 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29249 hH))).trans (oldProjectionSound3071 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput520 (5 : Fin 6)) = canonicalInput29250.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput520 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3250 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput520 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3250 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29250 hH))).trans (oldProjectionSound3250 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput520 (j : Fin 6)))
    720 1440 ![1440, 1440, 1440, 1440, 720, 1440] ![-720, -720, -720, -720, -1440, -720] (extendRow Arithmetic.row520) ![reductionProjection5342, reductionProjection5457, reductionProjection5464, reductionProjection5461, oldProjection3071, oldProjection3250]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1137 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![2, 1, -1, -2]]

theorem rowSound1137 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1137) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1137 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1137 H]
  have hshape : boundaryInput1137 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1137 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1137 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5412, reductionProjection3834, reductionProjection5488, reductionProjection5401, reductionProjection5402, reductionProjection5488] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1137 (0 : Fin 6)) = canonicalInput27733.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1137 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5412 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1137 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5412 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27733 hH))).trans (reductionSound5412 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1137 (1 : Fin 6)) = canonicalInput28727.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1137 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3834 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1137 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3834 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28727 hH))).trans (reductionSound3834 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1137 (2 : Fin 6)) = canonicalInput28935.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1137 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5488 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1137 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5488 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28935 hH))).trans (reductionSound5488 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1137 (3 : Fin 6)) = canonicalInput29035.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1137 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5401 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1137 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5401 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29035 hH))).trans (reductionSound5401 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1137 (4 : Fin 6)) = canonicalInput29043.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1137 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5402 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1137 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5402 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29043 hH))).trans (reductionSound5402 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1137 (5 : Fin 6)) = canonicalInput29044.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1137 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5488 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1137 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5488 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29044 hH))).trans (reductionSound5488 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1137 (j : Fin 6)))
    1440 1440 ![720, 1440, 1440, 1440, 1440, 1440] ![-2880, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row1137) ![reductionProjection5412, reductionProjection3834, reductionProjection5488, reductionProjection5401, reductionProjection5402, reductionProjection5488]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput439 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-2, -1, 1, 2], ![2, 1, 1, -4]]

theorem rowSound439 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 439) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row439 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row439 H]
  have hshape : boundaryInput439 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput439 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 360, 360, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput439 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection2305, reductionProjection2325, oldProjection2900, oldProjection2900, reductionProjection1021, reductionProjection5510] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput439 (0 : Fin 6)) = canonicalInput24286.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput439 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2305 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput439 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2305 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24286 hH))).trans (reductionSound2305 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput439 (1 : Fin 6)) = canonicalInput26718.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput439 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2325 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput439 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2325 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26718 hH))).trans (reductionSound2325 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput439 (2 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw8841 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput439 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection2900 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput439 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection2900 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8841 hH))).trans (oldProjectionSound2900 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput439 (3 : Fin 6)) = canonicalInput26812.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput439 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2900 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput439 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2900 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26812 hH))).trans (oldProjectionSound2900 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput439 (4 : Fin 6)) = canonicalInput26813.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput439 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1021 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput439 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1021 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26813 hH))).trans (reductionSound1021 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput439 (5 : Fin 6)) = canonicalInput26814.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput439 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5510 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput439 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5510 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26814 hH))).trans (reductionSound5510 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput439 (j : Fin 6)))
    288 1440 ![1440, 288, 360, 360, 288, 1440] ![-288, -1440, -1152, -1152, -1440, -288] (extendRow Arithmetic.row439) ![reductionProjection2305, reductionProjection2325, oldProjection2900, oldProjection2900, reductionProjection1021, reductionProjection5510]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput440 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, -1, 1, 2], ![1, 2, 1, -4]]

theorem rowSound440 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 440) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row440 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row440 H]
  have hshape : boundaryInput440 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput440 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 288, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput440 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5214, reductionProjection5296, oldProjection2905, reductionProjection5519, reductionProjection1027, reductionProjection5523] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput440 (0 : Fin 6)) = canonicalInput24287.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput440 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5214 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput440 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5214 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24287 hH))).trans (reductionSound5214 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput440 (1 : Fin 6)) = canonicalInput26719.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput440 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5296 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput440 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5296 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26719 hH))).trans (reductionSound5296 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput440 (2 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw8847 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput440 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection2905 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput440 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection2905 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8847 hH))).trans (oldProjectionSound2905 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput440 (3 : Fin 6)) = canonicalInput26815.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput440 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5519 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput440 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5519 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26815 hH))).trans (reductionSound5519 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput440 (4 : Fin 6)) = canonicalInput26816.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput440 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1027 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput440 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1027 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26816 hH))).trans (reductionSound1027 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput440 (5 : Fin 6)) = canonicalInput26817.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput440 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5523 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput440 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5523 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26817 hH))).trans (reductionSound5523 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput440 (j : Fin 6)))
    288 1440 ![1440, 1440, 1440, 288, 720, 1440] ![-288, -288, -288, -1440, -576, -288] (extendRow Arithmetic.row440) ![reductionProjection5214, reductionProjection5296, oldProjection2905, reductionProjection5519, reductionProjection1027, reductionProjection5523]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput446 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, -1, 0], ![-2, 0, -1, 3], ![1, 3, -1, -3]]

theorem rowSound446 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 446) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row446 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row446 H]
  have hshape : boundaryInput446 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput446 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 1440, 1440, 720, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput446 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4729, reductionProjection4729, reductionProjection4741, reductionProjection4746, reductionProjection2311, reductionProjection5535] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput446 (0 : Fin 6)) = canonicalInput24271.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput446 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4729 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput446 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4729 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24271 hH))).trans (reductionSound4729 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput446 (1 : Fin 6)) = canonicalInput26701.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput446 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4729 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput446 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4729 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26701 hH))).trans (reductionSound4729 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput446 (2 : Fin 6)) = canonicalInput26721.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput446 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4741 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput446 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4741 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26721 hH))).trans (reductionSound4741 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput446 (3 : Fin 6)) = canonicalInput26726.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput446 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4746 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput446 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4746 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26726 hH))).trans (reductionSound4746 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput446 (4 : Fin 6)) = canonicalInput26729.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput446 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2311 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput446 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2311 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26729 hH))).trans (reductionSound2311 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput446 (5 : Fin 6)) = canonicalInput26731.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput446 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5535 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput446 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5535 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26731 hH))).trans (reductionSound5535 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput446 (j : Fin 6)))
    1440 1440 ![288, 288, 1440, 1440, 720, 720] ![-7200, -7200, -1440, -1440, -2880, -2880] (extendRow Arithmetic.row446) ![reductionProjection4729, reductionProjection4729, reductionProjection4741, reductionProjection4746, reductionProjection2311, reductionProjection5535]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput423 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-2, -1, 2, 1], ![2, 1, 1, -4]]

theorem rowSound423 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 423) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row423 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row423 H]
  have hshape : boundaryInput423 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput423 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 1440, 1440, 1440, 360] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput423 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection2308, reductionProjection2338, oldProjection2901, oldProjection2901, reductionProjection1459, reductionProjection5550] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput423 (0 : Fin 6)) = canonicalInput24132.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput423 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2308 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput423 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2308 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24132 hH))).trans (reductionSound2308 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput423 (1 : Fin 6)) = canonicalInput25558.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput423 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2338 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput423 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2338 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25558 hH))).trans (reductionSound2338 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput423 (2 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw8431 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput423 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection2901 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput423 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection2901 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8431 hH))).trans (oldProjectionSound2901 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput423 (3 : Fin 6)) = canonicalInput25941.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput423 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2901 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput423 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2901 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25941 hH))).trans (oldProjectionSound2901 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput423 (4 : Fin 6)) = canonicalInput25945.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput423 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1459 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput423 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1459 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25945 hH))).trans (reductionSound1459 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput423 (5 : Fin 6)) = canonicalInput25947.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput423 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5550 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput423 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5550 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25947 hH))).trans (reductionSound5550 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput423 (j : Fin 6)))
    1440 1440 ![1440, 288, 1440, 1440, 1440, 360] ![-1440, -7200, -1440, -1440, -1440, -5760] (extendRow Arithmetic.row423) ![reductionProjection2308, reductionProjection2338, oldProjection2901, oldProjection2901, reductionProjection1459, reductionProjection5550]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput426 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-2, 0, 3, -1], ![2, 2, -1, -3]]

theorem rowSound426 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 426) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row426 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row426 H]
  have hshape : boundaryInput426 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput426 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 720, 288, 1440, 1440, 360] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput426 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1045, reductionProjection1045, reductionProjection1095, reductionProjection1299, reductionProjection1037, reductionProjection5550] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput426 (0 : Fin 6)) = canonicalInput24099.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput426 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1045 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput426 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1045 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24099 hH))).trans (reductionSound1045 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput426 (1 : Fin 6)) = canonicalInput25537.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput426 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1045 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput426 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1045 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25537 hH))).trans (reductionSound1045 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput426 (2 : Fin 6)) = canonicalInput25585.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput426 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1095 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput426 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1095 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25585 hH))).trans (reductionSound1095 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput426 (3 : Fin 6)) = canonicalInput25607.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput426 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1299 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput426 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1299 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25607 hH))).trans (reductionSound1299 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput426 (4 : Fin 6)) = canonicalInput25613.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput426 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1037 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput426 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1037 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25613 hH))).trans (reductionSound1037 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput426 (5 : Fin 6)) = canonicalInput25614.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput426 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5550 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput426 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5550 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25614 hH))).trans (reductionSound5550 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput426 (j : Fin 6)))
    288 1440 ![720, 720, 288, 1440, 1440, 360] ![-576, -576, -1440, -288, -288, -1152] (extendRow Arithmetic.row426) ![reductionProjection1045, reductionProjection1045, reductionProjection1095, reductionProjection1299, reductionProjection1037, reductionProjection5550]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
