import NoFourMUBs.Step2.SOS.Canonical269
import NoFourMUBs.Step2.SOS.Canonical291
import NoFourMUBs.Step2.SOS.Canonical317
import NoFourMUBs.Step2.SOS.Canonical356
import NoFourMUBs.Step2.SOS.Canonical381
import NoFourMUBs.Step2.SOS.Canonical387
import NoFourMUBs.Step2.SOS.Canonical398
import NoFourMUBs.Step2.SOS.Canonical404
import NoFourMUBs.Step2.SOS.Canonical406
import NoFourMUBs.Step2.SOS.Canonical414
import NoFourMUBs.Step2.SOS.Canonical415
import NoFourMUBs.Step2.SOS.Canonical416
import NoFourMUBs.Step2.SOS.Canonical438
import NoFourMUBs.Step2.SOS.Canonical439
import NoFourMUBs.Step2.SOS.Canonical441
import NoFourMUBs.Step2.SOS.Canonical443
import NoFourMUBs.Step2.SOS.Canonical445
import NoFourMUBs.Step2.SOS.Canonical447
import NoFourMUBs.Step2.SOS.Canonical448
import NoFourMUBs.Step2.SOS.Canonical459
import NoFourMUBs.Step2.SOS.Canonical460
import NoFourMUBs.Step2.SOS.Canonical498
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections026
import NoFourMUBs.Step2.SOS.OldProjections032
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions039
import NoFourMUBs.Step2.SOS.Reductions045
import NoFourMUBs.Step2.SOS.Reductions049
import NoFourMUBs.Step2.SOS.Reductions053
import NoFourMUBs.Step2.SOS.Reductions166
import NoFourMUBs.Step2.SOS.Reductions181
import NoFourMUBs.Step2.SOS.Reductions182
import NoFourMUBs.Step2.SOS.Reductions188
import NoFourMUBs.Step2.SOS.Reductions304
import NoFourMUBs.Step2.SOS.Reductions308
import NoFourMUBs.Step2.SOS.Reductions312
import NoFourMUBs.Step2.SOS.Reductions313
import NoFourMUBs.Step2.SOS.Reductions327
import NoFourMUBs.Step2.SOS.Reductions328
import NoFourMUBs.Step2.SOS.Reductions329
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical270
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical274

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput60 : Matrix (Fin 7) (Fin 3) ℤ := ![![-1, 0, 1], ![0, -1, 1], ![1, -1, 0], ![1, 0, -1], ![1, 0, -1], ![-1, -2, 3], ![-1, 4, -3]]

theorem rowSound60 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 60) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row60 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row60 H]
  have hshape : boundaryInput60 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput60 2 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![48, 480, 12, 12, 96, 480] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput60 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10523, oldProjection2475, oldProjection744, oldProjection744, reductionProjection1717, oldProjection1535] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput60 (0 : Fin 6)) = canonicalInput18669.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput60 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10523 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput60 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10523 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound18669 hH))).trans (reductionSound10523 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput60 (1 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw8670 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput60 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection2475 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput60 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection2475 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8670 hH))).trans (oldProjectionSound2475 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput60 (2 : Fin 6)) = canonicalInput26618.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput60 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection744 (Normalization.momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst boundaryInput60 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection744 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26618 hH))).trans (oldProjectionSound744 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput60 (3 : Fin 6)) = canonicalInput26638.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput60 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection744 (Normalization.momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst boundaryInput60 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection744 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26638 hH))).trans (oldProjectionSound744 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput60 (4 : Fin 6)) = canonicalInput26640.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput60 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1717 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput60 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1717 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26640 hH))).trans (reductionSound1717 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput60 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw8794 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput60 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection1535 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput60 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection1535 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8794 hH))).trans (oldProjectionSound1535 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput60 (j : Fin 6)))
    480 480 ![48, 480, 12, 12, 96, 480] ![-4800, -480, -19200, -19200, -2400, -480] (extendRow Arithmetic.row60) ![reductionProjection10523, oldProjection2475, oldProjection744, oldProjection744, reductionProjection1717, oldProjection1535]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput315 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-1, -2, 1, 2], ![1, 0, 3, -4]]

theorem rowSound315 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 315) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row315 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row315 H]
  have hshape : boundaryInput315 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput315 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput315 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5337, reductionProjection5793, reductionProjection5793, reductionProjection10464, reductionProjection1266, reductionProjection10520] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput315 (0 : Fin 6)) = canonicalInput20321.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput315 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5337 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput315 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5337 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20321 hH))).trans (reductionSound5337 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput315 (1 : Fin 6)) = canonicalInput28033.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput315 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5793 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput315 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5793 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28033 hH))).trans (reductionSound5793 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput315 (2 : Fin 6)) = canonicalInput29397.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput315 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5793 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput315 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5793 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29397 hH))).trans (reductionSound5793 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput315 (3 : Fin 6)) = canonicalInput29437.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput315 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10464 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput315 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10464 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29437 hH))).trans (reductionSound10464 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput315 (4 : Fin 6)) = canonicalInput29447.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput315 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1266 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput315 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1266 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29447 hH))).trans (reductionSound1266 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput315 (5 : Fin 6)) = canonicalInput29449.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput315 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10520 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput315 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10520 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29449 hH))).trans (reductionSound10520 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput315 (j : Fin 6)))
    288 1440 ![1440, 1440, 1440, 1440, 720, 1440] ![-288, -288, -288, -288, -576, -288] (extendRow Arithmetic.row315) ![reductionProjection5337, reductionProjection5793, reductionProjection5793, reductionProjection10464, reductionProjection1266, reductionProjection10520]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput405 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -2, 2, 1], ![-1, 3, 1, -3]]

theorem rowSound405 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 405) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row405 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row405 H]
  have hshape : boundaryInput405 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput405 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput405 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10510, reductionProjection10510, reductionProjection10514, reductionProjection9856, reductionProjection9988, reductionProjection5826] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput405 (0 : Fin 6)) = canonicalInput24802.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput405 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10510 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput405 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10510 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24802 hH))).trans (reductionSound10510 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput405 (1 : Fin 6)) = canonicalInput28109.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput405 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10510 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput405 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10510 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28109 hH))).trans (reductionSound10510 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput405 (2 : Fin 6)) = canonicalInput28527.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput405 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10514 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput405 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10514 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28527 hH))).trans (reductionSound10514 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput405 (3 : Fin 6)) = canonicalInput28666.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput405 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9856 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput405 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9856 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28666 hH))).trans (reductionSound9856 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput405 (4 : Fin 6)) = canonicalInput28674.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput405 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9988 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput405 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9988 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28674 hH))).trans (reductionSound9988 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput405 (5 : Fin 6)) = canonicalInput28678.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput405 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5826 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput405 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5826 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28678 hH))).trans (reductionSound5826 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput405 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-1440, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row405) ![reductionProjection10510, reductionProjection10510, reductionProjection10514, reductionProjection9856, reductionProjection9988, reductionProjection5826]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput459 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -2, 2, 1], ![0, 3, 1, -4]]

theorem rowSound459 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 459) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row459 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row459 H]
  have hshape : boundaryInput459 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput459 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 720, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput459 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10502, reductionProjection10504, reductionProjection10517, reductionProjection10517, reductionProjection1468, reductionProjection9861] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput459 (0 : Fin 6)) = canonicalInput17235.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput459 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10502 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput459 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10502 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17235 hH))).trans (reductionSound10502 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput459 (1 : Fin 6)) = canonicalInput25477.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput459 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10504 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput459 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10504 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25477 hH))).trans (reductionSound10504 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput459 (2 : Fin 6)) = canonicalInput25906.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput459 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10517 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput459 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10517 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25906 hH))).trans (reductionSound10517 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput459 (3 : Fin 6)) = canonicalInput26000.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput459 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10517 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput459 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10517 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26000 hH))).trans (reductionSound10517 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput459 (4 : Fin 6)) = canonicalInput26001.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput459 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1468 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput459 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1468 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26001 hH))).trans (reductionSound1468 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput459 (5 : Fin 6)) = canonicalInput26002.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput459 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9861 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput459 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9861 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26002 hH))).trans (reductionSound9861 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput459 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 720, 720] ![-1440, -1440, -1440, -1440, -2880, -2880] (extendRow Arithmetic.row459) ![reductionProjection10502, reductionProjection10504, reductionProjection10517, reductionProjection10517, reductionProjection1468, reductionProjection9861]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1113 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, -1, 2, 1], ![2, 0, 1, -3]]

theorem rowSound1113 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1113) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1113 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1113 H]
  have hshape : boundaryInput1113 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1113 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1113 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6023, reductionProjection6023, reductionProjection10522, oldProjection2446, reductionProjection1572, reductionProjection5826] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1113 (0 : Fin 6)) = canonicalInput24778.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1113 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6023 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1113 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6023 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24778 hH))).trans (reductionSound6023 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1113 (1 : Fin 6)) = canonicalInput28087.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1113 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6023 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1113 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6023 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28087 hH))).trans (reductionSound6023 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1113 (2 : Fin 6)) = canonicalInput28263.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1113 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10522 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1113 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10522 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28263 hH))).trans (reductionSound10522 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1113 (3 : Fin 6)) = canonicalInput28382.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1113 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2446 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1113 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2446 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28382 hH))).trans (oldProjectionSound2446 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1113 (4 : Fin 6)) = canonicalInput28388.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1113 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1572 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1113 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1572 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28388 hH))).trans (reductionSound1572 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1113 (5 : Fin 6)) = canonicalInput28391.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1113 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5826 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1113 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5826 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28391 hH))).trans (reductionSound5826 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1113 (j : Fin 6)))
    720 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-720, -720, -720, -720, -720, -720] (extendRow Arithmetic.row1113) ![reductionProjection6023, reductionProjection6023, reductionProjection10522, oldProjection2446, reductionProjection1572, reductionProjection5826]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput33 : Matrix (Fin 7) (Fin 3) ℤ := ![![-1, 0, 1], ![0, 1, -1], ![0, 1, -1], ![1, -1, 0], ![1, 0, -1], ![-1, 3, -2], ![0, -4, 4]]

theorem rowSound33 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 33) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row33 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row33 H]
  have hshape : boundaryInput33 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput33 2 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![96, 96, 480, 96, 480, 48] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput33 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10526, reductionProjection10526, reductionProjection10536, oldProjection880, oldProjection1879, reductionProjection9759] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput33 (0 : Fin 6)) = canonicalInput22832.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput33 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10526 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput33 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10526 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound22832 hH))).trans (reductionSound10526 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput33 (1 : Fin 6)) = canonicalInput31875.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput33 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10526 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput33 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10526 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31875 hH))).trans (reductionSound10526 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput33 (2 : Fin 6)) = canonicalInput31878.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput33 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10536 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput33 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10536 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31878 hH))).trans (reductionSound10536 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput33 (3 : Fin 6)) = canonicalInput31881.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput33 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection880 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput33 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection880 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31881 hH))).trans (oldProjectionSound880 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput33 (4 : Fin 6)) = canonicalInput31885.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput33 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection1879 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput33 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection1879 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31885 hH))).trans (oldProjectionSound1879 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput33 (5 : Fin 6)) = canonicalInput31886.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput33 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9759 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput33 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9759 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31886 hH))).trans (reductionSound9759 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput33 (j : Fin 6)))
    480 480 ![96, 96, 480, 96, 480, 48] ![-2400, -2400, -480, -2400, -480, -4800] (extendRow Arithmetic.row33) ![reductionProjection10526, reductionProjection10526, reductionProjection10536, oldProjection880, oldProjection1879, reductionProjection9759]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput36 : Matrix (Fin 7) (Fin 3) ℤ := ![![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![1, -1, 0], ![-1, 2, -1], ![-1, -2, 3], ![1, 2, -3]]

theorem rowSound36 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 36) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row36 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row36 H]
  have hshape : boundaryInput36 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput36 2 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![240, 480, 480, 240, 480, 480] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput36 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10530, oldProjection867, reductionProjection10532, oldProjection2465, reductionProjection10017, oldProjection2470] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput36 (0 : Fin 6)) = canonicalInput24405.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput36 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10530 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput36 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10530 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound24405 hH))).trans (reductionSound10530 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput36 (1 : Fin 6)) = canonicalInput26546.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput36 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection867 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput36 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection867 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26546 hH))).trans (oldProjectionSound867 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput36 (2 : Fin 6)) = canonicalInput26568.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput36 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10532 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput36 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10532 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26568 hH))).trans (reductionSound10532 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput36 (3 : Fin 6)) = canonicalInput26576.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput36 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2465 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput36 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2465 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26576 hH))).trans (oldProjectionSound2465 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput36 (4 : Fin 6)) = canonicalInput26579.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput36 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10017 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput36 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10017 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26579 hH))).trans (reductionSound10017 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput36 (5 : Fin 6)) = canonicalInput26580.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput36 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2470 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput36 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2470 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26580 hH))).trans (oldProjectionSound2470 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput36 (j : Fin 6)))
    480 480 ![240, 480, 480, 240, 480, 480] ![-960, -480, -480, -960, -480, -480] (extendRow Arithmetic.row36) ![reductionProjection10530, oldProjection867, reductionProjection10532, oldProjection2465, reductionProjection10017, oldProjection2470]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput917 : Matrix (Fin 7) (Fin 3) ℤ := ![![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![1, 0, -1], ![-1, 2, -1], ![1, 1, -2], ![-1, -2, 3]]

theorem rowSound917 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 917) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row917 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row917 H]
  have hshape : boundaryInput917 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput917 2 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![480, 240, 480, 240, 480, 480] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput917 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10531, oldProjection870, oldProjection2470, oldProjection2466, oldProjection2471, reductionProjection10018] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput917 (0 : Fin 6)) = canonicalInput24412.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput917 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10531 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput917 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10531 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound24412 hH))).trans (reductionSound10531 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput917 (1 : Fin 6)) = canonicalInput26553.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput917 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection870 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput917 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection870 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26553 hH))).trans (oldProjectionSound870 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput917 (2 : Fin 6)) = canonicalInput26581.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput917 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection2470 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput917 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection2470 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26581 hH))).trans (oldProjectionSound2470 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput917 (3 : Fin 6)) = canonicalInput26601.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput917 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2466 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput917 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2466 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26601 hH))).trans (oldProjectionSound2466 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput917 (4 : Fin 6)) = canonicalInput26602.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput917 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2471 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput917 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2471 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26602 hH))).trans (oldProjectionSound2471 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput917 (5 : Fin 6)) = canonicalInput26603.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput917 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10018 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput917 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10018 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26603 hH))).trans (reductionSound10018 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput917 (j : Fin 6)))
    480 480 ![480, 240, 480, 240, 480, 480] ![-480, -960, -480, -960, -480, -480] (extendRow Arithmetic.row917) ![reductionProjection10531, oldProjection870, oldProjection2470, oldProjection2466, oldProjection2471, reductionProjection10018]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
