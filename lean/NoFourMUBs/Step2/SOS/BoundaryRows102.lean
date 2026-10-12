import NoFourMUBs.Step2.SOS.Canonical267
import NoFourMUBs.Step2.SOS.Canonical388
import NoFourMUBs.Step2.SOS.Canonical396
import NoFourMUBs.Step2.SOS.Canonical400
import NoFourMUBs.Step2.SOS.Canonical401
import NoFourMUBs.Step2.SOS.Canonical435
import NoFourMUBs.Step2.SOS.Canonical436
import NoFourMUBs.Step2.SOS.Canonical446
import NoFourMUBs.Step2.SOS.Canonical459
import NoFourMUBs.Step2.SOS.Canonical461
import NoFourMUBs.Step2.SOS.Canonical462
import NoFourMUBs.Step2.SOS.Canonical463
import NoFourMUBs.Step2.SOS.Canonical466
import NoFourMUBs.Step2.SOS.Canonical467
import NoFourMUBs.Step2.SOS.Canonical497
import NoFourMUBs.Step2.SOS.Canonical498
import NoFourMUBs.Step2.SOS.Canonical499
import NoFourMUBs.Step2.SOS.Canonical500
import NoFourMUBs.Step2.SOS.Canonical501
import NoFourMUBs.Step2.SOS.Canonical508
import NoFourMUBs.Step2.SOS.Canonical509
import NoFourMUBs.Step2.SOS.Canonical510
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions042
import NoFourMUBs.Step2.SOS.Reductions043
import NoFourMUBs.Step2.SOS.Reductions046
import NoFourMUBs.Step2.SOS.Reductions050
import NoFourMUBs.Step2.SOS.Reductions132
import NoFourMUBs.Step2.SOS.Reductions134
import NoFourMUBs.Step2.SOS.Reductions144
import NoFourMUBs.Step2.SOS.Reductions178
import NoFourMUBs.Step2.SOS.Reductions315
import NoFourMUBs.Step2.SOS.Reductions324
import NoFourMUBs.Step2.SOS.Reductions357
import NoFourMUBs.Step2.SOS.Reductions358
import NoFourMUBs.Step2.SOS.Reductions360
import NoFourMUBs.Step2.SOS.Reductions362
import NoFourMUBs.Step2.SOS.Reductions363
import NoFourMUBs.Step2.SOS.Reductions364
import NoFourMUBs.Step2.SOS.Reductions365
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical302

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput553 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 0, 1], ![1, 0, -1, 0], ![-1, -1, 2, 0], ![-1, 1, 1, -1], ![2, 2, -2, -2]]

theorem rowSound553 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 553) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row553 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row553 H]
  have hshape : boundaryInput553 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput553 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 1440, 1440, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput553 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1383, reductionProjection1383, reductionProjection1630, reductionProjection1369, reductionProjection1498, reductionProjection11627] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput553 (0 : Fin 6)) = canonicalInput17113.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput553 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1383 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput553 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1383 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17113 hH))).trans (reductionSound1383 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput553 (1 : Fin 6)) = canonicalInput25402.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput553 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1383 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput553 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1383 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25402 hH))).trans (reductionSound1383 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput553 (2 : Fin 6)) = canonicalInput25602.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput553 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1630 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput553 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1630 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25602 hH))).trans (reductionSound1630 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput553 (3 : Fin 6)) = canonicalInput25665.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput553 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1369 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput553 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1369 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25665 hH))).trans (reductionSound1369 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput553 (4 : Fin 6)) = canonicalInput25667.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput553 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1498 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput553 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1498 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25667 hH))).trans (reductionSound1498 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput553 (5 : Fin 6)) = canonicalInput25668.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput553 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11627 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput553 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11627 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25668 hH))).trans (reductionSound11627 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput553 (j : Fin 6)))
    1440 1440 ![288, 288, 1440, 1440, 720, 1440] ![-7200, -7200, -1440, -1440, -2880, -1440] (extendRow Arithmetic.row553) ![reductionProjection1383, reductionProjection1383, reductionProjection1630, reductionProjection1369, reductionProjection1498, reductionProjection11627]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1193 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, -1, 1, 1], ![-1, 0, -1, 2], ![1, -1, 2, -2]]

theorem rowSound1193 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1193) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1193 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1193 H]
  have hshape : boundaryInput1193 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1193 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1193 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection11630, reductionProjection11630, reductionProjection11635, reductionProjection5709, reductionProjection11617, reductionProjection11524] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1193 (0 : Fin 6)) = canonicalInput32057.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1193 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11630 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1193 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11630 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32057 hH))).trans (reductionSound11630 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1193 (1 : Fin 6)) = canonicalInput32534.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1193 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11630 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1193 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11630 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32534 hH))).trans (reductionSound11630 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1193 (2 : Fin 6)) = canonicalInput32603.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1193 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11635 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1193 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11635 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32603 hH))).trans (reductionSound11635 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1193 (3 : Fin 6)) = canonicalInput32627.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1193 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5709 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1193 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5709 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32627 hH))).trans (reductionSound5709 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1193 (4 : Fin 6)) = canonicalInput32628.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1193 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11617 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1193 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11617 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32628 hH))).trans (reductionSound11617 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1193 (5 : Fin 6)) = canonicalInput32629.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1193 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11524 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1193 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11524 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32629 hH))).trans (reductionSound11524 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1193 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 720, 1440] ![-1440, -1440, -1440, -1440, -2880, -1440] (extendRow Arithmetic.row1193) ![reductionProjection11630, reductionProjection11630, reductionProjection11635, reductionProjection5709, reductionProjection11617, reductionProjection11524]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1198 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, 1, 1], ![-1, 0, -1, 2], ![0, 1, 2, -3]]

theorem rowSound1198 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1198) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1198 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1198 H]
  have hshape : boundaryInput1198 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1198 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 720, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1198 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection11633, reductionProjection11637, reductionProjection11639, reductionProjection4244, reductionProjection11618, reductionProjection11446] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1198 (0 : Fin 6)) = canonicalInput32104.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1198 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11633 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1198 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11633 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32104 hH))).trans (reductionSound11633 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1198 (1 : Fin 6)) = canonicalInput32687.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1198 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11637 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1198 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11637 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32687 hH))).trans (reductionSound11637 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1198 (2 : Fin 6)) = canonicalInput32692.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1198 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11639 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1198 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11639 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32692 hH))).trans (reductionSound11639 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1198 (3 : Fin 6)) = canonicalInput32700.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1198 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4244 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1198 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4244 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32700 hH))).trans (reductionSound4244 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1198 (4 : Fin 6)) = canonicalInput32701.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1198 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11618 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1198 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11618 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32701 hH))).trans (reductionSound11618 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1198 (5 : Fin 6)) = canonicalInput32702.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1198 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11446 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1198 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11446 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32702 hH))).trans (reductionSound11446 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1198 (j : Fin 6)))
    1440 1440 ![1440, 1440, 288, 720, 1440, 720] ![-1440, -1440, -7200, -2880, -1440, -2880] (extendRow Arithmetic.row1198) ![reductionProjection11633, reductionProjection11637, reductionProjection11639, reductionProjection4244, reductionProjection11618, reductionProjection11446]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1203 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, 0, -1, 2], ![1, 0, 2, -3]]

theorem rowSound1203 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1203) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1203 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1203 H]
  have hshape : boundaryInput1203 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1203 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 720, 1440, 1440, 144, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1203 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection11621, reductionProjection11625, reductionProjection11629, reductionProjection4293, reductionProjection11610, reductionProjection11457] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1203 (0 : Fin 6)) = canonicalInput31848.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1203 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11621 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1203 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11621 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31848 hH))).trans (reductionSound11621 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1203 (1 : Fin 6)) = canonicalInput31950.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1203 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11625 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1203 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11625 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31950 hH))).trans (reductionSound11625 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1203 (2 : Fin 6)) = canonicalInput31991.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1203 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11629 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1203 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11629 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31991 hH))).trans (reductionSound11629 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1203 (3 : Fin 6)) = canonicalInput32003.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1203 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4293 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1203 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4293 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32003 hH))).trans (reductionSound4293 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1203 (4 : Fin 6)) = canonicalInput32004.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1203 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11610 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1203 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11610 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32004 hH))).trans (reductionSound11610 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1203 (5 : Fin 6)) = canonicalInput32005.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1203 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11457 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1203 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11457 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32005 hH))).trans (reductionSound11457 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1203 (j : Fin 6)))
    1440 1440 ![1440, 720, 1440, 1440, 144, 1440] ![-1440, -2880, -1440, -1440, -14400, -1440] (extendRow Arithmetic.row1203) ![reductionProjection11621, reductionProjection11625, reductionProjection11629, reductionProjection4293, reductionProjection11610, reductionProjection11457]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1205 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, 1, 1], ![-1, 0, -1, 2], ![0, 1, 2, -3]]

theorem rowSound1205 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1205) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1205 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1205 H]
  have hshape : boundaryInput1205 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1205 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![144, 1440, 1440, 1440, 1440, 360] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1205 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection11623, reductionProjection11632, reductionProjection11633, reductionProjection4610, reductionProjection11613, reductionProjection11475] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1205 (0 : Fin 6)) = canonicalInput31872.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1205 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11623 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1205 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11623 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31872 hH))).trans (reductionSound11623 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1205 (1 : Fin 6)) = canonicalInput32100.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1205 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11632 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1205 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11632 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32100 hH))).trans (reductionSound11632 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1205 (2 : Fin 6)) = canonicalInput32104.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1205 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11633 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1205 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11633 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32104 hH))).trans (reductionSound11633 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1205 (3 : Fin 6)) = canonicalInput32112.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1205 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4610 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1205 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4610 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32112 hH))).trans (reductionSound4610 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1205 (4 : Fin 6)) = canonicalInput32113.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1205 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11613 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1205 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11613 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32113 hH))).trans (reductionSound11613 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1205 (5 : Fin 6)) = canonicalInput32114.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1205 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11475 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1205 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11475 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32114 hH))).trans (reductionSound11475 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1205 (j : Fin 6)))
    288 1440 ![144, 1440, 1440, 1440, 1440, 360] ![-2880, -288, -288, -288, -288, -1152] (extendRow Arithmetic.row1205) ![reductionProjection11623, reductionProjection11632, reductionProjection11633, reductionProjection4610, reductionProjection11613, reductionProjection11475]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput833 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, 1, 1], ![-1, 1, 2, -2]]

theorem rowSound833 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 833) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row833 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row833 H]
  have hshape : boundaryInput833 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput833 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 1440, 288, 720, 288, 360] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput833 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection11678, oldProjection3082, reductionProjection11676, reductionProjection11675, oldProjection3036, reductionProjection11651] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput833 (0 : Fin 6)) = canonicalInput27906.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput833 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11678 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput833 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11678 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27906 hH))).trans (reductionSound11678 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput833 (1 : Fin 6)) = canonicalInput29671.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput833 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection3082 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput833 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection3082 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29671 hH))).trans (oldProjectionSound3082 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput833 (2 : Fin 6)) = canonicalInput29861.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput833 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11676 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput833 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11676 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29861 hH))).trans (reductionSound11676 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput833 (3 : Fin 6)) = canonicalInput29886.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput833 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11675 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput833 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11675 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29886 hH))).trans (reductionSound11675 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput833 (4 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9668 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput833 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3036 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput833 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3036 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9668 hH))).trans (oldProjectionSound3036 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput833 (5 : Fin 6)) = canonicalInput29894.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput833 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11651 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput833 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11651 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29894 hH))).trans (reductionSound11651 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput833 (j : Fin 6)))
    1440 1440 ![720, 1440, 288, 720, 288, 360] ![-2880, -1440, -7200, -2880, -7200, -5760] (extendRow Arithmetic.row833) ![reductionProjection11678, oldProjection3082, reductionProjection11676, reductionProjection11675, oldProjection3036, reductionProjection11651]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1297 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![1, -1, 1, -1], ![-1, 2, 1, -2]]

theorem rowSound1297 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1297) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1297 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1297 H]
  have hshape : boundaryInput1297 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1297 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1297 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10391, reductionProjection10395, reductionProjection10389, reductionProjection11652, oldProjection3078, reductionProjection11545] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1297 (0 : Fin 6)) = canonicalInput27862.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1297 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10391 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1297 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10391 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27862 hH))).trans (reductionSound10391 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1297 (1 : Fin 6)) = canonicalInput29383.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1297 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10395 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1297 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10395 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29383 hH))).trans (reductionSound10395 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1297 (2 : Fin 6)) = canonicalInput29571.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1297 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10389 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1297 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10389 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29571 hH))).trans (reductionSound10389 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1297 (3 : Fin 6)) = canonicalInput29629.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1297 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11652 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1297 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11652 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29629 hH))).trans (reductionSound11652 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1297 (4 : Fin 6)) = canonicalInput29642.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1297 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3078 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1297 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3078 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29642 hH))).trans (oldProjectionSound3078 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1297 (5 : Fin 6)) = canonicalInput29643.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1297 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11545 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1297 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11545 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29643 hH))).trans (reductionSound11545 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1297 (j : Fin 6)))
    1440 1440 ![1440, 1440, 288, 1440, 1440, 1440] ![-1440, -1440, -7200, -1440, -1440, -1440] (extendRow Arithmetic.row1297) ![reductionProjection10391, reductionProjection10395, reductionProjection10389, reductionProjection11652, oldProjection3078, reductionProjection11545]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput500 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, 1, -1, 1], ![1, 1, 2, -4]]

theorem rowSound500 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 500) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row500 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row500 H]
  have hshape : boundaryInput500 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput500 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 720, 1440, 1440, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput500 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10100, oldProjection3345, reductionProjection10106, reductionProjection10097, oldProjection3342, reductionProjection11681] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput500 (0 : Fin 6)) = canonicalInput24858.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput500 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10100 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput500 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10100 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24858 hH))).trans (reductionSound10100 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput500 (1 : Fin 6)) = canonicalInput28566.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput500 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection3345 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput500 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection3345 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28566 hH))).trans (oldProjectionSound3345 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput500 (2 : Fin 6)) = canonicalInput29549.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput500 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10106 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput500 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10106 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29549 hH))).trans (reductionSound10106 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput500 (3 : Fin 6)) = canonicalInput29621.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput500 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10097 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput500 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10097 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29621 hH))).trans (reductionSound10097 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput500 (4 : Fin 6)) = canonicalInput29634.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput500 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3342 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput500 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3342 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29634 hH))).trans (oldProjectionSound3342 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput500 (5 : Fin 6)) = canonicalInput29637.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput500 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11681 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput500 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11681 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29637 hH))).trans (reductionSound11681 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput500 (j : Fin 6)))
    288 1440 ![288, 720, 1440, 1440, 720, 1440] ![-1440, -576, -288, -288, -576, -288] (extendRow Arithmetic.row500) ![reductionProjection10100, oldProjection3345, reductionProjection10106, reductionProjection10097, oldProjection3342, reductionProjection11681]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
