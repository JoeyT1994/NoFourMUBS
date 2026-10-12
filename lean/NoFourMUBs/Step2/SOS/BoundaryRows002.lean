import NoFourMUBs.Step2.SOS.Canonical118
import NoFourMUBs.Step2.SOS.Canonical144
import NoFourMUBs.Step2.SOS.Canonical268
import NoFourMUBs.Step2.SOS.Canonical291
import NoFourMUBs.Step2.SOS.Canonical323
import NoFourMUBs.Step2.SOS.Canonical326
import NoFourMUBs.Step2.SOS.Canonical327
import NoFourMUBs.Step2.SOS.Canonical336
import NoFourMUBs.Step2.SOS.Canonical337
import NoFourMUBs.Step2.SOS.Canonical381
import NoFourMUBs.Step2.SOS.Canonical397
import NoFourMUBs.Step2.SOS.Canonical403
import NoFourMUBs.Step2.SOS.Canonical404
import NoFourMUBs.Step2.SOS.Canonical412
import NoFourMUBs.Step2.SOS.Canonical413
import NoFourMUBs.Step2.SOS.Canonical414
import NoFourMUBs.Step2.SOS.Canonical470
import NoFourMUBs.Step2.SOS.Canonical486
import NoFourMUBs.Step2.SOS.Canonical487
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections020
import NoFourMUBs.Step2.SOS.OldProjections030
import NoFourMUBs.Step2.SOS.OldProjections031
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions001
import NoFourMUBs.Step2.SOS.Reductions011
import NoFourMUBs.Step2.SOS.Reductions012
import NoFourMUBs.Step2.SOS.Reductions013
import NoFourMUBs.Step2.SOS.Reductions018
import NoFourMUBs.Step2.SOS.Reductions019
import NoFourMUBs.Step2.SOS.Reductions020
import NoFourMUBs.Step2.SOS.Reductions024
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical268
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical270

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput81 : Matrix (Fin 7) (Fin 3) ℤ := ![![-1, 0, 1], ![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![2, -2, 0], ![-3, 2, 1], ![2, 1, -3]]

theorem rowSound81 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 81) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row81 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row81 H]
  have hshape : boundaryInput81 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput81 2 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![96, 96, 480, 480, 96, 480] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput81 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection378, reductionProjection378, reductionProjection406, reductionProjection419, reductionProjection43, oldProjection1426] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput81 (0 : Fin 6)) = canonicalInput18648.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput81 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection378 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput81 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection378 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound18648 hH))).trans (reductionSound378 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput81 (1 : Fin 6)) = canonicalInput26389.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput81 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection378 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput81 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection378 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26389 hH))).trans (reductionSound378 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput81 (2 : Fin 6)) = canonicalInput26433.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput81 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection406 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput81 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection406 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26433 hH))).trans (reductionSound406 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput81 (3 : Fin 6)) = canonicalInput26486.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput81 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection419 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput81 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection419 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26486 hH))).trans (reductionSound419 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput81 (4 : Fin 6)) = canonicalInput26494.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput81 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection43 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput81 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection43 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26494 hH))).trans (reductionSound43 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput81 (5 : Fin 6)) = canonicalInput26495.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput81 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection1426 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput81 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection1426 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26495 hH))).trans (oldProjectionSound1426 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput81 (j : Fin 6)))
    96 480 ![96, 96, 480, 480, 96, 480] ![-480, -480, -96, -96, -480, -96] (extendRow Arithmetic.row81) ![reductionProjection378, reductionProjection378, reductionProjection406, reductionProjection419, reductionProjection43, oldProjection1426]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput940 : Matrix (Fin 7) (Fin 3) ℤ := ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![1, 0, -1], ![-3, 2, 1], ![1, 2, -3]]

theorem rowSound940 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 940) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row940 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row940 H]
  have hshape : boundaryInput940 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput940 2 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![480, 480, 480, 24, 480, 480] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput940 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection439, reductionProjection439, reductionProjection435, oldProjection1433, oldProjection1425, oldProjection1434] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput940 (0 : Fin 6)) = canonicalInput24396.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput940 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection439 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput940 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection439 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound24396 hH))).trans (reductionSound439 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput940 (1 : Fin 6)) = canonicalInput26417.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput940 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection439 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput940 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection439 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26417 hH))).trans (reductionSound439 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput940 (2 : Fin 6)) = canonicalInput26503.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput940 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection435 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput940 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection435 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26503 hH))).trans (reductionSound435 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput940 (3 : Fin 6)) = canonicalInput26529.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput940 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection1433 (Normalization.momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst boundaryInput940 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection1433 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26529 hH))).trans (oldProjectionSound1433 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput940 (4 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw8654 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput940 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection1425 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput940 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection1425 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8654 hH))).trans (oldProjectionSound1425 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput940 (5 : Fin 6)) = canonicalInput26533.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput940 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection1434 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput940 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection1434 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26533 hH))).trans (oldProjectionSound1434 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput940 (j : Fin 6)))
    480 480 ![480, 480, 480, 24, 480, 480] ![-480, -480, -480, -9600, -480, -480] (extendRow Arithmetic.row940) ![reductionProjection439, reductionProjection439, reductionProjection435, oldProjection1433, oldProjection1425, oldProjection1434]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput948 : Matrix (Fin 7) (Fin 3) ℤ := ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![1, 1, -2], ![1, 1, -2], ![-3, 2, 1]]

theorem rowSound948 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 948) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row948 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row948 H]
  have hshape : boundaryInput948 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput948 2 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![240, 240, 240, 480, 480, 240] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput948 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection441, reductionProjection441, reductionProjection437, oldProjection1434, oldProjection1434, reductionProjection417] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput948 (0 : Fin 6)) = canonicalInput24398.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput948 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection441 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput948 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection441 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound24398 hH))).trans (reductionSound441 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput948 (1 : Fin 6)) = canonicalInput26419.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput948 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection441 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput948 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection441 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26419 hH))).trans (reductionSound441 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput948 (2 : Fin 6)) = canonicalInput26505.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput948 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection437 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput948 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection437 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26505 hH))).trans (reductionSound437 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput948 (3 : Fin 6)) = canonicalInput26534.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput948 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection1434 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput948 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection1434 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26534 hH))).trans (oldProjectionSound1434 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput948 (4 : Fin 6)) = canonicalInput26537.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput948 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection1434 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput948 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection1434 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26537 hH))).trans (oldProjectionSound1434 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput948 (5 : Fin 6)) = canonicalInput26538.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput948 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection417 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput948 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection417 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26538 hH))).trans (reductionSound417 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput948 (j : Fin 6)))
    12 480 ![240, 240, 240, 480, 480, 240] ![-24, -24, -24, -12, -12, -24] (extendRow Arithmetic.row948) ![reductionProjection441, reductionProjection441, reductionProjection437, oldProjection1434, oldProjection1434, reductionProjection417]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput42 : Matrix (Fin 7) (Fin 3) ℤ := ![![-1, 0, 1], ![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![-2, 1, 1], ![2, 3, -5]]

theorem rowSound42 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 42) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row42 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row42 H]
  have hshape : boundaryInput42 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput42 2 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![480, 480, 480, 480, 96, 96] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput42 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection578, reductionProjection578, reductionProjection578, oldProjection1436, reductionProjection411, oldProjection2302] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput42 (0 : Fin 6)) = canonicalInput18641.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput42 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection578 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput42 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection578 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound18641 hH))).trans (reductionSound578 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput42 (1 : Fin 6)) = canonicalInput26382.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput42 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection578 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput42 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection578 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26382 hH))).trans (reductionSound578 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput42 (2 : Fin 6)) = canonicalInput26426.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput42 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection578 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput42 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection578 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26426 hH))).trans (reductionSound578 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput42 (3 : Fin 6)) = canonicalInput26459.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput42 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection1436 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput42 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection1436 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26459 hH))).trans (oldProjectionSound1436 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput42 (4 : Fin 6)) = canonicalInput26467.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput42 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection411 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput42 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection411 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26467 hH))).trans (reductionSound411 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput42 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw8594 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput42 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2302 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput42 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2302 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8594 hH))).trans (oldProjectionSound2302 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput42 (j : Fin 6)))
    480 480 ![480, 480, 480, 480, 96, 96] ![-480, -480, -480, -480, -2400, -2400] (extendRow Arithmetic.row42) ![reductionProjection578, reductionProjection578, reductionProjection578, oldProjection1436, reductionProjection411, oldProjection2302]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput46 : Matrix (Fin 7) (Fin 3) ℤ := ![![-1, 0, 1], ![-1, 0, 1], ![-1, 1, 0], ![0, -1, 1], ![1, -1, 0], ![0, -2, 2], ![2, 3, -5]]

theorem rowSound46 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 46) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row46 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row46 H]
  have hshape : boundaryInput46 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput46 2 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![96, 48, 96, 480, 96, 480] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput46 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection583, reductionProjection587, reductionProjection592, reductionProjection612, reductionProjection589, oldProjection2381] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput46 (0 : Fin 6)) = canonicalInput9263.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput46 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection583 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput46 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection583 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9263 hH))).trans (reductionSound583 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput46 (1 : Fin 6)) = canonicalInput21562.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput46 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection587 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput46 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection587 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21562 hH))).trans (reductionSound587 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput46 (2 : Fin 6)) = canonicalInput21590.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput46 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection592 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput46 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection592 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21590 hH))).trans (reductionSound592 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput46 (3 : Fin 6)) = canonicalInput21593.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput46 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection612 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput46 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection612 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21593 hH))).trans (reductionSound612 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput46 (4 : Fin 6)) = canonicalInput21595.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput46 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection589 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput46 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection589 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21595 hH))).trans (reductionSound589 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput46 (5 : Fin 6)) = canonicalInput21596.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput46 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2381 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput46 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2381 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21596 hH))).trans (oldProjectionSound2381 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput46 (j : Fin 6)))
    480 480 ![96, 48, 96, 480, 96, 480] ![-2400, -4800, -2400, -480, -2400, -480] (extendRow Arithmetic.row46) ![reductionProjection583, reductionProjection587, reductionProjection592, reductionProjection612, reductionProjection589, oldProjection2381]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput91 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, -1, 2, 0], ![2, 2, 1, -5]]

theorem rowSound91 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 91) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row91 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row91 H]
  have hshape : boundaryInput91 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput91 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput91 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection645, reductionProjection664, reductionProjection664, reductionProjection664, reductionProjection627, oldProjection3331] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput91 (0 : Fin 6)) = canonicalInput17192.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput91 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection645 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput91 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection645 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17192 hH))).trans (reductionSound645 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput91 (1 : Fin 6)) = canonicalInput25443.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput91 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection664 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput91 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection664 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25443 hH))).trans (reductionSound664 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput91 (2 : Fin 6)) = canonicalInput25825.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput91 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection664 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput91 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection664 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25825 hH))).trans (reductionSound664 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput91 (3 : Fin 6)) = canonicalInput25867.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput91 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection664 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput91 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection664 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25867 hH))).trans (reductionSound664 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput91 (4 : Fin 6)) = canonicalInput25876.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput91 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection627 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput91 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection627 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25876 hH))).trans (reductionSound627 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput91 (5 : Fin 6)) = canonicalInput25882.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput91 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3331 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput91 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3331 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25882 hH))).trans (oldProjectionSound3331 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput91 (j : Fin 6)))
    1440 1440 ![720, 1440, 1440, 1440, 1440, 1440] ![-2880, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row91) ![reductionProjection645, reductionProjection664, reductionProjection664, reductionProjection664, reductionProjection627, oldProjection3331]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput109 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, -2, 2, 0], ![2, 2, 1, -5]]

theorem rowSound109 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 109) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row109 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row109 H]
  have hshape : boundaryInput109 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput109 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput109 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection636, reductionProjection657, reductionProjection657, reductionProjection657, reductionProjection627, oldProjection3332] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput109 (0 : Fin 6)) = canonicalInput7613.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput109 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection636 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput109 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection636 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7613 hH))).trans (reductionSound636 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput109 (1 : Fin 6)) = canonicalInput20735.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput109 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection657 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput109 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection657 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20735 hH))).trans (reductionSound657 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput109 (2 : Fin 6)) = canonicalInput20917.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput109 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection657 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput109 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection657 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20917 hH))).trans (reductionSound657 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput109 (3 : Fin 6)) = canonicalInput20931.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput109 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection657 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput109 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection657 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20931 hH))).trans (reductionSound657 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput109 (4 : Fin 6)) = canonicalInput20937.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput109 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection627 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput109 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection627 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20937 hH))).trans (reductionSound627 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput109 (5 : Fin 6)) = canonicalInput20939.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput109 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3332 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput109 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3332 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20939 hH))).trans (oldProjectionSound3332 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput109 (j : Fin 6)))
    1440 1440 ![288, 1440, 1440, 1440, 1440, 1440] ![-7200, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row109) ![reductionProjection636, reductionProjection657, reductionProjection657, reductionProjection657, reductionProjection627, oldProjection3332]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput140 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, 1, -1, -2], ![-2, -2, 0, 4]]

theorem rowSound140 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 140) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row140 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row140 H]
  have hshape : boundaryInput140 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput140 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput140 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1458, oldProjection1458, oldProjection1458, reductionProjection780, reductionProjection782, reductionProjection620] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput140 (0 : Fin 6)) = canonicalInput30133.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput140 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1458 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput140 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1458 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30133 hH))).trans (oldProjectionSound1458 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput140 (1 : Fin 6)) = canonicalInput31152.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput140 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1458 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput140 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1458 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31152 hH))).trans (oldProjectionSound1458 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput140 (2 : Fin 6)) = canonicalInput31178.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput140 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection1458 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput140 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection1458 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31178 hH))).trans (oldProjectionSound1458 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput140 (3 : Fin 6)) = canonicalInput31183.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput140 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection780 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput140 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection780 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31183 hH))).trans (reductionSound780 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput140 (4 : Fin 6)) = canonicalInput31186.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput140 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection782 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput140 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection782 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31186 hH))).trans (reductionSound782 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput140 (5 : Fin 6)) = canonicalInput31187.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput140 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection620 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput140 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection620 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31187 hH))).trans (reductionSound620 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput140 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-1440, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row140) ![oldProjection1458, oldProjection1458, oldProjection1458, reductionProjection780, reductionProjection782, reductionProjection620]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
