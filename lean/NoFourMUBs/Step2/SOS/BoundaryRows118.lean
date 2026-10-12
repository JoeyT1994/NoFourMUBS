import NoFourMUBs.Step2.SOS.Canonical120
import NoFourMUBs.Step2.SOS.Canonical267
import NoFourMUBs.Step2.SOS.Canonical269
import NoFourMUBs.Step2.SOS.Canonical316
import NoFourMUBs.Step2.SOS.Canonical317
import NoFourMUBs.Step2.SOS.Canonical318
import NoFourMUBs.Step2.SOS.Canonical324
import NoFourMUBs.Step2.SOS.Canonical327
import NoFourMUBs.Step2.SOS.Canonical328
import NoFourMUBs.Step2.SOS.Canonical397
import NoFourMUBs.Step2.SOS.Canonical398
import NoFourMUBs.Step2.SOS.Canonical401
import NoFourMUBs.Step2.SOS.Canonical402
import NoFourMUBs.Step2.SOS.Canonical403
import NoFourMUBs.Step2.SOS.Canonical405
import NoFourMUBs.Step2.SOS.Canonical406
import NoFourMUBs.Step2.SOS.Canonical407
import NoFourMUBs.Step2.SOS.Canonical437
import NoFourMUBs.Step2.SOS.Canonical438
import NoFourMUBs.Step2.SOS.Canonical450
import NoFourMUBs.Step2.SOS.Canonical455
import NoFourMUBs.Step2.SOS.Canonical464
import NoFourMUBs.Step2.SOS.Canonical465
import NoFourMUBs.Step2.SOS.Canonical466
import NoFourMUBs.Step2.SOS.Canonical467
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions079
import NoFourMUBs.Step2.SOS.Reductions209
import NoFourMUBs.Step2.SOS.Reductions217
import NoFourMUBs.Step2.SOS.Reductions232
import NoFourMUBs.Step2.SOS.Reductions263
import NoFourMUBs.Step2.SOS.Reductions264
import NoFourMUBs.Step2.SOS.Reductions265
import NoFourMUBs.Step2.SOS.Reductions266
import NoFourMUBs.Step2.SOS.Reductions268
import NoFourMUBs.Step2.SOS.Reductions269
import NoFourMUBs.Step2.SOS.Reductions270
import NoFourMUBs.Step2.SOS.Reductions271
import NoFourMUBs.Step2.SOS.Reductions272
import NoFourMUBs.Step2.SOS.Reductions333
import NoFourMUBs.Step2.SOS.Reductions334
import NoFourMUBs.Step2.SOS.Reductions336
import NoFourMUBs.Step2.SOS.Reductions359
import NoFourMUBs.Step2.SOS.Reductions364
import NoFourMUBs.Step2.SOS.Reductions370
import NoFourMUBs.Step2.SOS.Reductions371
import NoFourMUBs.Step2.SOS.Reductions372
import NoFourMUBs.Step2.SOS.Reductions375
import NoFourMUBs.Step2.SOS.Reductions378
import NoFourMUBs.Step2.SOS.Reductions379
import NoFourMUBs.Step2.SOS.Reductions380
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical301
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical302

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput163 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-1, 1, 2, -2], ![1, -2, -2, 3]]

theorem rowSound163 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 163) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row163 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row163 H]
  have hshape : boundaryInput163 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput163 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput163 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8513, reductionProjection8649, reductionProjection8711, reductionProjection8617, oldProjection3235, reductionProjection12181] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput163 (0 : Fin 6)) = canonicalInput20283.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput163 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8513 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput163 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8513 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20283 hH))).trans (reductionSound8513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput163 (1 : Fin 6)) = canonicalInput28015.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput163 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8649 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput163 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8649 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28015 hH))).trans (reductionSound8649 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput163 (2 : Fin 6)) = canonicalInput28823.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput163 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8711 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput163 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8711 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28823 hH))).trans (reductionSound8711 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput163 (3 : Fin 6)) = canonicalInput29121.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput163 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8617 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput163 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8617 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29121 hH))).trans (reductionSound8617 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput163 (4 : Fin 6)) = canonicalInput29170.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput163 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3235 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput163 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3235 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29170 hH))).trans (oldProjectionSound3235 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput163 (5 : Fin 6)) = canonicalInput29173.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput163 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12181 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput163 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12181 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29173 hH))).trans (reductionSound12181 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput163 (j : Fin 6)))
    1440 1440 ![1440, 1440, 288, 1440, 1440, 1440] ![-1440, -1440, -7200, -1440, -1440, -1440] (extendRow Arithmetic.row163) ![reductionProjection8513, reductionProjection8649, reductionProjection8711, reductionProjection8617, oldProjection3235, reductionProjection12181]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput172 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-1, 0, 3, -2], ![1, -2, -2, 3]]

theorem rowSound172 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 172) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row172 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row172 H]
  have hshape : boundaryInput172 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput172 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput172 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8504, reductionProjection8683, reductionProjection8683, reductionProjection8501, oldProjection3221, reductionProjection12174] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput172 (0 : Fin 6)) = canonicalInput20342.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput172 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8504 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput172 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8504 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20342 hH))).trans (reductionSound8504 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput172 (1 : Fin 6)) = canonicalInput28048.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput172 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8683 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput172 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8683 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28048 hH))).trans (reductionSound8683 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput172 (2 : Fin 6)) = canonicalInput29736.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput172 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8683 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput172 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8683 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29736 hH))).trans (reductionSound8683 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput172 (3 : Fin 6)) = canonicalInput29813.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput172 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8501 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput172 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8501 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29813 hH))).trans (reductionSound8501 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput172 (4 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9643 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput172 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3221 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput172 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3221 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9643 hH))).trans (oldProjectionSound3221 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput172 (5 : Fin 6)) = canonicalInput29844.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput172 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12174 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput172 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12174 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29844 hH))).trans (reductionSound12174 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput172 (j : Fin 6)))
    1440 1440 ![288, 1440, 1440, 1440, 288, 1440] ![-7200, -1440, -1440, -1440, -7200, -1440] (extendRow Arithmetic.row172) ![reductionProjection8504, reductionProjection8683, reductionProjection8683, reductionProjection8501, oldProjection3221, reductionProjection12174]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput175 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, -2, -1, 3], ![-1, 1, 3, -3]]

theorem rowSound175 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 175) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row175 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row175 H]
  have hshape : boundaryInput175 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput175 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 1440, 72, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput175 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6708, reductionProjection6947, reductionProjection12185, oldProjection2815, reductionProjection2528, oldProjection3132] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput175 (0 : Fin 6)) = canonicalInput20354.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput175 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6708 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput175 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6708 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20354 hH))).trans (reductionSound6708 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput175 (1 : Fin 6)) = canonicalInput28057.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput175 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6947 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput175 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6947 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28057 hH))).trans (reductionSound6947 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput175 (2 : Fin 6)) = canonicalInput29746.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput175 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12185 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput175 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12185 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29746 hH))).trans (reductionSound12185 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput175 (3 : Fin 6)) = canonicalInput29931.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput175 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2815 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput175 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2815 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29931 hH))).trans (oldProjectionSound2815 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput175 (4 : Fin 6)) = canonicalInput29944.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput175 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2528 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput175 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2528 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29944 hH))).trans (reductionSound2528 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput175 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9688 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput175 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3132 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput175 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3132 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9688 hH))).trans (oldProjectionSound3132 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput175 (j : Fin 6)))
    288 1440 ![288, 1440, 1440, 72, 1440, 288] ![-1440, -288, -288, -5760, -288, -1440] (extendRow Arithmetic.row175) ![reductionProjection6708, reductionProjection6947, reductionProjection12185, oldProjection2815, reductionProjection2528, oldProjection3132]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput177 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, -1, -2, 3], ![-1, 1, 3, -3]]

theorem rowSound177 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 177) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row177 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row177 H]
  have hshape : boundaryInput177 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput177 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput177 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection11900, reductionProjection11914, reductionProjection12190, reductionProjection12116, reductionProjection10756, oldProjection3303] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput177 (0 : Fin 6)) = canonicalInput20350.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput177 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11900 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput177 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11900 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20350 hH))).trans (reductionSound11900 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput177 (1 : Fin 6)) = canonicalInput28053.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput177 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11914 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput177 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11914 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28053 hH))).trans (reductionSound11914 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput177 (2 : Fin 6)) = canonicalInput29742.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput177 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12190 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput177 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12190 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29742 hH))).trans (reductionSound12190 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput177 (3 : Fin 6)) = canonicalInput29877.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput177 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12116 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput177 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12116 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29877 hH))).trans (reductionSound12116 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput177 (4 : Fin 6)) = canonicalInput29899.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput177 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10756 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput177 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10756 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29899 hH))).trans (reductionSound10756 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput177 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9674 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput177 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3303 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput177 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3303 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9674 hH))).trans (oldProjectionSound3303 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput177 (j : Fin 6)))
    1440 1440 ![288, 1440, 1440, 1440, 1440, 1440] ![-7200, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row177) ![reductionProjection11900, reductionProjection11914, reductionProjection12190, reductionProjection12116, reductionProjection10756, oldProjection3303]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput189 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-1, 1, -2, 2], ![1, -1, 3, -3]]

theorem rowSound189 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 189) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row189 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row189 H]
  have hshape : boundaryInput189 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput189 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 288, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput189 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection11508, reductionProjection12010, reductionProjection12121, reductionProjection12119, reductionProjection8601, reductionProjection12188] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput189 (0 : Fin 6)) = canonicalInput17221.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput189 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11508 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput189 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11508 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17221 hH))).trans (reductionSound11508 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput189 (1 : Fin 6)) = canonicalInput25469.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput189 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12010 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput189 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12010 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25469 hH))).trans (reductionSound12010 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput189 (2 : Fin 6)) = canonicalInput25852.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput189 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12121 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput189 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12121 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25852 hH))).trans (reductionSound12121 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput189 (3 : Fin 6)) = canonicalInput25971.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput189 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12119 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput189 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12119 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25971 hH))).trans (reductionSound12119 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput189 (4 : Fin 6)) = canonicalInput25979.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput189 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8601 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput189 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8601 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25979 hH))).trans (reductionSound8601 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput189 (5 : Fin 6)) = canonicalInput25980.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput189 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12188 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput189 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12188 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25980 hH))).trans (reductionSound12188 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput189 (j : Fin 6)))
    1440 1440 ![1440, 288, 288, 1440, 288, 1440] ![-1440, -7200, -7200, -1440, -7200, -1440] (extendRow Arithmetic.row189) ![reductionProjection11508, reductionProjection12010, reductionProjection12121, reductionProjection12119, reductionProjection8601, reductionProjection12188]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput200 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, 1, 2, -3], ![-1, 1, -3, 3]]

theorem rowSound200 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 200) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row200 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row200 H]
  have hshape : boundaryInput200 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput200 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput200 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection11506, reductionProjection11931, reductionProjection12165, reductionProjection11930, reductionProjection12131, reductionProjection8449] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput200 (0 : Fin 6)) = canonicalInput17275.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput200 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11506 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput200 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11506 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17275 hH))).trans (reductionSound11506 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput200 (1 : Fin 6)) = canonicalInput25497.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput200 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11931 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput200 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11931 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25497 hH))).trans (reductionSound11931 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput200 (2 : Fin 6)) = canonicalInput26019.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput200 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12165 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput200 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12165 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26019 hH))).trans (reductionSound12165 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput200 (3 : Fin 6)) = canonicalInput26064.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput200 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11930 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput200 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11930 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26064 hH))).trans (reductionSound11930 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput200 (4 : Fin 6)) = canonicalInput26072.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput200 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12131 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput200 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12131 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26072 hH))).trans (reductionSound12131 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput200 (5 : Fin 6)) = canonicalInput26074.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput200 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8449 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput200 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8449 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26074 hH))).trans (reductionSound8449 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput200 (j : Fin 6)))
    144 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-144, -144, -144, -144, -144, -144] (extendRow Arithmetic.row200) ![reductionProjection11506, reductionProjection11931, reductionProjection12165, reductionProjection11930, reductionProjection12131, reductionProjection8449]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput204 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, 2, -3], ![-1, 1, -3, 3]]

theorem rowSound204 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 204) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row204 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row204 H]
  have hshape : boundaryInput204 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput204 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput204 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection11490, reductionProjection11666, reductionProjection11868, reductionProjection11867, reductionProjection12179, reductionProjection8427] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput204 (0 : Fin 6)) = canonicalInput17139.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput204 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11490 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput204 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11490 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17139 hH))).trans (reductionSound11490 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput204 (1 : Fin 6)) = canonicalInput25430.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput204 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11666 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput204 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11666 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25430 hH))).trans (reductionSound11666 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput204 (2 : Fin 6)) = canonicalInput25709.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput204 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11868 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput204 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11868 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25709 hH))).trans (reductionSound11868 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput204 (3 : Fin 6)) = canonicalInput25769.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput204 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11867 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput204 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11867 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25769 hH))).trans (reductionSound11867 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput204 (4 : Fin 6)) = canonicalInput25778.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput204 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12179 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput204 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12179 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25778 hH))).trans (reductionSound12179 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput204 (5 : Fin 6)) = canonicalInput25779.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput204 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8427 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput204 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8427 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25779 hH))).trans (reductionSound8427 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput204 (j : Fin 6)))
    1440 1440 ![1440, 1440, 288, 1440, 1440, 1440] ![-1440, -1440, -7200, -1440, -1440, -1440] (extendRow Arithmetic.row204) ![reductionProjection11490, reductionProjection11666, reductionProjection11868, reductionProjection11867, reductionProjection12179, reductionProjection8427]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput212 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 0, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, -1, -2, 3], ![1, 1, 2, -4]]

theorem rowSound212 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 212) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row212 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row212 H]
  have hshape : boundaryInput212 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput212 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 1440, 1440, 288, 144] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput212 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7427, reductionProjection10692, reductionProjection10757, reductionProjection10775, reductionProjection10660, reductionProjection12169] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput212 (0 : Fin 6)) = canonicalInput7715.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput212 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7427 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput212 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7427 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7715 hH))).trans (reductionSound7427 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput212 (1 : Fin 6)) = canonicalInput20760.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput212 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10692 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput212 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10692 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20760 hH))).trans (reductionSound10692 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput212 (2 : Fin 6)) = canonicalInput20983.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput212 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10757 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput212 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10757 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20983 hH))).trans (reductionSound10757 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput212 (3 : Fin 6)) = canonicalInput20991.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput212 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10775 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput212 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10775 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20991 hH))).trans (reductionSound10775 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput212 (4 : Fin 6)) = canonicalInput20995.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput212 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10660 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput212 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10660 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20995 hH))).trans (reductionSound10660 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput212 (5 : Fin 6)) = canonicalInput20997.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput212 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12169 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput212 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12169 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20997 hH))).trans (reductionSound12169 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput212 (j : Fin 6)))
    1440 1440 ![1440, 288, 1440, 1440, 288, 144] ![-1440, -7200, -1440, -1440, -7200, -14400] (extendRow Arithmetic.row212) ![reductionProjection7427, reductionProjection10692, reductionProjection10757, reductionProjection10775, reductionProjection10660, reductionProjection12169]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
