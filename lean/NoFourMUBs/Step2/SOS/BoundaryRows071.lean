import NoFourMUBs.Step2.SOS.Canonical144
import NoFourMUBs.Step2.SOS.Canonical145
import NoFourMUBs.Step2.SOS.Canonical336
import NoFourMUBs.Step2.SOS.Canonical337
import NoFourMUBs.Step2.SOS.Canonical338
import NoFourMUBs.Step2.SOS.Canonical381
import NoFourMUBs.Step2.SOS.Canonical416
import NoFourMUBs.Step2.SOS.Canonical435
import NoFourMUBs.Step2.SOS.Canonical436
import NoFourMUBs.Step2.SOS.Canonical458
import NoFourMUBs.Step2.SOS.Canonical461
import NoFourMUBs.Step2.SOS.Canonical462
import NoFourMUBs.Step2.SOS.Canonical464
import NoFourMUBs.Step2.SOS.Canonical467
import NoFourMUBs.Step2.SOS.Canonical468
import NoFourMUBs.Step2.SOS.Canonical470
import NoFourMUBs.Step2.SOS.Canonical472
import NoFourMUBs.Step2.SOS.Canonical495
import NoFourMUBs.Step2.SOS.Canonical498
import NoFourMUBs.Step2.SOS.Canonical501
import NoFourMUBs.Step2.SOS.Canonical511
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections020
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections026
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections031
import NoFourMUBs.Step2.SOS.OldProjections035
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions013
import NoFourMUBs.Step2.SOS.Reductions129
import NoFourMUBs.Step2.SOS.Reductions191
import NoFourMUBs.Step2.SOS.Reductions212
import NoFourMUBs.Step2.SOS.Reductions213
import NoFourMUBs.Step2.SOS.Reductions228
import NoFourMUBs.Step2.SOS.Reductions229
import NoFourMUBs.Step2.SOS.Reductions230
import NoFourMUBs.Step2.SOS.Reductions231
import NoFourMUBs.Step2.SOS.Reductions235
import NoFourMUBs.Step2.SOS.Reductions237
import NoFourMUBs.Step2.SOS.Reductions238
import NoFourMUBs.Step2.SOS.Reductions241
import NoFourMUBs.Step2.SOS.Reductions258
import NoFourMUBs.Step2.SOS.Reductions283
import NoFourMUBs.Step2.SOS.Reductions284
import NoFourMUBs.Step2.SOS.Reductions288
import NoFourMUBs.Step2.SOS.Reductions303
import NoFourMUBs.Step2.SOS.Reductions304
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical274

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput1286 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 0, 2, 0], ![0, 2, -1, -1], ![1, -3, 1, 1]]

theorem rowSound1286 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1286) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1286 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1286 H]
  have hshape : boundaryInput1286 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1286 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1286 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7551, reductionProjection7635, reductionProjection7550, reductionProjection9099, reductionProjection7588, reductionProjection9709] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1286 (0 : Fin 6)) = canonicalInput27920.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1286 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7551 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1286 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7551 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27920 hH))).trans (reductionSound7551 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1286 (1 : Fin 6)) = canonicalInput29716.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1286 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7635 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1286 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7635 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29716 hH))).trans (reductionSound7635 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1286 (2 : Fin 6)) = canonicalInput29912.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1286 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7550 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1286 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7550 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29912 hH))).trans (reductionSound7550 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1286 (3 : Fin 6)) = canonicalInput29950.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1286 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9099 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1286 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9099 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29950 hH))).trans (reductionSound9099 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1286 (4 : Fin 6)) = canonicalInput29951.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1286 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7588 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1286 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7588 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29951 hH))).trans (reductionSound7588 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1286 (5 : Fin 6)) = canonicalInput29952.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1286 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9709 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1286 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9709 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29952 hH))).trans (reductionSound9709 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1286 (j : Fin 6)))
    1440 1440 ![1440, 1440, 288, 1440, 288, 1440] ![-1440, -1440, -7200, -1440, -7200, -1440] (extendRow Arithmetic.row1286) ![reductionProjection7551, reductionProjection7635, reductionProjection7550, reductionProjection9099, reductionProjection7588, reductionProjection9709]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1299 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 0, 2, 0], ![0, -2, 1, 1], ![1, 2, 0, -3]]

theorem rowSound1299 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1299) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1299 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1299 H]
  have hshape : boundaryInput1299 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1299 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 1440, 720, 1440, 360] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1299 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7361, reductionProjection7352, reductionProjection7348, reductionProjection9084, reductionProjection9710, reductionProjection7739] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1299 (0 : Fin 6)) = canonicalInput27847.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1299 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7361 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1299 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7361 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27847 hH))).trans (reductionSound7361 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1299 (1 : Fin 6)) = canonicalInput29368.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1299 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7352 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1299 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7352 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29368 hH))).trans (reductionSound7352 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1299 (2 : Fin 6)) = canonicalInput29556.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1299 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7348 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1299 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7348 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29556 hH))).trans (reductionSound7348 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1299 (3 : Fin 6)) = canonicalInput29590.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1299 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9084 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1299 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9084 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29590 hH))).trans (reductionSound9084 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1299 (4 : Fin 6)) = canonicalInput29597.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1299 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9710 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1299 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9710 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29597 hH))).trans (reductionSound9710 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1299 (5 : Fin 6)) = canonicalInput29598.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1299 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7739 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1299 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7739 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29598 hH))).trans (reductionSound7739 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1299 (j : Fin 6)))
    1440 1440 ![288, 1440, 1440, 720, 1440, 360] ![-7200, -1440, -1440, -2880, -1440, -5760] (extendRow Arithmetic.row1299) ![reductionProjection7361, reductionProjection7352, reductionProjection7348, reductionProjection9084, reductionProjection9710, reductionProjection7739]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1331 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 3, -2, -1]]

theorem rowSound1331 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1331) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1331 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1331 H]
  have hshape : boundaryInput1331 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1331 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 288, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1331 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1672, reductionProjection7413, reductionProjection7413, reductionProjection4149, oldProjection3002, reductionProjection9716] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1331 (0 : Fin 6)) = canonicalInput30224.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1331 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1672 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1331 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1672 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30224 hH))).trans (oldProjectionSound1672 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1331 (1 : Fin 6)) = canonicalInput31681.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1331 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7413 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1331 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7413 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31681 hH))).trans (reductionSound7413 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1331 (2 : Fin 6)) = canonicalInput31692.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1331 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7413 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1331 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7413 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31692 hH))).trans (reductionSound7413 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1331 (3 : Fin 6)) = canonicalInput31693.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1331 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4149 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1331 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4149 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31693 hH))).trans (reductionSound4149 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1331 (4 : Fin 6)) = canonicalInput31694.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1331 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3002 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1331 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3002 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31694 hH))).trans (oldProjectionSound3002 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1331 (5 : Fin 6)) = canonicalInput31695.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1331 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9716 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1331 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9716 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31695 hH))).trans (reductionSound9716 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1331 (j : Fin 6)))
    1440 1440 ![1440, 288, 288, 1440, 1440, 288] ![-1440, -7200, -7200, -1440, -1440, -7200] (extendRow Arithmetic.row1331) ![oldProjection1672, reductionProjection7413, reductionProjection7413, reductionProjection4149, oldProjection3002, reductionProjection9716]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1333 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-2, 0, 2, 0], ![0, 2, -1, -1], ![0, -3, 1, 2]]

theorem rowSound1333 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1333) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1333 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1333 H]
  have hshape : boundaryInput1333 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1333 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 288, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1333 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6827, reductionProjection7317, reductionProjection6786, reductionProjection9230, reductionProjection6833, reductionProjection9725] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1333 (0 : Fin 6)) = canonicalInput32123.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1333 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6827 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1333 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6827 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32123 hH))).trans (reductionSound6827 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1333 (1 : Fin 6)) = canonicalInput32714.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1333 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7317 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1333 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7317 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32714 hH))).trans (reductionSound7317 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1333 (2 : Fin 6)) = canonicalInput32726.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1333 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6786 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1333 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6786 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32726 hH))).trans (reductionSound6786 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1333 (3 : Fin 6)) = canonicalInput32737.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1333 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9230 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1333 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9230 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32737 hH))).trans (reductionSound9230 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1333 (4 : Fin 6)) = canonicalInput32738.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1333 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6833 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1333 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6833 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32738 hH))).trans (reductionSound6833 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1333 (5 : Fin 6)) = canonicalInput32739.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1333 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9725 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1333 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9725 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32739 hH))).trans (reductionSound9725 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1333 (j : Fin 6)))
    1440 1440 ![1440, 288, 288, 1440, 1440, 288] ![-1440, -7200, -7200, -1440, -1440, -7200] (extendRow Arithmetic.row1333) ![reductionProjection6827, reductionProjection7317, reductionProjection6786, reductionProjection9230, reductionProjection6833, reductionProjection9725]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput44 : Matrix (Fin 7) (Fin 3) ℤ := ![![-1, 0, 1], ![-1, 0, 1], ![0, -1, 1], ![1, -1, 0], ![1, -1, 0], ![-1, -1, 2], ![1, 4, -5]]

theorem rowSound44 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 44) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row44 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row44 H]
  have hshape : boundaryInput44 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput44 2 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![96, 12, 480, 480, 96, 480] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput44 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8256, reductionProjection9746, oldProjection2375, oldProjection2375, reductionProjection6112, oldProjection2658] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput44 (0 : Fin 6)) = canonicalInput9301.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput44 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8256 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput44 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8256 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9301 hH))).trans (reductionSound8256 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput44 (1 : Fin 6)) = canonicalInput21583.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput44 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9746 (Normalization.momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst boundaryInput44 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9746 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21583 hH))).trans (reductionSound9746 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput44 (2 : Fin 6)) = canonicalInput21630.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput44 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection2375 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput44 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection2375 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21630 hH))).trans (oldProjectionSound2375 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput44 (3 : Fin 6)) = canonicalInput21637.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput44 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2375 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput44 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2375 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21637 hH))).trans (oldProjectionSound2375 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput44 (4 : Fin 6)) = canonicalInput21638.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput44 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6112 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput44 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6112 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21638 hH))).trans (reductionSound6112 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput44 (5 : Fin 6)) = canonicalInput21639.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput44 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2658 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput44 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2658 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21639 hH))).trans (oldProjectionSound2658 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput44 (j : Fin 6)))
    480 480 ![96, 12, 480, 480, 96, 480] ![-2400, -19200, -480, -480, -2400, -480] (extendRow Arithmetic.row44) ![reductionProjection8256, reductionProjection9746, oldProjection2375, oldProjection2375, reductionProjection6112, oldProjection2658]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput45 : Matrix (Fin 7) (Fin 3) ℤ := ![![-1, 0, 1], ![-1, 0, 1], ![-1, 0, 1], ![0, -1, 1], ![0, -1, 1], ![2, -2, 0], ![1, 4, -5]]

theorem rowSound45 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 45) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row45 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row45 H]
  have hshape : boundaryInput45 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput45 2 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![6, 6, 96, 96, 480, 240] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput45 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8261, reductionProjection8261, reductionProjection9696, reductionProjection9696, reductionProjection9749, oldProjection2134] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput45 (0 : Fin 6)) = canonicalInput9259.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput45 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8261 (Normalization.momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst boundaryInput45 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8261 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9259 hH))).trans (reductionSound8261 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput45 (1 : Fin 6)) = canonicalInput21560.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput45 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8261 (Normalization.momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst boundaryInput45 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8261 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21560 hH))).trans (reductionSound8261 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput45 (2 : Fin 6)) = canonicalInput21586.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput45 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9696 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput45 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9696 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21586 hH))).trans (reductionSound9696 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput45 (3 : Fin 6)) = canonicalInput21587.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput45 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9696 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput45 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9696 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21587 hH))).trans (reductionSound9696 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput45 (4 : Fin 6)) = canonicalInput21588.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput45 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9749 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput45 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9749 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21588 hH))).trans (reductionSound9749 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput45 (5 : Fin 6)) = canonicalInput21589.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput45 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2134 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput45 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2134 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21589 hH))).trans (oldProjectionSound2134 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput45 (j : Fin 6)))
    480 480 ![6, 6, 96, 96, 480, 240] ![-38400, -38400, -2400, -2400, -480, -960] (extendRow Arithmetic.row45) ![reductionProjection8261, reductionProjection8261, reductionProjection9696, reductionProjection9696, reductionProjection9749, oldProjection2134]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput50 : Matrix (Fin 7) (Fin 3) ℤ := ![![0, -1, 1], ![0, -1, 1], ![1, 0, -1], ![1, 0, -1], ![1, 0, -1], ![-1, -2, 3], ![-2, 4, -2]]

theorem rowSound50 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 50) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row50 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row50 H]
  have hshape : boundaryInput50 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput50 2 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![96, 480, 480, 480, 96, 480] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput50 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9741, oldProjection1535, oldProjection1535, oldProjection1535, reductionProjection9740, reductionProjection444] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput50 (0 : Fin 6)) = canonicalInput24419.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput50 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9741 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput50 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9741 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound24419 hH))).trans (reductionSound9741 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput50 (1 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw8794 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput50 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1535 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput50 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1535 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8794 hH))).trans (oldProjectionSound1535 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput50 (2 : Fin 6)) = canonicalInput26643.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput50 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection1535 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput50 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection1535 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26643 hH))).trans (oldProjectionSound1535 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput50 (3 : Fin 6)) = canonicalInput26645.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput50 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection1535 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput50 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection1535 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26645 hH))).trans (oldProjectionSound1535 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput50 (4 : Fin 6)) = canonicalInput26646.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput50 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9740 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput50 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9740 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26646 hH))).trans (reductionSound9740 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput50 (5 : Fin 6)) = canonicalInput26647.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput50 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection444 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput50 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection444 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26647 hH))).trans (reductionSound444 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput50 (j : Fin 6)))
    480 480 ![96, 480, 480, 480, 96, 480] ![-2400, -480, -480, -480, -2400, -480] (extendRow Arithmetic.row50) ![reductionProjection9741, oldProjection1535, oldProjection1535, oldProjection1535, reductionProjection9740, reductionProjection444]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput53 : Matrix (Fin 7) (Fin 3) ℤ := ![![0, -1, 1], ![0, 1, -1], ![1, 0, -1], ![1, 0, -1], ![1, 0, -1], ![-2, 3, -1], ![-1, -3, 4]]

theorem rowSound53 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 53) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row53 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row53 H]
  have hshape : boundaryInput53 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput53 2 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![96, 480, 480, 480, 480, 96] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput53 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection312, oldProjection1869, oldProjection1869, oldProjection1869, oldProjection1388, reductionProjection9739] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput53 (0 : Fin 6)) = canonicalInput30098.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput53 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection312 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput53 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection312 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound30098 hH))).trans (oldProjectionSound312 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput53 (1 : Fin 6)) = canonicalInput31915.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput53 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1869 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput53 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1869 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31915 hH))).trans (oldProjectionSound1869 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput53 (2 : Fin 6)) = canonicalInput31918.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput53 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection1869 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput53 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection1869 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31918 hH))).trans (oldProjectionSound1869 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput53 (3 : Fin 6)) = canonicalInput31920.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput53 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection1869 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput53 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection1869 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31920 hH))).trans (oldProjectionSound1869 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput53 (4 : Fin 6)) = canonicalInput31923.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput53 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection1388 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput53 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection1388 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31923 hH))).trans (oldProjectionSound1388 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput53 (5 : Fin 6)) = canonicalInput31924.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput53 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9739 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput53 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9739 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31924 hH))).trans (reductionSound9739 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput53 (j : Fin 6)))
    480 480 ![96, 480, 480, 480, 480, 96] ![-2400, -480, -480, -480, -480, -2400] (extendRow Arithmetic.row53) ![oldProjection312, oldProjection1869, oldProjection1869, oldProjection1869, oldProjection1388, reductionProjection9739]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
