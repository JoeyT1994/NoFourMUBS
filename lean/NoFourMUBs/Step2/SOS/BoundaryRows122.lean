import NoFourMUBs.Step2.SOS.Canonical115
import NoFourMUBs.Step2.SOS.Canonical140
import NoFourMUBs.Step2.SOS.Canonical145
import NoFourMUBs.Step2.SOS.Canonical323
import NoFourMUBs.Step2.SOS.Canonical325
import NoFourMUBs.Step2.SOS.Canonical337
import NoFourMUBs.Step2.SOS.Canonical338
import NoFourMUBs.Step2.SOS.Canonical339
import NoFourMUBs.Step2.SOS.Canonical340
import NoFourMUBs.Step2.SOS.Canonical376
import NoFourMUBs.Step2.SOS.Canonical387
import NoFourMUBs.Step2.SOS.Canonical388
import NoFourMUBs.Step2.SOS.Canonical399
import NoFourMUBs.Step2.SOS.Canonical404
import NoFourMUBs.Step2.SOS.Canonical438
import NoFourMUBs.Step2.SOS.Canonical439
import NoFourMUBs.Step2.SOS.Canonical442
import NoFourMUBs.Step2.SOS.Canonical444
import NoFourMUBs.Step2.SOS.Canonical449
import NoFourMUBs.Step2.SOS.Canonical450
import NoFourMUBs.Step2.SOS.Canonical453
import NoFourMUBs.Step2.SOS.Canonical459
import NoFourMUBs.Step2.SOS.Canonical461
import NoFourMUBs.Step2.SOS.Canonical466
import NoFourMUBs.Step2.SOS.Canonical467
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.OldProjections037
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.OldProjections041
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions143
import NoFourMUBs.Step2.SOS.Reductions169
import NoFourMUBs.Step2.SOS.Reductions202
import NoFourMUBs.Step2.SOS.Reductions203
import NoFourMUBs.Step2.SOS.Reductions233
import NoFourMUBs.Step2.SOS.Reductions235
import NoFourMUBs.Step2.SOS.Reductions236
import NoFourMUBs.Step2.SOS.Reductions240
import NoFourMUBs.Step2.SOS.Reductions253
import NoFourMUBs.Step2.SOS.Reductions258
import NoFourMUBs.Step2.SOS.Reductions270
import NoFourMUBs.Step2.SOS.Reductions274
import NoFourMUBs.Step2.SOS.Reductions281
import NoFourMUBs.Step2.SOS.Reductions282
import NoFourMUBs.Step2.SOS.Reductions288
import NoFourMUBs.Step2.SOS.Reductions289
import NoFourMUBs.Step2.SOS.Reductions294
import NoFourMUBs.Step2.SOS.Reductions312
import NoFourMUBs.Step2.SOS.Reductions367
import NoFourMUBs.Step2.SOS.Reductions381
import NoFourMUBs.Step2.SOS.Reductions382
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical263
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical301
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical302

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput398 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 1, 0], ![1, -1, 0, 0], ![1, -1, 0, 0], ![0, 2, -1, -1], ![0, 0, -3, 3], ![0, 0, 3, -3]]

theorem rowSound398 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 398) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row398 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row398 H]
  have hshape : boundaryInput398 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput398 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![72, 144, 144, 18, 144, 144] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput398 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8118, reductionProjection12201, reductionProjection12201, reductionProjection9243, reductionProjection8122, reductionProjection8123] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput398 (0 : Fin 6)) = canonicalInput8984.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput398 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8118 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput398 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8118 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8984 hH))).trans (reductionSound8118 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput398 (1 : Fin 6)) = canonicalInput21751.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput398 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12201 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput398 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12201 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21751 hH))).trans (reductionSound12201 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput398 (2 : Fin 6)) = canonicalInput21810.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput398 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12201 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput398 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12201 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21810 hH))).trans (reductionSound12201 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput398 (3 : Fin 6)) = canonicalInput21811.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput398 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9243 (Normalization.momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst boundaryInput398 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9243 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21811 hH))).trans (reductionSound9243 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput398 (4 : Fin 6)) = canonicalInput21812.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput398 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8122 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput398 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8122 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21812 hH))).trans (reductionSound8122 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput398 (5 : Fin 6)) = canonicalInput21813.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput398 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8123 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput398 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8123 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21813 hH))).trans (reductionSound8123 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput398 (j : Fin 6)))
    72 144 ![72, 144, 144, 18, 144, 144] ![-144, -72, -72, -576, -72, -72] (extendRow Arithmetic.row398) ![reductionProjection8118, reductionProjection12201, reductionProjection12201, reductionProjection9243, reductionProjection8122, reductionProjection8123]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput472 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, -2, -1, 1], ![0, 1, 3, -4]]

theorem rowSound472 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 472) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row472 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row472 H]
  have hshape : boundaryInput472 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput472 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![72, 288, 1440, 1440, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput472 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7521, reductionProjection9421, reductionProjection9419, reductionProjection9419, reductionProjection12199, reductionProjection5420] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput472 (0 : Fin 6)) = canonicalInput7407.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput472 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7521 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput472 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7521 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7407 hH))).trans (reductionSound7521 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput472 (1 : Fin 6)) = canonicalInput20716.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput472 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9421 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput472 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9421 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20716 hH))).trans (reductionSound9421 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput472 (2 : Fin 6)) = canonicalInput20826.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput472 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9419 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput472 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9419 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20826 hH))).trans (reductionSound9419 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput472 (3 : Fin 6)) = canonicalInput20851.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput472 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9419 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput472 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9419 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20851 hH))).trans (reductionSound9419 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput472 (4 : Fin 6)) = canonicalInput20853.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput472 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12199 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput472 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12199 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20853 hH))).trans (reductionSound12199 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput472 (5 : Fin 6)) = canonicalInput20854.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput472 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5420 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput472 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5420 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20854 hH))).trans (reductionSound5420 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput472 (j : Fin 6)))
    1440 1440 ![72, 288, 1440, 1440, 1440, 720] ![-28800, -7200, -1440, -1440, -1440, -2880] (extendRow Arithmetic.row472) ![reductionProjection7521, reductionProjection9421, reductionProjection9419, reductionProjection9419, reductionProjection12199, reductionProjection5420]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1009 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 1, 0, 1], ![1, -1, 3, -3]]

theorem rowSound1009 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1009) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1009 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1009 H]
  have hshape : boundaryInput1009 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1009 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1009 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9054, reductionProjection9054, oldProjection2836, reductionProjection9267, reductionProjection12208, oldProjection3243] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1009 (0 : Fin 6)) = canonicalInput24786.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1009 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9054 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1009 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9054 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24786 hH))).trans (reductionSound9054 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1009 (1 : Fin 6)) = canonicalInput28095.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1009 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9054 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1009 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9054 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28095 hH))).trans (reductionSound9054 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1009 (2 : Fin 6)) = canonicalInput28306.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1009 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection2836 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1009 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection2836 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28306 hH))).trans (oldProjectionSound2836 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1009 (3 : Fin 6)) = canonicalInput28461.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1009 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9267 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1009 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9267 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28461 hH))).trans (reductionSound9267 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1009 (4 : Fin 6)) = canonicalInput28470.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1009 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12208 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1009 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12208 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28470 hH))).trans (reductionSound12208 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1009 (5 : Fin 6)) = canonicalInput28471.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1009 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3243 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1009 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3243 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28471 hH))).trans (oldProjectionSound3243 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1009 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 288] ![-1440, -1440, -1440, -1440, -1440, -7200] (extendRow Arithmetic.row1009) ![reductionProjection9054, reductionProjection9054, oldProjection2836, reductionProjection9267, reductionProjection12208, oldProjection3243]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1019 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, 0, 2], ![1, -1, 3, -3]]

theorem rowSound1019 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1019) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1019 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1019 H]
  have hshape : boundaryInput1019 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1019 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1019 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7467, reductionProjection12208, oldProjection2754, reductionProjection7698, reductionProjection4605, oldProjection3189] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1019 (0 : Fin 6)) = canonicalInput24855.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1019 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7467 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1019 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7467 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24855 hH))).trans (reductionSound7467 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1019 (1 : Fin 6)) = canonicalInput28470.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1019 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12208 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1019 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12208 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28470 hH))).trans (reductionSound12208 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1019 (2 : Fin 6)) = canonicalInput29419.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1019 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection2754 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1019 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection2754 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29419 hH))).trans (oldProjectionSound2754 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1019 (3 : Fin 6)) = canonicalInput29516.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1019 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7698 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1019 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7698 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29516 hH))).trans (reductionSound7698 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1019 (4 : Fin 6)) = canonicalInput29528.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1019 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4605 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1019 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4605 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29528 hH))).trans (reductionSound4605 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1019 (5 : Fin 6)) = canonicalInput29530.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1019 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3189 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1019 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3189 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29530 hH))).trans (oldProjectionSound3189 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1019 (j : Fin 6)))
    720 1440 ![720, 1440, 1440, 1440, 1440, 1440] ![-1440, -720, -720, -720, -720, -720] (extendRow Arithmetic.row1019) ![reductionProjection7467, reductionProjection12208, oldProjection2754, reductionProjection7698, reductionProjection4605, oldProjection3189]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1023 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-2, 1, 1, 0], ![2, 0, 2, -4]]

theorem rowSound1023 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1023) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1023 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1023 H]
  have hshape : boundaryInput1023 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1023 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1023 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6486, reductionProjection6496, reductionProjection6496, reductionProjection12221, oldProjection3428, reductionProjection8656] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1023 (0 : Fin 6)) = canonicalInput24122.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1023 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6486 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1023 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6486 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24122 hH))).trans (reductionSound6486 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1023 (1 : Fin 6)) = canonicalInput25550.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1023 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6496 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1023 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6496 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25550 hH))).trans (reductionSound6496 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1023 (2 : Fin 6)) = canonicalInput25857.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1023 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6496 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1023 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6496 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25857 hH))).trans (reductionSound6496 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1023 (3 : Fin 6)) = canonicalInput25879.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1023 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12221 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1023 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12221 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25879 hH))).trans (reductionSound12221 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1023 (4 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw8432 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1023 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3428 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1023 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3428 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8432 hH))).trans (oldProjectionSound3428 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1023 (5 : Fin 6)) = canonicalInput25891.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1023 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8656 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1023 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8656 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25891 hH))).trans (reductionSound8656 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1023 (j : Fin 6)))
    1440 1440 ![288, 1440, 1440, 1440, 288, 1440] ![-7200, -1440, -1440, -1440, -7200, -1440] (extendRow Arithmetic.row1023) ![reductionProjection6486, reductionProjection6496, reductionProjection6496, reductionProjection12221, oldProjection3428, reductionProjection8656]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1115 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 1, -1, 2], ![0, 0, 3, -3]]

theorem rowSound1115 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1115) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1115 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1115 H]
  have hshape : boundaryInput1115 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1115 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![360, 1440, 720, 1440, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1115 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8775, oldProjection2848, reductionProjection9000, oldProjection3264, reductionProjection12200, oldProjection3252] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1115 (0 : Fin 6)) = canonicalInput24873.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1115 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8775 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1115 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8775 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24873 hH))).trans (reductionSound8775 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1115 (1 : Fin 6)) = canonicalInput28795.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1115 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection2848 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1115 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection2848 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28795 hH))).trans (oldProjectionSound2848 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1115 (2 : Fin 6)) = canonicalInput29852.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1115 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9000 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1115 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9000 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29852 hH))).trans (reductionSound9000 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1115 (3 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9657 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1115 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3264 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1115 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3264 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9657 hH))).trans (oldProjectionSound3264 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1115 (4 : Fin 6)) = canonicalInput29889.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1115 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12200 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1115 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12200 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29889 hH))).trans (reductionSound12200 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1115 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9665 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1115 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3252 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1115 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3252 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9665 hH))).trans (oldProjectionSound3252 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1115 (j : Fin 6)))
    1440 1440 ![360, 1440, 720, 1440, 720, 1440] ![-5760, -1440, -2880, -1440, -2880, -1440] (extendRow Arithmetic.row1115) ![reductionProjection8775, oldProjection2848, reductionProjection9000, oldProjection3264, reductionProjection12200, oldProjection3252]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1208 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![1, 1, -2, 0], ![1, -1, 2, -2]]

theorem rowSound1208 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1208) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1208 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1208 H]
  have hshape : boundaryInput1208 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1208 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 720, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1208 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7463, reductionProjection7559, reductionProjection7558, reductionProjection4580, reductionProjection12211, reductionProjection7686] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1208 (0 : Fin 6)) = canonicalInput24815.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1208 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7463 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1208 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7463 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24815 hH))).trans (reductionSound7463 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1208 (1 : Fin 6)) = canonicalInput28119.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1208 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7559 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1208 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7559 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28119 hH))).trans (reductionSound7559 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1208 (2 : Fin 6)) = canonicalInput28836.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1208 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7558 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1208 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7558 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28836 hH))).trans (reductionSound7558 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1208 (3 : Fin 6)) = canonicalInput29031.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1208 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4580 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1208 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4580 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29031 hH))).trans (reductionSound4580 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1208 (4 : Fin 6)) = canonicalInput29040.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1208 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12211 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1208 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12211 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29040 hH))).trans (reductionSound12211 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1208 (5 : Fin 6)) = canonicalInput29041.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1208 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7686 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1208 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7686 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29041 hH))).trans (reductionSound7686 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1208 (j : Fin 6)))
    1440 1440 ![1440, 720, 1440, 1440, 1440, 1440] ![-1440, -2880, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row1208) ![reductionProjection7463, reductionProjection7559, reductionProjection7558, reductionProjection4580, reductionProjection12211, reductionProjection7686]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput20 : Matrix (Fin 7) (Fin 3) ℤ := ![![-1, 0, 1], ![-1, 0, 1], ![0, -1, 1], ![1, 0, -1], ![1, 0, -1], ![0, -3, 3], ![0, 4, -4]]

theorem rowSound20 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 20) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row20 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row20 H]
  have hshape : boundaryInput20 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput20 2 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![48, 48, 96, 96, 96, 96] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput20 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8285, reductionProjection11747, reductionProjection12251, reductionProjection12251, reductionProjection10008, reductionProjection12254] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput20 (0 : Fin 6)) = canonicalInput9302.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput20 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8285 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput20 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8285 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9302 hH))).trans (reductionSound8285 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput20 (1 : Fin 6)) = canonicalInput21584.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput20 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11747 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput20 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11747 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21584 hH))).trans (reductionSound11747 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput20 (2 : Fin 6)) = canonicalInput21633.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput20 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12251 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput20 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12251 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21633 hH))).trans (reductionSound12251 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput20 (3 : Fin 6)) = canonicalInput21640.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput20 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12251 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput20 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12251 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21640 hH))).trans (reductionSound12251 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput20 (4 : Fin 6)) = canonicalInput21642.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput20 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10008 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput20 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10008 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21642 hH))).trans (reductionSound10008 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput20 (5 : Fin 6)) = canonicalInput21643.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput20 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12254 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput20 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12254 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21643 hH))).trans (reductionSound12254 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput20 (j : Fin 6)))
    96 96 ![48, 48, 96, 96, 96, 96] ![-192, -192, -96, -96, -96, -96] (extendRow Arithmetic.row20) ![reductionProjection8285, reductionProjection11747, reductionProjection12251, reductionProjection12251, reductionProjection10008, reductionProjection12254]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
