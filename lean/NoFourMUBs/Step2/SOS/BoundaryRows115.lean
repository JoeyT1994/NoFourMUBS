import NoFourMUBs.Step2.SOS.Canonical115
import NoFourMUBs.Step2.SOS.Canonical134
import NoFourMUBs.Step2.SOS.Canonical323
import NoFourMUBs.Step2.SOS.Canonical325
import NoFourMUBs.Step2.SOS.Canonical339
import NoFourMUBs.Step2.SOS.Canonical340
import NoFourMUBs.Step2.SOS.Canonical377
import NoFourMUBs.Step2.SOS.Canonical379
import NoFourMUBs.Step2.SOS.Canonical406
import NoFourMUBs.Step2.SOS.Canonical408
import NoFourMUBs.Step2.SOS.Canonical417
import NoFourMUBs.Step2.SOS.Canonical418
import NoFourMUBs.Step2.SOS.Canonical419
import NoFourMUBs.Step2.SOS.Canonical433
import NoFourMUBs.Step2.SOS.Canonical435
import NoFourMUBs.Step2.SOS.Canonical448
import NoFourMUBs.Step2.SOS.Canonical449
import NoFourMUBs.Step2.SOS.Canonical452
import NoFourMUBs.Step2.SOS.Canonical453
import NoFourMUBs.Step2.SOS.Canonical455
import NoFourMUBs.Step2.SOS.Canonical463
import NoFourMUBs.Step2.SOS.Canonical466
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions066
import NoFourMUBs.Step2.SOS.Reductions098
import NoFourMUBs.Step2.SOS.Reductions131
import NoFourMUBs.Step2.SOS.Reductions176
import NoFourMUBs.Step2.SOS.Reductions178
import NoFourMUBs.Step2.SOS.Reductions228
import NoFourMUBs.Step2.SOS.Reductions229
import NoFourMUBs.Step2.SOS.Reductions233
import NoFourMUBs.Step2.SOS.Reductions234
import NoFourMUBs.Step2.SOS.Reductions243
import NoFourMUBs.Step2.SOS.Reductions268
import NoFourMUBs.Step2.SOS.Reductions276
import NoFourMUBs.Step2.SOS.Reductions305
import NoFourMUBs.Step2.SOS.Reductions306
import NoFourMUBs.Step2.SOS.Reductions307
import NoFourMUBs.Step2.SOS.Reductions308
import NoFourMUBs.Step2.SOS.Reductions309
import NoFourMUBs.Step2.SOS.Reductions311
import NoFourMUBs.Step2.SOS.Reductions312
import NoFourMUBs.Step2.SOS.Reductions314
import NoFourMUBs.Step2.SOS.Reductions315
import NoFourMUBs.Step2.SOS.Reductions316
import NoFourMUBs.Step2.SOS.Reductions358
import NoFourMUBs.Step2.SOS.Reductions375
import NoFourMUBs.Step2.SOS.Reductions376
import NoFourMUBs.Step2.SOS.Reductions379
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical296

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput378 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, 0, 2, -1], ![-1, 1, -2, 2], ![1, -1, 2, -2]]

theorem rowSound378 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 378) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row378 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row378 H]
  have hshape : boundaryInput378 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput378 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 1440, 288, 1440, 1440, 360] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput378 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection12033, reductionProjection12028, reductionProjection12025, reductionProjection12140, reductionProjection12036, reductionProjection12026] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput378 (0 : Fin 6)) = canonicalInput27899.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput378 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12033 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput378 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12033 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27899 hH))).trans (reductionSound12033 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput378 (1 : Fin 6)) = canonicalInput29645.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput378 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12028 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput378 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12028 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29645 hH))).trans (reductionSound12028 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput378 (2 : Fin 6)) = canonicalInput29854.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput378 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12025 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput378 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12025 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29854 hH))).trans (reductionSound12025 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput378 (3 : Fin 6)) = canonicalInput29867.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput378 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12140 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput378 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12140 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29867 hH))).trans (reductionSound12140 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput378 (4 : Fin 6)) = canonicalInput29870.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput378 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12036 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput378 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12036 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29870 hH))).trans (reductionSound12036 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput378 (5 : Fin 6)) = canonicalInput29871.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput378 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12026 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput378 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12026 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29871 hH))).trans (reductionSound12026 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput378 (j : Fin 6)))
    288 1440 ![720, 1440, 288, 1440, 1440, 360] ![-576, -288, -1440, -288, -288, -1152] (extendRow Arithmetic.row378) ![reductionProjection12033, reductionProjection12028, reductionProjection12025, reductionProjection12140, reductionProjection12036, reductionProjection12026]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput434 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 0, 3, -2], ![-1, 2, -3, 2]]

theorem rowSound434 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 434) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row434 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row434 H]
  have hshape : boundaryInput434 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput434 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput434 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9983, reductionProjection8576, reductionProjection9985, reductionProjection9977, reductionProjection9980, reductionProjection12129] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput434 (0 : Fin 6)) = canonicalInput24163.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput434 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9983 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput434 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9983 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24163 hH))).trans (reductionSound9983 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput434 (1 : Fin 6)) = canonicalInput26003.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput434 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8576 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput434 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8576 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26003 hH))).trans (reductionSound8576 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput434 (2 : Fin 6)) = canonicalInput26139.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput434 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9985 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput434 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9985 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26139 hH))).trans (reductionSound9985 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput434 (3 : Fin 6)) = canonicalInput26142.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput434 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9977 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput434 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9977 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26142 hH))).trans (reductionSound9977 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput434 (4 : Fin 6)) = canonicalInput26147.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput434 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9980 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput434 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9980 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26147 hH))).trans (reductionSound9980 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput434 (5 : Fin 6)) = canonicalInput26148.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput434 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12129 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput434 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12129 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26148 hH))).trans (reductionSound12129 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput434 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 288, 1440] ![-1440, -1440, -1440, -1440, -7200, -1440] (extendRow Arithmetic.row434) ![reductionProjection9983, reductionProjection8576, reductionProjection9985, reductionProjection9977, reductionProjection9980, reductionProjection12129]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput444 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 2, 1, -2], ![-1, 1, -3, 3]]

theorem rowSound444 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 444) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row444 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row444 H]
  have hshape : boundaryInput444 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput444 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 720, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput444 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9852, reductionProjection9856, reductionProjection9859, reductionProjection9861, reductionProjection12130, reductionProjection8839] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput444 (0 : Fin 6)) = canonicalInput24300.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput444 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9852 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput444 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9852 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24300 hH))).trans (reductionSound9852 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput444 (1 : Fin 6)) = canonicalInput26746.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput444 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9856 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput444 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9856 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26746 hH))).trans (reductionSound9856 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput444 (2 : Fin 6)) = canonicalInput26841.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput444 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9859 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput444 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9859 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26841 hH))).trans (reductionSound9859 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput444 (3 : Fin 6)) = canonicalInput26852.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput444 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9861 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput444 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9861 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26852 hH))).trans (reductionSound9861 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput444 (4 : Fin 6)) = canonicalInput26853.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput444 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12130 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput444 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12130 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26853 hH))).trans (reductionSound12130 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput444 (5 : Fin 6)) = canonicalInput26854.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput444 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8839 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput444 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8839 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26854 hH))).trans (reductionSound8839 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput444 (j : Fin 6)))
    288 1440 ![1440, 1440, 1440, 720, 1440, 1440] ![-288, -288, -288, -576, -288, -288] (extendRow Arithmetic.row444) ![reductionProjection9852, reductionProjection9856, reductionProjection9859, reductionProjection9861, reductionProjection12130, reductionProjection8839]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput473 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 0, 1], ![0, -1, 0, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![0, 2, -3, 1], ![0, 1, 3, -4]]

theorem rowSound473 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 473) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row473 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row473 H]
  have hshape : boundaryInput473 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput473 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![144, 288, 1440, 1440, 288, 360] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput473 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7297, reductionProjection11456, reductionProjection12141, reductionProjection12141, reductionProjection9904, reductionProjection9838] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput473 (0 : Fin 6)) = canonicalInput7420.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput473 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7297 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput473 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7297 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7420 hH))).trans (reductionSound7297 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput473 (1 : Fin 6)) = canonicalInput20718.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput473 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11456 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput473 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11456 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20718 hH))).trans (reductionSound11456 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput473 (2 : Fin 6)) = canonicalInput20834.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput473 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12141 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput473 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12141 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20834 hH))).trans (reductionSound12141 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput473 (3 : Fin 6)) = canonicalInput20857.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput473 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12141 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput473 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12141 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20857 hH))).trans (reductionSound12141 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput473 (4 : Fin 6)) = canonicalInput20859.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput473 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9904 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput473 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9904 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20859 hH))).trans (reductionSound9904 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput473 (5 : Fin 6)) = canonicalInput20860.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput473 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9838 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput473 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9838 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20860 hH))).trans (reductionSound9838 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput473 (j : Fin 6)))
    1440 1440 ![144, 288, 1440, 1440, 288, 360] ![-14400, -7200, -1440, -1440, -7200, -5760] (extendRow Arithmetic.row473) ![reductionProjection7297, reductionProjection11456, reductionProjection12141, reductionProjection12141, reductionProjection9904, reductionProjection9838]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput476 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 1, 0], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![0, -3, 1, 2], ![1, 2, 1, -4]]

theorem rowSound476 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 476) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row476 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row476 H]
  have hshape : boundaryInput476 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput476 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 144, 1440, 288, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput476 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7804, reductionProjection10079, reductionProjection10091, reductionProjection10140, reductionProjection9778, reductionProjection12142] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput476 (0 : Fin 6)) = canonicalInput8636.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput476 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7804 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput476 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7804 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8636 hH))).trans (reductionSound7804 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput476 (1 : Fin 6)) = canonicalInput21710.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput476 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10079 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput476 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10079 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21710 hH))).trans (reductionSound10079 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput476 (2 : Fin 6)) = canonicalInput21758.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput476 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10091 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput476 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10091 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21758 hH))).trans (reductionSound10091 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput476 (3 : Fin 6)) = canonicalInput21764.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput476 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10140 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput476 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10140 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21764 hH))).trans (reductionSound10140 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput476 (4 : Fin 6)) = canonicalInput21768.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput476 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9778 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput476 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9778 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21768 hH))).trans (reductionSound9778 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput476 (5 : Fin 6)) = canonicalInput21770.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput476 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12142 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput476 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12142 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21770 hH))).trans (reductionSound12142 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput476 (j : Fin 6)))
    720 1440 ![288, 288, 144, 1440, 288, 720] ![-3600, -3600, -7200, -720, -3600, -1440] (extendRow Arithmetic.row476) ![reductionProjection7804, reductionProjection10079, reductionProjection10091, reductionProjection10140, reductionProjection9778, reductionProjection12142]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput510 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-1, 2, 0, -1], ![1, -1, 1, -1], ![-1, 1, -3, 3]]

theorem rowSound510 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 510) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row510 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row510 H]
  have hshape : boundaryInput510 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput510 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 720, 1440, 1440, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput510 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9797, reductionProjection9801, reductionProjection9806, reductionProjection12128, reductionProjection9810, oldProjection3276] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput510 (0 : Fin 6)) = canonicalInput24303.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput510 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9797 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput510 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9797 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24303 hH))).trans (reductionSound9797 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput510 (1 : Fin 6)) = canonicalInput26758.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput510 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9801 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput510 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9801 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26758 hH))).trans (reductionSound9801 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput510 (2 : Fin 6)) = canonicalInput26850.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput510 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9806 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput510 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9806 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26850 hH))).trans (reductionSound9806 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput510 (3 : Fin 6)) = canonicalInput26865.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput510 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12128 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput510 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12128 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26865 hH))).trans (reductionSound12128 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput510 (4 : Fin 6)) = canonicalInput26866.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput510 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9810 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput510 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9810 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26866 hH))).trans (reductionSound9810 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput510 (5 : Fin 6)) = canonicalInput26867.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput510 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3276 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput510 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3276 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26867 hH))).trans (oldProjectionSound3276 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput510 (j : Fin 6)))
    1440 1440 ![1440, 720, 1440, 1440, 720, 1440] ![-1440, -2880, -1440, -1440, -2880, -1440] (extendRow Arithmetic.row510) ![reductionProjection9797, reductionProjection9801, reductionProjection9806, reductionProjection12128, reductionProjection9810, oldProjection3276]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput754 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, 0, -2], ![-2, -1, 1, 2]]

theorem rowSound754 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 754) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row754 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row754 H]
  have hshape : boundaryInput754 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput754 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![360, 1440, 288, 720, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput754 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5649, reductionProjection2123, oldProjection3060, reductionProjection5725, oldProjection3062, reductionProjection12145] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput754 (0 : Fin 6)) = canonicalInput27770.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput754 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5649 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput754 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5649 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27770 hH))).trans (reductionSound5649 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput754 (1 : Fin 6)) = canonicalInput28767.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput754 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2123 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput754 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2123 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28767 hH))).trans (reductionSound2123 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput754 (2 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9473 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput754 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection3060 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput754 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection3060 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9473 hH))).trans (oldProjectionSound3060 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput754 (3 : Fin 6)) = canonicalInput29138.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput754 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5725 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput754 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5725 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29138 hH))).trans (reductionSound5725 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput754 (4 : Fin 6)) = canonicalInput29148.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput754 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3062 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput754 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3062 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29148 hH))).trans (oldProjectionSound3062 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput754 (5 : Fin 6)) = canonicalInput29149.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput754 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12145 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput754 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12145 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29149 hH))).trans (reductionSound12145 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput754 (j : Fin 6)))
    1440 1440 ![360, 1440, 288, 720, 288, 1440] ![-5760, -1440, -7200, -2880, -7200, -1440] (extendRow Arithmetic.row754) ![reductionProjection5649, reductionProjection2123, oldProjection3060, reductionProjection5725, oldProjection3062, reductionProjection12145]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput781 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![1, -2, 1, 0], ![1, 1, 0, -2]]

theorem rowSound781 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 781) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row781 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row781 H]
  have hshape : boundaryInput781 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput781 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 288, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput781 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7333, reductionProjection3147, reductionProjection7487, reductionProjection4222, reductionProjection12152, reductionProjection7507] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput781 (0 : Fin 6)) = canonicalInput27731.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput781 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7333 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput781 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7333 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27731 hH))).trans (reductionSound7333 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput781 (1 : Fin 6)) = canonicalInput28724.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput781 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3147 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput781 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3147 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28724 hH))).trans (reductionSound3147 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput781 (2 : Fin 6)) = canonicalInput28933.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput781 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7487 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput781 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7487 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28933 hH))).trans (reductionSound7487 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput781 (3 : Fin 6)) = canonicalInput29033.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput781 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4222 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput781 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4222 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29033 hH))).trans (reductionSound4222 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput781 (4 : Fin 6)) = canonicalInput29038.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput781 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12152 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput781 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12152 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29038 hH))).trans (reductionSound12152 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput781 (5 : Fin 6)) = canonicalInput29039.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput781 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7507 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput781 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7507 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29039 hH))).trans (reductionSound7507 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput781 (j : Fin 6)))
    288 1440 ![1440, 1440, 288, 288, 1440, 720] ![-288, -288, -1440, -1440, -288, -576] (extendRow Arithmetic.row781) ![reductionProjection7333, reductionProjection3147, reductionProjection7487, reductionProjection4222, reductionProjection12152, reductionProjection7507]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
