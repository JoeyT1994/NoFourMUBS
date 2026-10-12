import NoFourMUBs.Step2.SOS.Canonical115
import NoFourMUBs.Step2.SOS.Canonical119
import NoFourMUBs.Step2.SOS.Canonical316
import NoFourMUBs.Step2.SOS.Canonical323
import NoFourMUBs.Step2.SOS.Canonical324
import NoFourMUBs.Step2.SOS.Canonical325
import NoFourMUBs.Step2.SOS.Canonical326
import NoFourMUBs.Step2.SOS.Canonical327
import NoFourMUBs.Step2.SOS.Canonical388
import NoFourMUBs.Step2.SOS.Canonical433
import NoFourMUBs.Step2.SOS.Canonical436
import NoFourMUBs.Step2.SOS.Canonical437
import NoFourMUBs.Step2.SOS.Canonical440
import NoFourMUBs.Step2.SOS.Canonical444
import NoFourMUBs.Step2.SOS.Canonical445
import NoFourMUBs.Step2.SOS.Canonical449
import NoFourMUBs.Step2.SOS.Canonical453
import NoFourMUBs.Step2.SOS.Canonical455
import NoFourMUBs.Step2.SOS.Canonical459
import NoFourMUBs.Step2.SOS.Canonical460
import NoFourMUBs.Step2.SOS.Canonical463
import NoFourMUBs.Step2.SOS.Canonical464
import NoFourMUBs.Step2.SOS.Canonical466
import NoFourMUBs.Step2.SOS.Canonical467
import NoFourMUBs.Step2.SOS.Canonical468
import NoFourMUBs.Step2.SOS.Canonical471
import NoFourMUBs.Step2.SOS.Canonical491
import NoFourMUBs.Step2.SOS.Canonical492
import NoFourMUBs.Step2.SOS.Canonical493
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections034
import NoFourMUBs.Step2.SOS.OldProjections035
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions057
import NoFourMUBs.Step2.SOS.Reductions058
import NoFourMUBs.Step2.SOS.Reductions071
import NoFourMUBs.Step2.SOS.Reductions119
import NoFourMUBs.Step2.SOS.Reductions137
import NoFourMUBs.Step2.SOS.Reductions139
import NoFourMUBs.Step2.SOS.Reductions141
import NoFourMUBs.Step2.SOS.Reductions142
import NoFourMUBs.Step2.SOS.Reductions143
import NoFourMUBs.Step2.SOS.Reductions180
import NoFourMUBs.Step2.SOS.Reductions181
import NoFourMUBs.Step2.SOS.Reductions195
import NoFourMUBs.Step2.SOS.Reductions196
import NoFourMUBs.Step2.SOS.Reductions208
import NoFourMUBs.Step2.SOS.Reductions232
import NoFourMUBs.Step2.SOS.Reductions238
import NoFourMUBs.Step2.SOS.Reductions265
import NoFourMUBs.Step2.SOS.Reductions273
import NoFourMUBs.Step2.SOS.Reductions280
import NoFourMUBs.Step2.SOS.Reductions299
import NoFourMUBs.Step2.SOS.Reductions311
import NoFourMUBs.Step2.SOS.Reductions313
import NoFourMUBs.Step2.SOS.Reductions324
import NoFourMUBs.Step2.SOS.Reductions325
import NoFourMUBs.Step2.SOS.Reductions378
import NoFourMUBs.Step2.SOS.Reductions379
import NoFourMUBs.Step2.SOS.Reductions380

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput973 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 1, 0, -2], ![-2, -1, 0, 3]]

theorem rowSound973 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 973) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row973 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row973 H]
  have hshape : boundaryInput973 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput973 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 720, 1440, 1440, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput973 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4530, oldProjection2621, reductionProjection4574, reductionProjection12145, reductionProjection4577, reductionProjection2283] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput973 (0 : Fin 6)) = canonicalInput27772.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput973 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4530 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput973 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4530 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27772 hH))).trans (reductionSound4530 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput973 (1 : Fin 6)) = canonicalInput28769.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput973 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection2621 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput973 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection2621 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28769 hH))).trans (oldProjectionSound2621 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput973 (2 : Fin 6)) = canonicalInput29011.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput973 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4574 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput973 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4574 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29011 hH))).trans (reductionSound4574 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput973 (3 : Fin 6)) = canonicalInput29149.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput973 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12145 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput973 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12145 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29149 hH))).trans (reductionSound12145 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput973 (4 : Fin 6)) = canonicalInput29151.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput973 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4577 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput973 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4577 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29151 hH))).trans (reductionSound4577 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput973 (5 : Fin 6)) = canonicalInput29152.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput973 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2283 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput973 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2283 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29152 hH))).trans (reductionSound2283 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput973 (j : Fin 6)))
    1440 1440 ![720, 720, 1440, 1440, 720, 1440] ![-2880, -2880, -1440, -1440, -2880, -1440] (extendRow Arithmetic.row973) ![reductionProjection4530, oldProjection2621, reductionProjection4574, reductionProjection12145, reductionProjection4577, reductionProjection2283]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput974 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![0, -1, 2, -1], ![1, 1, 0, -2], ![-2, -1, 0, 3]]

theorem rowSound974 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 974) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row974 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row974 H]
  have hshape : boundaryInput974 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput974 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 720, 720, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput974 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4406, reductionProjection4413, reductionProjection4414, reductionProjection12146, reductionProjection4415, reductionProjection2285] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput974 (0 : Fin 6)) = canonicalInput27925.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput974 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4406 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput974 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4406 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27925 hH))).trans (reductionSound4406 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput974 (1 : Fin 6)) = canonicalInput29721.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput974 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4413 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput974 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4413 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29721 hH))).trans (reductionSound4413 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput974 (2 : Fin 6)) = canonicalInput29928.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput974 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4414 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput974 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4414 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29928 hH))).trans (reductionSound4414 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput974 (3 : Fin 6)) = canonicalInput29966.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput974 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12146 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput974 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12146 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29966 hH))).trans (reductionSound12146 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput974 (4 : Fin 6)) = canonicalInput29968.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput974 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4415 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput974 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4415 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29968 hH))).trans (reductionSound4415 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput974 (5 : Fin 6)) = canonicalInput29969.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput974 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2285 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput974 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2285 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29969 hH))).trans (reductionSound2285 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput974 (j : Fin 6)))
    1440 1440 ![1440, 1440, 720, 720, 288, 1440] ![-1440, -1440, -2880, -2880, -7200, -1440] (extendRow Arithmetic.row974) ![reductionProjection4406, reductionProjection4413, reductionProjection4414, reductionProjection12146, reductionProjection4415, reductionProjection2285]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1217 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![2, 0, -1, -1], ![0, -1, 3, -2]]

theorem rowSound1217 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1217) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1217 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1217 H]
  have hshape : boundaryInput1217 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1217 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 144, 18, 1440, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1217 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7453, reductionProjection12153, oldProjection2696, reductionProjection4459, reductionProjection7647, reductionProjection6670] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1217 (0 : Fin 6)) = canonicalInput24846.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1217 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7453 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1217 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7453 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24846 hH))).trans (reductionSound7453 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1217 (1 : Fin 6)) = canonicalInput28421.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1217 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12153 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1217 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12153 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28421 hH))).trans (reductionSound12153 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1217 (2 : Fin 6)) = canonicalInput29410.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1217 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection2696 (Normalization.momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1217 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection2696 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29410 hH))).trans (oldProjectionSound2696 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1217 (3 : Fin 6)) = canonicalInput29454.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1217 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4459 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1217 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4459 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29454 hH))).trans (reductionSound4459 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1217 (4 : Fin 6)) = canonicalInput29461.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1217 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7647 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1217 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7647 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29461 hH))).trans (reductionSound7647 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1217 (5 : Fin 6)) = canonicalInput29463.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1217 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6670 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1217 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6670 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29463 hH))).trans (reductionSound6670 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1217 (j : Fin 6)))
    288 1440 ![1440, 144, 18, 1440, 1440, 720] ![-288, -2880, -23040, -288, -288, -576] (extendRow Arithmetic.row1217) ![reductionProjection7453, reductionProjection12153, oldProjection2696, reductionProjection4459, reductionProjection7647, reductionProjection6670]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1240 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -2, 2, 1], ![-1, 2, 1, -2]]

theorem rowSound1240 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1240) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1240 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1240 H]
  have hshape : boundaryInput1240 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1240 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![360, 1440, 1440, 1440, 288, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1240 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10402, reductionProjection5777, reductionProjection10399, reductionProjection10400, reductionProjection12135, reductionProjection5801] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1240 (0 : Fin 6)) = canonicalInput27905.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1240 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10402 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1240 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10402 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27905 hH))).trans (reductionSound10402 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1240 (1 : Fin 6)) = canonicalInput29670.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1240 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5777 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1240 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5777 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29670 hH))).trans (reductionSound5777 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1240 (2 : Fin 6)) = canonicalInput29860.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1240 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10399 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1240 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10399 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29860 hH))).trans (reductionSound10399 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1240 (3 : Fin 6)) = canonicalInput29885.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1240 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10400 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1240 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10400 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29885 hH))).trans (reductionSound10400 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1240 (4 : Fin 6)) = canonicalInput29892.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1240 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12135 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1240 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12135 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29892 hH))).trans (reductionSound12135 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1240 (5 : Fin 6)) = canonicalInput29893.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1240 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5801 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1240 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5801 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29893 hH))).trans (reductionSound5801 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1240 (j : Fin 6)))
    1440 1440 ![360, 1440, 1440, 1440, 288, 288] ![-5760, -1440, -1440, -1440, -7200, -7200] (extendRow Arithmetic.row1240) ![reductionProjection10402, reductionProjection5777, reductionProjection10399, reductionProjection10400, reductionProjection12135, reductionProjection5801]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1244 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -2, 2, 1], ![-1, 2, -2, 1]]

theorem rowSound1244 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1244) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1244 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1244 H]
  have hshape : boundaryInput1244 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1244 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![18, 288, 72, 720, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1244 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection3829, reductionProjection12135, reductionProjection10419, reductionProjection12112, reductionProjection5777, reductionProjection9958] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1244 (0 : Fin 6)) = canonicalInput30196.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1244 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3829 (Normalization.momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1244 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3829 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30196 hH))).trans (reductionSound3829 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1244 (1 : Fin 6)) = canonicalInput31443.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1244 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12135 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1244 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12135 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31443 hH))).trans (reductionSound12135 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1244 (2 : Fin 6)) = canonicalInput31518.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1244 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10419 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1244 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10419 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31518 hH))).trans (reductionSound10419 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1244 (3 : Fin 6)) = canonicalInput31563.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1244 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12112 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1244 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12112 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31563 hH))).trans (reductionSound12112 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1244 (4 : Fin 6)) = canonicalInput31575.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1244 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5777 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1244 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5777 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31575 hH))).trans (reductionSound5777 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1244 (5 : Fin 6)) = canonicalInput31576.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1244 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9958 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1244 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9958 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31576 hH))).trans (reductionSound9958 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1244 (j : Fin 6)))
    1440 1440 ![18, 288, 72, 720, 1440, 1440] ![-115200, -7200, -28800, -2880, -1440, -1440] (extendRow Arithmetic.row1244) ![reductionProjection3829, reductionProjection12135, reductionProjection10419, reductionProjection12112, reductionProjection5777, reductionProjection9958]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput115 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, -1, 1], ![0, 2, 3, -5]]

theorem rowSound115 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 115) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row115 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row115 H]
  have hshape : boundaryInput115 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput115 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput115 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6269, reductionProjection6283, reductionProjection6283, reductionProjection12180, reductionProjection12172, reductionProjection8488] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput115 (0 : Fin 6)) = canonicalInput7618.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput115 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6269 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput115 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6269 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7618 hH))).trans (reductionSound6269 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput115 (1 : Fin 6)) = canonicalInput20740.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput115 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6283 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput115 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6283 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20740 hH))).trans (reductionSound6283 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput115 (2 : Fin 6)) = canonicalInput20922.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput115 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6283 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput115 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6283 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20922 hH))).trans (reductionSound6283 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput115 (3 : Fin 6)) = canonicalInput20936.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput115 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12180 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput115 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12180 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20936 hH))).trans (reductionSound12180 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput115 (4 : Fin 6)) = canonicalInput20948.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput115 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12172 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput115 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12172 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20948 hH))).trans (reductionSound12172 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput115 (5 : Fin 6)) = canonicalInput20949.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput115 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8488 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput115 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8488 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20949 hH))).trans (reductionSound8488 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput115 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-1440, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row115) ![reductionProjection6269, reductionProjection6283, reductionProjection6283, reductionProjection12180, reductionProjection12172, reductionProjection8488]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput119 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![1, 0, -1, 0], ![0, 0, -2, 2], ![1, 2, 2, -5]]

theorem rowSound119 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 119) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row119 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row119 H]
  have hshape : boundaryInput119 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput119 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput119 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1848, reductionProjection1841, reductionProjection1844, reductionProjection10035, reductionProjection1865, reductionProjection12176] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput119 (0 : Fin 6)) = canonicalInput7397.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput119 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1848 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput119 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1848 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7397 hH))).trans (reductionSound1848 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput119 (1 : Fin 6)) = canonicalInput20714.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput119 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1841 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput119 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1841 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20714 hH))).trans (reductionSound1841 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput119 (2 : Fin 6)) = canonicalInput20825.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput119 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1844 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput119 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1844 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20825 hH))).trans (reductionSound1844 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput119 (3 : Fin 6)) = canonicalInput20846.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput119 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10035 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput119 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10035 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20846 hH))).trans (reductionSound10035 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput119 (4 : Fin 6)) = canonicalInput20849.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput119 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1865 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput119 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1865 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20849 hH))).trans (reductionSound1865 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput119 (5 : Fin 6)) = canonicalInput20850.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput119 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12176 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput119 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12176 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20850 hH))).trans (reductionSound12176 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput119 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 720, 1440] ![-1440, -1440, -1440, -1440, -2880, -1440] (extendRow Arithmetic.row119) ![reductionProjection1848, reductionProjection1841, reductionProjection1844, reductionProjection10035, reductionProjection1865, reductionProjection12176]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput159 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, -2, -1, 2], ![-1, 1, 3, -3]]

theorem rowSound159 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 159) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row159 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row159 H]
  have hshape : boundaryInput159 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput159 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 288, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput159 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8766, reductionProjection8766, reductionProjection8967, reductionProjection9597, reductionProjection12185, reductionProjection8965] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput159 (0 : Fin 6)) = canonicalInput20252.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput159 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8766 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput159 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8766 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20252 hH))).trans (reductionSound8766 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput159 (1 : Fin 6)) = canonicalInput27987.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput159 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8766 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput159 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8766 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27987 hH))).trans (reductionSound8766 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput159 (2 : Fin 6)) = canonicalInput28213.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput159 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8967 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput159 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8967 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28213 hH))).trans (reductionSound8967 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput159 (3 : Fin 6)) = canonicalInput28432.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput159 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9597 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput159 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9597 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28432 hH))).trans (reductionSound9597 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput159 (4 : Fin 6)) = canonicalInput28479.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput159 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12185 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput159 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12185 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28479 hH))).trans (reductionSound12185 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput159 (5 : Fin 6)) = canonicalInput28480.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput159 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8965 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput159 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8965 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28480 hH))).trans (reductionSound8965 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput159 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 288, 1440, 288] ![-1440, -1440, -1440, -7200, -1440, -7200] (extendRow Arithmetic.row159) ![reductionProjection8766, reductionProjection8766, reductionProjection8967, reductionProjection9597, reductionProjection12185, reductionProjection8965]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
