import NoFourMUBs.Step2.SOS.Canonical316
import NoFourMUBs.Step2.SOS.Canonical317
import NoFourMUBs.Step2.SOS.Canonical432
import NoFourMUBs.Step2.SOS.Canonical435
import NoFourMUBs.Step2.SOS.Canonical436
import NoFourMUBs.Step2.SOS.Canonical437
import NoFourMUBs.Step2.SOS.Canonical438
import NoFourMUBs.Step2.SOS.Canonical439
import NoFourMUBs.Step2.SOS.Canonical442
import NoFourMUBs.Step2.SOS.Canonical443
import NoFourMUBs.Step2.SOS.Canonical444
import NoFourMUBs.Step2.SOS.Canonical448
import NoFourMUBs.Step2.SOS.Canonical459
import NoFourMUBs.Step2.SOS.Canonical461
import NoFourMUBs.Step2.SOS.Canonical464
import NoFourMUBs.Step2.SOS.Canonical465
import NoFourMUBs.Step2.SOS.Canonical467
import NoFourMUBs.Step2.SOS.Canonical471
import NoFourMUBs.Step2.SOS.Canonical490
import NoFourMUBs.Step2.SOS.Canonical491
import NoFourMUBs.Step2.SOS.Canonical492
import NoFourMUBs.Step2.SOS.Canonical497
import NoFourMUBs.Step2.SOS.Canonical499
import NoFourMUBs.Step2.SOS.Canonical500
import NoFourMUBs.Step2.SOS.Canonical508
import NoFourMUBs.Step2.SOS.Canonical509
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.OldProjections037
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions080
import NoFourMUBs.Step2.SOS.Reductions179
import NoFourMUBs.Step2.SOS.Reductions198
import NoFourMUBs.Step2.SOS.Reductions200
import NoFourMUBs.Step2.SOS.Reductions203
import NoFourMUBs.Step2.SOS.Reductions204
import NoFourMUBs.Step2.SOS.Reductions205
import NoFourMUBs.Step2.SOS.Reductions206
import NoFourMUBs.Step2.SOS.Reductions207
import NoFourMUBs.Step2.SOS.Reductions208
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical291
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical302
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical314

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput273 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![0, -1, -2, 3], ![-2, 0, 4, -2]]

theorem rowSound273 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 273) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row273 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row273 H]
  have hshape : boundaryInput273 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput273 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 720, 720, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput273 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection3116, oldProjection3116, reductionProjection6560, reductionProjection6556, reductionProjection6580, oldProjection3128] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput273 (0 : Fin 6)) = canonicalInput32022.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput273 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection3116 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput273 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection3116 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32022 hH))).trans (oldProjectionSound3116 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput273 (1 : Fin 6)) = canonicalInput32528.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput273 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection3116 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput273 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection3116 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32528 hH))).trans (oldProjectionSound3116 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput273 (2 : Fin 6)) = canonicalInput32566.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput273 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6560 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput273 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6560 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32566 hH))).trans (reductionSound6560 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput273 (3 : Fin 6)) = canonicalInput32583.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput273 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6556 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput273 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6556 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32583 hH))).trans (reductionSound6556 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput273 (4 : Fin 6)) = canonicalInput32591.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput273 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6580 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput273 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6580 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32591 hH))).trans (reductionSound6580 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput273 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw10076 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput273 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3128 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput273 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3128 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical10076 hH))).trans (oldProjectionSound3128 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput273 (j : Fin 6)))
    1440 1440 ![720, 720, 720, 1440, 288, 1440] ![-2880, -2880, -2880, -1440, -7200, -1440] (extendRow Arithmetic.row273) ![oldProjection3116, oldProjection3116, reductionProjection6560, reductionProjection6556, reductionProjection6580, oldProjection3128]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput279 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, -1, -2, 3], ![-2, 0, 4, -2]]

theorem rowSound279 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 279) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row279 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row279 H]
  have hshape : boundaryInput279 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput279 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 720, 288, 144] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput279 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6570, reductionProjection6574, reductionProjection6565, oldProjection3116, reductionProjection6585, oldProjection3130] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput279 (0 : Fin 6)) = canonicalInput31855.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput279 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6570 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput279 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6570 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31855 hH))).trans (reductionSound6570 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput279 (1 : Fin 6)) = canonicalInput31967.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput279 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6574 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput279 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6574 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31967 hH))).trans (reductionSound6574 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput279 (2 : Fin 6)) = canonicalInput31998.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput279 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6565 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput279 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6565 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31998 hH))).trans (reductionSound6565 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput279 (3 : Fin 6)) = canonicalInput32022.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput279 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3116 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput279 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3116 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32022 hH))).trans (oldProjectionSound3116 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput279 (4 : Fin 6)) = canonicalInput32026.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput279 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6585 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput279 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6585 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32026 hH))).trans (reductionSound6585 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput279 (5 : Fin 6)) = canonicalInput32027.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput279 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3130 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput279 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3130 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32027 hH))).trans (oldProjectionSound3130 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput279 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 720, 288, 144] ![-1440, -1440, -1440, -2880, -7200, -14400] (extendRow Arithmetic.row279) ![reductionProjection6570, reductionProjection6574, reductionProjection6565, oldProjection3116, reductionProjection6585, oldProjection3130]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput237 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, -2, -1, 1], ![-2, 0, 4, -2]]

theorem rowSound237 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 237) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row237 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row237 H]
  have hshape : boundaryInput237 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput237 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 720, 288, 288, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput237 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6599, reductionProjection6599, oldProjection3118, oldProjection3118, reductionProjection6594, oldProjection3135] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput237 (0 : Fin 6)) = canonicalInput27650.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput237 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6599 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput237 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6599 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27650 hH))).trans (reductionSound6599 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput237 (1 : Fin 6)) = canonicalInput28152.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput237 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6599 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput237 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6599 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28152 hH))).trans (reductionSound6599 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput237 (2 : Fin 6)) = canonicalInput28398.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput237 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection3118 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput237 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection3118 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28398 hH))).trans (oldProjectionSound3118 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput237 (3 : Fin 6)) = canonicalInput28439.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput237 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3118 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput237 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3118 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28439 hH))).trans (oldProjectionSound3118 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput237 (4 : Fin 6)) = canonicalInput28453.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput237 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6594 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput237 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6594 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28453 hH))).trans (reductionSound6594 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput237 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9331 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput237 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3135 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput237 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3135 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9331 hH))).trans (oldProjectionSound3135 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput237 (j : Fin 6)))
    1440 1440 ![720, 720, 288, 288, 720, 1440] ![-2880, -2880, -7200, -7200, -2880, -1440] (extendRow Arithmetic.row237) ![reductionProjection6599, reductionProjection6599, oldProjection3118, oldProjection3118, reductionProjection6594, oldProjection3135]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput296 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, 0, -1], ![1, 0, 0, -1], ![-1, 2, -2, 1], ![0, -2, 4, -2]]

theorem rowSound296 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 296) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row296 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row296 H]
  have hshape : boundaryInput296 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput296 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 1440, 1440, 720, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput296 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6527, reductionProjection6527, oldProjection2820, oldProjection2820, reductionProjection6594, oldProjection2925] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput296 (0 : Fin 6)) = canonicalInput20263.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput296 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6527 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput296 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6527 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20263 hH))).trans (reductionSound6527 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput296 (1 : Fin 6)) = canonicalInput27996.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput296 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6527 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput296 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6527 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27996 hH))).trans (reductionSound6527 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput296 (2 : Fin 6)) = canonicalInput28309.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput296 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection2820 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput296 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection2820 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28309 hH))).trans (oldProjectionSound2820 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput296 (3 : Fin 6)) = canonicalInput28682.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput296 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2820 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput296 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2820 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28682 hH))).trans (oldProjectionSound2820 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput296 (4 : Fin 6)) = canonicalInput28685.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput296 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6594 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput296 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6594 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28685 hH))).trans (reductionSound6594 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput296 (5 : Fin 6)) = canonicalInput28690.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput296 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2925 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput296 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2925 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28690 hH))).trans (oldProjectionSound2925 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput296 (j : Fin 6)))
    720 1440 ![288, 288, 1440, 1440, 720, 720] ![-3600, -3600, -720, -720, -1440, -1440] (extendRow Arithmetic.row296) ![reductionProjection6527, reductionProjection6527, oldProjection2820, oldProjection2820, reductionProjection6594, oldProjection2925]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput316 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 0, -1], ![-1, 1, -2, 2], ![0, -2, 4, -2]]

theorem rowSound316 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 316) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row316 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row316 H]
  have hshape : boundaryInput316 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput316 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 1440, 288, 288, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput316 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6539, reductionProjection6609, reductionProjection6401, reductionProjection6401, reductionProjection6601, reductionProjection2583] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput316 (0 : Fin 6)) = canonicalInput20335.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput316 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6539 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput316 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6539 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20335 hH))).trans (reductionSound6539 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput316 (1 : Fin 6)) = canonicalInput28042.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput316 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6609 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput316 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6609 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28042 hH))).trans (reductionSound6609 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput316 (2 : Fin 6)) = canonicalInput29421.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput316 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6401 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput316 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6401 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29421 hH))).trans (reductionSound6401 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput316 (3 : Fin 6)) = canonicalInput29722.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput316 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6401 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput316 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6401 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29722 hH))).trans (reductionSound6401 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput316 (4 : Fin 6)) = canonicalInput29726.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput316 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6601 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput316 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6601 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29726 hH))).trans (reductionSound6601 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput316 (5 : Fin 6)) = canonicalInput29730.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput316 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2583 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput316 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2583 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29730 hH))).trans (reductionSound2583 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput316 (j : Fin 6)))
    1440 1440 ![720, 1440, 288, 288, 1440, 288] ![-2880, -1440, -7200, -7200, -1440, -7200] (extendRow Arithmetic.row316) ![reductionProjection6539, reductionProjection6609, reductionProjection6401, reductionProjection6401, reductionProjection6601, reductionProjection2583]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput249 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, -2, 2], ![-2, 0, 4, -2]]

theorem rowSound249 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 249) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row249 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row249 H]
  have hshape : boundaryInput249 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput249 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput249 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6624, oldProjection3122, oldProjection3122, reductionProjection6609, reductionProjection6606, oldProjection3143] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput249 (0 : Fin 6)) = canonicalInput27888.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput249 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6624 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput249 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6624 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27888 hH))).trans (reductionSound6624 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput249 (1 : Fin 6)) = canonicalInput29524.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput249 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection3122 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput249 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection3122 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29524 hH))).trans (oldProjectionSound3122 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput249 (2 : Fin 6)) = canonicalInput29764.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput249 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection3122 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput249 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection3122 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29764 hH))).trans (oldProjectionSound3122 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput249 (3 : Fin 6)) = canonicalInput29816.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput249 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6609 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput249 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6609 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29816 hH))).trans (reductionSound6609 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput249 (4 : Fin 6)) = canonicalInput29820.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput249 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6606 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput249 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6606 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29820 hH))).trans (reductionSound6606 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput249 (5 : Fin 6)) = canonicalInput29821.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput249 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3143 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput249 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3143 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29821 hH))).trans (oldProjectionSound3143 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput249 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-1440, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row249) ![reductionProjection6624, oldProjection3122, oldProjection3122, reductionProjection6609, reductionProjection6606, oldProjection3143]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput250 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-2, 1, -1, 2], ![0, -2, 4, -2]]

theorem rowSound250 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 250) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row250 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row250 H]
  have hshape : boundaryInput250 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput250 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 288, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput250 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6628, reductionProjection6611, reductionProjection6619, reductionProjection6620, reductionProjection6615, oldProjection3144] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput250 (0 : Fin 6)) = canonicalInput27916.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput250 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6628 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput250 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6628 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27916 hH))).trans (reductionSound6628 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput250 (1 : Fin 6)) = canonicalInput29710.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput250 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6611 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput250 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6611 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29710 hH))).trans (reductionSound6611 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput250 (2 : Fin 6)) = canonicalInput29908.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput250 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6619 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput250 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6619 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29908 hH))).trans (reductionSound6619 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput250 (3 : Fin 6)) = canonicalInput29937.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput250 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6620 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput250 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6620 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29937 hH))).trans (reductionSound6620 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput250 (4 : Fin 6)) = canonicalInput29943.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput250 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6615 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput250 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6615 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29943 hH))).trans (reductionSound6615 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput250 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9684 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput250 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3144 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput250 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3144 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9684 hH))).trans (oldProjectionSound3144 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput250 (j : Fin 6)))
    288 1440 ![720, 288, 1440, 1440, 1440, 1440] ![-576, -1440, -288, -288, -288, -288] (extendRow Arithmetic.row250) ![reductionProjection6628, reductionProjection6611, reductionProjection6619, reductionProjection6620, reductionProjection6615, oldProjection3144]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput383 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 0, -2, 0], ![-2, 0, -1, 3], ![0, -2, 3, -1]]

theorem rowSound383 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 383) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row383 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row383 H]
  have hshape : boundaryInput383 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput383 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![18, 1440, 1440, 36, 18, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput383 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5746, reductionProjection6683, reductionProjection6683, reductionProjection6686, reductionProjection6338, reductionProjection6666] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput383 (0 : Fin 6)) = canonicalInput30179.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput383 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5746 (Normalization.momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst boundaryInput383 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5746 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30179 hH))).trans (reductionSound5746 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput383 (1 : Fin 6)) = canonicalInput31421.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput383 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6683 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput383 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6683 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31421 hH))).trans (reductionSound6683 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput383 (2 : Fin 6)) = canonicalInput31479.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput383 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6683 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput383 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6683 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31479 hH))).trans (reductionSound6683 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput383 (3 : Fin 6)) = canonicalInput31495.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput383 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6686 (Normalization.momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst boundaryInput383 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6686 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31495 hH))).trans (reductionSound6686 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput383 (4 : Fin 6)) = canonicalInput31497.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput383 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6338 (Normalization.momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst boundaryInput383 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6338 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31497 hH))).trans (reductionSound6338 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput383 (5 : Fin 6)) = canonicalInput31498.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput383 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6666 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput383 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6666 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31498 hH))).trans (reductionSound6666 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput383 (j : Fin 6)))
    1440 1440 ![18, 1440, 1440, 36, 18, 1440] ![-115200, -1440, -1440, -57600, -115200, -1440] (extendRow Arithmetic.row383) ![reductionProjection5746, reductionProjection6683, reductionProjection6683, reductionProjection6686, reductionProjection6338, reductionProjection6666]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
