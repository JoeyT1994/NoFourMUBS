import NoFourMUBs.Step2.SOS.Canonical433
import NoFourMUBs.Step2.SOS.Canonical434
import NoFourMUBs.Step2.SOS.Canonical449
import NoFourMUBs.Step2.SOS.Canonical450
import NoFourMUBs.Step2.SOS.Canonical453
import NoFourMUBs.Step2.SOS.Canonical455
import NoFourMUBs.Step2.SOS.Canonical457
import NoFourMUBs.Step2.SOS.Canonical458
import NoFourMUBs.Step2.SOS.Canonical471
import NoFourMUBs.Step2.SOS.Canonical472
import NoFourMUBs.Step2.SOS.Canonical489
import NoFourMUBs.Step2.SOS.Canonical490
import NoFourMUBs.Step2.SOS.Canonical491
import NoFourMUBs.Step2.SOS.Canonical492
import NoFourMUBs.Step2.SOS.Canonical495
import NoFourMUBs.Step2.SOS.Canonical497
import NoFourMUBs.Step2.SOS.Canonical498
import NoFourMUBs.Step2.SOS.Canonical499
import NoFourMUBs.Step2.SOS.Canonical508
import NoFourMUBs.Step2.SOS.Canonical509
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections026
import NoFourMUBs.Step2.SOS.OldProjections027
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions034
import NoFourMUBs.Step2.SOS.Reductions095
import NoFourMUBs.Step2.SOS.Reductions128
import NoFourMUBs.Step2.SOS.Reductions135
import NoFourMUBs.Step2.SOS.Reductions136
import NoFourMUBs.Step2.SOS.Reductions204
import NoFourMUBs.Step2.SOS.Reductions205
import NoFourMUBs.Step2.SOS.Reductions213
import NoFourMUBs.Step2.SOS.Reductions214
import NoFourMUBs.Step2.SOS.Reductions215
import NoFourMUBs.Step2.SOS.Reductions216
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical296
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical310
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical313

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput1277 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![0, -2, 1, 1], ![1, -1, 1, -1], ![-2, 3, -1, 0]]

theorem rowSound1277 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1277) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1277 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1277 H]
  have hshape : boundaryInput1277 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1277 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 720, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1277 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4101, oldProjection1640, reductionProjection6847, reductionProjection4361, oldProjection2973, reductionProjection1089] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1277 (0 : Fin 6)) = canonicalInput27809.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1277 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4101 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1277 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4101 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27809 hH))).trans (reductionSound4101 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1277 (1 : Fin 6)) = canonicalInput28807.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1277 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1640 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1277 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1640 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28807 hH))).trans (oldProjectionSound1640 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1277 (2 : Fin 6)) = canonicalInput29294.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1277 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6847 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1277 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6847 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29294 hH))).trans (reductionSound6847 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1277 (3 : Fin 6)) = canonicalInput29317.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1277 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4361 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1277 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4361 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29317 hH))).trans (reductionSound4361 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1277 (4 : Fin 6)) = canonicalInput29318.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1277 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2973 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1277 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2973 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29318 hH))).trans (oldProjectionSound2973 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1277 (5 : Fin 6)) = canonicalInput29319.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1277 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1089 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1277 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1089 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29319 hH))).trans (reductionSound1089 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1277 (j : Fin 6)))
    1440 1440 ![1440, 720, 1440, 1440, 288, 1440] ![-1440, -2880, -1440, -1440, -7200, -1440] (extendRow Arithmetic.row1277) ![reductionProjection4101, oldProjection1640, reductionProjection6847, reductionProjection4361, oldProjection2973, reductionProjection1089]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1180 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![0, -1, 2, -1], ![1, 1, -1, -1], ![-2, 0, -1, 3]]

theorem rowSound1180 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1180) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1180 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1180 H]
  have hshape : boundaryInput1180 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1180 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 144, 720, 720, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1180 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1690, reductionProjection6865, reductionProjection6866, oldProjection3013, reductionProjection6867, reductionProjection6530] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1180 (0 : Fin 6)) = canonicalInput30187.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1180 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1690 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1180 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1690 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30187 hH))).trans (oldProjectionSound1690 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1180 (1 : Fin 6)) = canonicalInput31434.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1180 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6865 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1180 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6865 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31434 hH))).trans (reductionSound6865 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1180 (2 : Fin 6)) = canonicalInput31509.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1180 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6866 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1180 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6866 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31509 hH))).trans (reductionSound6866 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1180 (3 : Fin 6)) = canonicalInput31544.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1180 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3013 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1180 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3013 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31544 hH))).trans (oldProjectionSound3013 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1180 (4 : Fin 6)) = canonicalInput31545.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1180 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6867 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1180 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6867 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31545 hH))).trans (reductionSound6867 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1180 (5 : Fin 6)) = canonicalInput31546.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1180 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6530 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1180 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6530 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31546 hH))).trans (reductionSound6530 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1180 (j : Fin 6)))
    288 1440 ![288, 144, 720, 720, 1440, 288] ![-1440, -2880, -576, -576, -288, -1440] (extendRow Arithmetic.row1180) ![oldProjection1690, reductionProjection6865, reductionProjection6866, oldProjection3013, reductionProjection6867, reductionProjection6530]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1187 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, 2, -1], ![2, -1, 0, -1], ![-2, 0, -1, 3]]

theorem rowSound1187 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1187) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1187 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1187 H]
  have hshape : boundaryInput1187 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1187 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1187 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection3040, reductionProjection6860, reductionProjection6862, reductionProjection4325, reductionProjection6864, reductionProjection6529] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1187 (0 : Fin 6)) = canonicalInput30166.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1187 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3040 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1187 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3040 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30166 hH))).trans (reductionSound3040 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1187 (1 : Fin 6)) = canonicalInput31309.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1187 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6860 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1187 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6860 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31309 hH))).trans (reductionSound6860 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1187 (2 : Fin 6)) = canonicalInput31338.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1187 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6862 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1187 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6862 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31338 hH))).trans (reductionSound6862 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1187 (3 : Fin 6)) = canonicalInput31402.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1187 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4325 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1187 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4325 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31402 hH))).trans (reductionSound4325 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1187 (4 : Fin 6)) = canonicalInput31404.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1187 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6864 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1187 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6864 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31404 hH))).trans (reductionSound6864 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1187 (5 : Fin 6)) = canonicalInput31405.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1187 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6529 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1187 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6529 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31405 hH))).trans (reductionSound6529 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1187 (j : Fin 6)))
    1440 1440 ![288, 1440, 1440, 1440, 1440, 1440] ![-7200, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row1187) ![reductionProjection3040, reductionProjection6860, reductionProjection6862, reductionProjection4325, reductionProjection6864, reductionProjection6529]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1190 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, -1, 2, -1], ![0, 2, -1, -1], ![-2, 0, -1, 3]]

theorem rowSound1190 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1190) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1190 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1190 H]
  have hshape : boundaryInput1190 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1190 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![72, 1440, 360, 288, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1190 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1655, reductionProjection6869, reductionProjection6870, oldProjection2977, reductionProjection6868, reductionProjection6532] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1190 (0 : Fin 6)) = canonicalInput30231.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1190 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1655 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1190 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1655 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30231 hH))).trans (oldProjectionSound1655 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1190 (1 : Fin 6)) = canonicalInput31691.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1190 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6869 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1190 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6869 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31691 hH))).trans (reductionSound6869 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1190 (2 : Fin 6)) = canonicalInput31704.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1190 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6870 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1190 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6870 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31704 hH))).trans (reductionSound6870 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1190 (3 : Fin 6)) = canonicalInput31728.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1190 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2977 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1190 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2977 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31728 hH))).trans (oldProjectionSound2977 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1190 (4 : Fin 6)) = canonicalInput31730.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1190 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6868 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1190 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6868 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31730 hH))).trans (reductionSound6868 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1190 (5 : Fin 6)) = canonicalInput31731.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1190 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6532 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1190 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6532 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31731 hH))).trans (reductionSound6532 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1190 (j : Fin 6)))
    288 1440 ![72, 1440, 360, 288, 1440, 1440] ![-5760, -288, -1152, -1440, -288, -288] (extendRow Arithmetic.row1190) ![oldProjection1655, reductionProjection6869, reductionProjection6870, oldProjection2977, reductionProjection6868, reductionProjection6532]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput285 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 0, -1, 3], ![0, -1, 4, -3]]

theorem rowSound285 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 285) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row285 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row285 H]
  have hshape : boundaryInput285 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput285 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput285 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6902, reductionProjection6902, reductionProjection6907, oldProjection3218, reductionProjection6580, oldProjection3128] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput285 (0 : Fin 6)) = canonicalInput31843.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput285 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6902 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput285 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6902 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31843 hH))).trans (reductionSound6902 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput285 (1 : Fin 6)) = canonicalInput31931.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput285 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6902 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput285 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6902 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31931 hH))).trans (reductionSound6902 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput285 (2 : Fin 6)) = canonicalInput31947.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput285 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6907 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput285 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6907 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31947 hH))).trans (reductionSound6907 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput285 (3 : Fin 6)) = canonicalInput31960.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput285 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3218 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput285 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3218 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31960 hH))).trans (oldProjectionSound3218 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput285 (4 : Fin 6)) = canonicalInput31964.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput285 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6580 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput285 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6580 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31964 hH))).trans (reductionSound6580 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput285 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw10040 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput285 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3128 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput285 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3128 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical10040 hH))).trans (oldProjectionSound3128 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput285 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 288, 1440] ![-1440, -1440, -1440, -1440, -7200, -1440] (extendRow Arithmetic.row285) ![reductionProjection6902, reductionProjection6902, reductionProjection6907, oldProjection3218, reductionProjection6580, oldProjection3128]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1100 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 0, -1, 3], ![0, -1, 3, -2]]

theorem rowSound1100 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1100) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1100 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1100 H]
  have hshape : boundaryInput1100 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1100 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![144, 144, 720, 288, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1100 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection3130, oldProjection3130, reductionProjection6895, reductionProjection6896, reductionProjection6574, oldProjection3004] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1100 (0 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw10046 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1100 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection3130 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1100 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection3130 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical10046 hH))).trans (oldProjectionSound3130 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1100 (1 : Fin 6)) = canonicalInput32525.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1100 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection3130 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1100 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection3130 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32525 hH))).trans (oldProjectionSound3130 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1100 (2 : Fin 6)) = canonicalInput32563.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1100 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6895 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1100 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6895 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32563 hH))).trans (reductionSound6895 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1100 (3 : Fin 6)) = canonicalInput32580.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1100 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6896 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1100 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6896 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32580 hH))).trans (reductionSound6896 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1100 (4 : Fin 6)) = canonicalInput32585.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1100 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6574 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1100 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6574 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32585 hH))).trans (reductionSound6574 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1100 (5 : Fin 6)) = canonicalInput32586.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1100 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3004 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1100 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3004 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32586 hH))).trans (oldProjectionSound3004 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1100 (j : Fin 6)))
    1440 1440 ![144, 144, 720, 288, 1440, 1440] ![-14400, -14400, -2880, -7200, -1440, -1440] (extendRow Arithmetic.row1100) ![oldProjection3130, oldProjection3130, reductionProjection6895, reductionProjection6896, reductionProjection6574, oldProjection3004]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput242 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 0, 3, -1], ![2, -2, -2, 2]]

theorem rowSound242 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 242) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row242 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row242 H]
  have hshape : boundaryInput242 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput242 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput242 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6936, oldProjection1956, oldProjection3131, oldProjection3131, oldProjection3181, reductionProjection6931] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput242 (0 : Fin 6)) = canonicalInput27762.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput242 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6936 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput242 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6936 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27762 hH))).trans (reductionSound6936 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput242 (1 : Fin 6)) = canonicalInput28759.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput242 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1956 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput242 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1956 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28759 hH))).trans (oldProjectionSound1956 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput242 (2 : Fin 6)) = canonicalInput28992.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput242 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection3131 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput242 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection3131 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28992 hH))).trans (oldProjectionSound3131 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput242 (3 : Fin 6)) = canonicalInput29122.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput242 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3131 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput242 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3131 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29122 hH))).trans (oldProjectionSound3131 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput242 (4 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9490 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput242 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3181 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput242 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3181 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9490 hH))).trans (oldProjectionSound3181 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput242 (5 : Fin 6)) = canonicalInput29124.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput242 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6931 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput242 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6931 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29124 hH))).trans (reductionSound6931 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput242 (j : Fin 6)))
    288 1440 ![1440, 1440, 1440, 1440, 1440, 720] ![-288, -288, -288, -288, -288, -576] (extendRow Arithmetic.row242) ![reductionProjection6936, oldProjection1956, oldProjection3131, oldProjection3131, oldProjection3181, reductionProjection6931]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput259 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, 3, -1], ![1, -2, -2, 3]]

theorem rowSound259 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 259) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row259 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row259 H]
  have hshape : boundaryInput259 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput259 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 288, 288, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput259 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1977, oldProjection3132, oldProjection3132, reductionProjection6939, oldProjection3187, reductionProjection6940] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput259 (0 : Fin 6)) = canonicalInput30177.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput259 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1977 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput259 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1977 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30177 hH))).trans (oldProjectionSound1977 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput259 (1 : Fin 6)) = canonicalInput31415.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput259 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection3132 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput259 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection3132 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31415 hH))).trans (oldProjectionSound3132 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput259 (2 : Fin 6)) = canonicalInput31477.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput259 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection3132 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput259 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection3132 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31477 hH))).trans (oldProjectionSound3132 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput259 (3 : Fin 6)) = canonicalInput31488.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput259 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6939 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput259 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6939 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31488 hH))).trans (reductionSound6939 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput259 (4 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9928 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput259 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3187 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput259 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3187 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9928 hH))).trans (oldProjectionSound3187 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput259 (5 : Fin 6)) = canonicalInput31491.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput259 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6940 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput259 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6940 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31491 hH))).trans (reductionSound6940 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput259 (j : Fin 6)))
    1440 1440 ![1440, 288, 288, 288, 1440, 1440] ![-1440, -7200, -7200, -7200, -1440, -1440] (extendRow Arithmetic.row259) ![oldProjection1977, oldProjection3132, oldProjection3132, reductionProjection6939, oldProjection3187, reductionProjection6940]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
