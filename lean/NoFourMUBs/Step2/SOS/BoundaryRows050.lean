import NoFourMUBs.Step2.SOS.Canonical376
import NoFourMUBs.Step2.SOS.Canonical387
import NoFourMUBs.Step2.SOS.Canonical399
import NoFourMUBs.Step2.SOS.Canonical402
import NoFourMUBs.Step2.SOS.Canonical432
import NoFourMUBs.Step2.SOS.Canonical433
import NoFourMUBs.Step2.SOS.Canonical438
import NoFourMUBs.Step2.SOS.Canonical439
import NoFourMUBs.Step2.SOS.Canonical440
import NoFourMUBs.Step2.SOS.Canonical441
import NoFourMUBs.Step2.SOS.Canonical443
import NoFourMUBs.Step2.SOS.Canonical445
import NoFourMUBs.Step2.SOS.Canonical446
import NoFourMUBs.Step2.SOS.Canonical449
import NoFourMUBs.Step2.SOS.Canonical450
import NoFourMUBs.Step2.SOS.Canonical451
import NoFourMUBs.Step2.SOS.Canonical453
import NoFourMUBs.Step2.SOS.Canonical455
import NoFourMUBs.Step2.SOS.Canonical470
import NoFourMUBs.Step2.SOS.Canonical471
import NoFourMUBs.Step2.SOS.Canonical486
import NoFourMUBs.Step2.SOS.Canonical487
import NoFourMUBs.Step2.SOS.Canonical491
import NoFourMUBs.Step2.SOS.Canonical492
import NoFourMUBs.Step2.SOS.Canonical493
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections029
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions042
import NoFourMUBs.Step2.SOS.Reductions045
import NoFourMUBs.Step2.SOS.Reductions046
import NoFourMUBs.Step2.SOS.Reductions052
import NoFourMUBs.Step2.SOS.Reductions129
import NoFourMUBs.Step2.SOS.Reductions166
import NoFourMUBs.Step2.SOS.Reductions171
import NoFourMUBs.Step2.SOS.Reductions172
import NoFourMUBs.Step2.SOS.Reductions249
import NoFourMUBs.Step2.SOS.Reductions264
import NoFourMUBs.Step2.SOS.Reductions265
import NoFourMUBs.Step2.SOS.Reductions271
import NoFourMUBs.Step2.SOS.Reductions272
import NoFourMUBs.Step2.SOS.Reductions273
import NoFourMUBs.Step2.SOS.Reductions274
import NoFourMUBs.Step2.SOS.Reductions275
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical262
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical310

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput263 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![0, -1, 3, -2], ![-2, 1, -2, 3]]

theorem rowSound263 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 263) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row263 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row263 H]
  have hshape : boundaryInput263 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput263 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 1440, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput263 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection2177, oldProjection3303, reductionProjection8685, reductionProjection8688, oldProjection3234, reductionProjection8476] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput263 (0 : Fin 6)) = canonicalInput30193.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput263 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection2177 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput263 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection2177 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30193 hH))).trans (oldProjectionSound2177 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput263 (1 : Fin 6)) = canonicalInput31440.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput263 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection3303 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput263 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection3303 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31440 hH))).trans (oldProjectionSound3303 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput263 (2 : Fin 6)) = canonicalInput31515.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput263 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8685 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput263 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8685 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31515 hH))).trans (reductionSound8685 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput263 (3 : Fin 6)) = canonicalInput31560.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput263 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8688 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput263 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8688 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31560 hH))).trans (reductionSound8688 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput263 (4 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9935 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput263 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3234 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput263 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3234 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9935 hH))).trans (oldProjectionSound3234 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput263 (5 : Fin 6)) = canonicalInput31570.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput263 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8476 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput263 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8476 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31570 hH))).trans (reductionSound8476 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput263 (j : Fin 6)))
    720 1440 ![720, 1440, 1440, 1440, 288, 1440] ![-1440, -720, -720, -720, -3600, -720] (extendRow Arithmetic.row263) ![oldProjection2177, oldProjection3303, reductionProjection8685, reductionProjection8688, oldProjection3234, reductionProjection8476]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput491 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -2, 1, 0], ![1, 1, 0, -2], ![-2, 2, -2, 2]]

theorem rowSound491 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 491) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row491 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row491 H]
  have hshape : boundaryInput491 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput491 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 72, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput491 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1448, reductionProjection1487, reductionProjection1487, reductionProjection1493, oldProjection3288, reductionProjection8696] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput491 (0 : Fin 6)) = canonicalInput24812.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput491 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1448 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput491 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1448 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24812 hH))).trans (reductionSound1448 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput491 (1 : Fin 6)) = canonicalInput28116.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput491 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1487 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput491 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1487 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28116 hH))).trans (reductionSound1487 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput491 (2 : Fin 6)) = canonicalInput28829.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput491 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1487 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput491 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1487 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28829 hH))).trans (reductionSound1487 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput491 (3 : Fin 6)) = canonicalInput28905.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput491 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1493 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput491 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1493 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28905 hH))).trans (reductionSound1493 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput491 (4 : Fin 6)) = canonicalInput28908.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput491 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3288 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput491 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3288 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28908 hH))).trans (oldProjectionSound3288 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput491 (5 : Fin 6)) = canonicalInput28909.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput491 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8696 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput491 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8696 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28909 hH))).trans (reductionSound8696 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput491 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 72, 1440] ![-1440, -1440, -1440, -1440, -28800, -1440] (extendRow Arithmetic.row491) ![reductionProjection1448, reductionProjection1487, reductionProjection1487, reductionProjection1493, oldProjection3288, reductionProjection8696]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput243 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, -2, -1, 2], ![-2, 1, 3, -2]]

theorem rowSound243 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 243) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row243 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row243 H]
  have hshape : boundaryInput243 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput243 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 1440, 1440, 288, 360] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput243 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8714, oldProjection2189, oldProjection3235, reductionProjection8702, reductionProjection8704, oldProjection3259] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput243 (0 : Fin 6)) = canonicalInput27774.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput243 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8714 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput243 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8714 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27774 hH))).trans (reductionSound8714 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput243 (1 : Fin 6)) = canonicalInput28771.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput243 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection2189 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput243 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection2189 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28771 hH))).trans (oldProjectionSound2189 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput243 (2 : Fin 6)) = canonicalInput29016.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput243 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection3235 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput243 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection3235 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29016 hH))).trans (oldProjectionSound3235 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput243 (3 : Fin 6)) = canonicalInput29154.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput243 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8702 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput243 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8702 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29154 hH))).trans (reductionSound8702 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput243 (4 : Fin 6)) = canonicalInput29163.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput243 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8704 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput243 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8704 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29163 hH))).trans (reductionSound8704 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput243 (5 : Fin 6)) = canonicalInput29164.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput243 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3259 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput243 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3259 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29164 hH))).trans (oldProjectionSound3259 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput243 (j : Fin 6)))
    1440 1440 ![288, 288, 1440, 1440, 288, 360] ![-7200, -7200, -1440, -1440, -7200, -5760] (extendRow Arithmetic.row243) ![reductionProjection8714, oldProjection2189, oldProjection3235, reductionProjection8702, reductionProjection8704, oldProjection3259]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput264 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![0, 0, -3, 3], ![-2, 1, 3, -2]]

theorem rowSound264 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 264) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row264 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row264 H]
  have hshape : boundaryInput264 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput264 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 720, 1440, 1440, 288, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput264 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection2200, oldProjection3239, reductionProjection8726, reductionProjection8726, reductionProjection8732, oldProjection3263] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput264 (0 : Fin 6)) = canonicalInput30190.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput264 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection2200 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput264 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection2200 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30190 hH))).trans (oldProjectionSound2200 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput264 (1 : Fin 6)) = canonicalInput31438.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput264 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection3239 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput264 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection3239 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31438 hH))).trans (oldProjectionSound3239 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput264 (2 : Fin 6)) = canonicalInput31512.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput264 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8726 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput264 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8726 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31512 hH))).trans (reductionSound8726 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput264 (3 : Fin 6)) = canonicalInput31550.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput264 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8726 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput264 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8726 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31550 hH))).trans (reductionSound8726 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput264 (4 : Fin 6)) = canonicalInput31556.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput264 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8732 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput264 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8732 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31556 hH))).trans (reductionSound8732 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput264 (5 : Fin 6)) = canonicalInput31557.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput264 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3263 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput264 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3263 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31557 hH))).trans (oldProjectionSound3263 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput264 (j : Fin 6)))
    1440 1440 ![288, 720, 1440, 1440, 288, 288] ![-7200, -2880, -1440, -1440, -7200, -7200] (extendRow Arithmetic.row264) ![oldProjection2200, oldProjection3239, reductionProjection8726, reductionProjection8726, reductionProjection8732, oldProjection3263]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput483 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, -1, 1, 1], ![-1, 2, 0, -1], ![2, -1, 2, -3]]

theorem rowSound483 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 483) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row483 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row483 H]
  have hshape : boundaryInput483 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput483 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 720, 288, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput483 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1362, reductionProjection1362, reductionProjection8735, reductionProjection1358, oldProjection3230, reductionProjection1666] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput483 (0 : Fin 6)) = canonicalInput24775.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput483 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1362 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput483 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1362 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24775 hH))).trans (reductionSound1362 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput483 (1 : Fin 6)) = canonicalInput28084.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput483 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1362 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput483 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1362 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28084 hH))).trans (reductionSound1362 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput483 (2 : Fin 6)) = canonicalInput28239.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput483 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8735 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput483 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8735 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28239 hH))).trans (reductionSound8735 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput483 (3 : Fin 6)) = canonicalInput28365.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput483 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1358 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput483 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1358 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28365 hH))).trans (reductionSound1358 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput483 (4 : Fin 6)) = canonicalInput28369.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput483 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3230 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput483 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3230 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28369 hH))).trans (oldProjectionSound3230 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput483 (5 : Fin 6)) = canonicalInput28371.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput483 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1666 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput483 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1666 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28371 hH))).trans (reductionSound1666 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput483 (j : Fin 6)))
    1440 1440 ![1440, 1440, 720, 288, 1440, 720] ![-1440, -1440, -2880, -7200, -1440, -2880] (extendRow Arithmetic.row483) ![reductionProjection1362, reductionProjection1362, reductionProjection8735, reductionProjection1358, oldProjection3230, reductionProjection1666]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput228 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, -1, -1, 2], ![-2, 1, -1, 2], ![2, -1, 1, -2]]

theorem rowSound228 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 228) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row228 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row228 H]
  have hshape : boundaryInput228 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput228 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 1440, 1440, 288, 144] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput228 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4150, reductionProjection4150, reductionProjection8769, reductionProjection8747, reductionProjection8510, reductionProjection5318] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput228 (0 : Fin 6)) = canonicalInput30141.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput228 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4150 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput228 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4150 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30141 hH))).trans (reductionSound4150 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput228 (1 : Fin 6)) = canonicalInput31160.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput228 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4150 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput228 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4150 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31160 hH))).trans (reductionSound4150 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput228 (2 : Fin 6)) = canonicalInput31203.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput228 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8769 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput228 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8769 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31203 hH))).trans (reductionSound8769 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput228 (3 : Fin 6)) = canonicalInput31225.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput228 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8747 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput228 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8747 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31225 hH))).trans (reductionSound8747 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput228 (4 : Fin 6)) = canonicalInput31228.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput228 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8510 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput228 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8510 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31228 hH))).trans (reductionSound8510 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput228 (5 : Fin 6)) = canonicalInput31229.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput228 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5318 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput228 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5318 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31229 hH))).trans (reductionSound5318 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput228 (j : Fin 6)))
    1440 1440 ![288, 288, 1440, 1440, 288, 144] ![-7200, -7200, -1440, -1440, -7200, -14400] (extendRow Arithmetic.row228) ![reductionProjection4150, reductionProjection4150, reductionProjection8769, reductionProjection8747, reductionProjection8510, reductionProjection5318]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1119 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![1, 0, 1, -2], ![-1, 2, 1, -2]]

theorem rowSound1119 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1119) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1119 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1119 H]
  have hshape : boundaryInput1119 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1119 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1119 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8773, reductionProjection8773, reductionProjection8771, reductionProjection5338, oldProjection3078, reductionProjection7995] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1119 (0 : Fin 6)) = canonicalInput27673.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1119 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8773 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1119 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8773 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27673 hH))).trans (reductionSound8773 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1119 (1 : Fin 6)) = canonicalInput28171.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1119 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8773 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1119 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8773 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28171 hH))).trans (reductionSound8773 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1119 (2 : Fin 6)) = canonicalInput28506.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1119 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8771 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1119 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8771 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28506 hH))).trans (reductionSound8771 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1119 (3 : Fin 6)) = canonicalInput28563.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1119 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5338 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1119 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5338 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28563 hH))).trans (reductionSound5338 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1119 (4 : Fin 6)) = canonicalInput28569.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1119 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3078 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1119 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3078 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28569 hH))).trans (oldProjectionSound3078 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1119 (5 : Fin 6)) = canonicalInput28570.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1119 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7995 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1119 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7995 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28570 hH))).trans (reductionSound7995 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1119 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-1440, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row1119) ![reductionProjection8773, reductionProjection8773, reductionProjection8771, reductionProjection5338, oldProjection3078, reductionProjection7995]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput431 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, 1, -1, 2], ![1, 1, 2, -4]]

theorem rowSound431 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 431) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row431 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row431 H]
  have hshape : boundaryInput431 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput431 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 720, 288, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput431 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5480, reductionProjection5509, reductionProjection8794, reductionProjection5519, oldProjection3124, reductionProjection8811] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput431 (0 : Fin 6)) = canonicalInput24105.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput431 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5480 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput431 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5480 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24105 hH))).trans (reductionSound5480 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput431 (1 : Fin 6)) = canonicalInput25544.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput431 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5509 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput431 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5509 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25544 hH))).trans (reductionSound5509 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput431 (2 : Fin 6)) = canonicalInput25737.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput431 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8794 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput431 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8794 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25737 hH))).trans (reductionSound8794 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput431 (3 : Fin 6)) = canonicalInput25759.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput431 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5519 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput431 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5519 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25759 hH))).trans (reductionSound5519 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput431 (4 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw8408 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput431 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3124 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput431 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3124 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8408 hH))).trans (oldProjectionSound3124 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput431 (5 : Fin 6)) = canonicalInput25763.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput431 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8811 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput431 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8811 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25763 hH))).trans (reductionSound8811 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput431 (j : Fin 6)))
    1440 1440 ![1440, 1440, 720, 288, 1440, 720] ![-1440, -1440, -2880, -7200, -1440, -2880] (extendRow Arithmetic.row431) ![reductionProjection5480, reductionProjection5509, reductionProjection8794, reductionProjection5519, oldProjection3124, reductionProjection8811]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
