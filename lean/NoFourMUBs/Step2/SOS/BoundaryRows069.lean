import NoFourMUBs.Step2.SOS.Canonical386
import NoFourMUBs.Step2.SOS.Canonical433
import NoFourMUBs.Step2.SOS.Canonical434
import NoFourMUBs.Step2.SOS.Canonical435
import NoFourMUBs.Step2.SOS.Canonical438
import NoFourMUBs.Step2.SOS.Canonical440
import NoFourMUBs.Step2.SOS.Canonical441
import NoFourMUBs.Step2.SOS.Canonical442
import NoFourMUBs.Step2.SOS.Canonical449
import NoFourMUBs.Step2.SOS.Canonical452
import NoFourMUBs.Step2.SOS.Canonical454
import NoFourMUBs.Step2.SOS.Canonical456
import NoFourMUBs.Step2.SOS.Canonical457
import NoFourMUBs.Step2.SOS.Canonical461
import NoFourMUBs.Step2.SOS.Canonical465
import NoFourMUBs.Step2.SOS.Canonical466
import NoFourMUBs.Step2.SOS.Canonical471
import NoFourMUBs.Step2.SOS.Canonical486
import NoFourMUBs.Step2.SOS.Canonical488
import NoFourMUBs.Step2.SOS.Canonical499
import NoFourMUBs.Step2.SOS.Canonical501
import NoFourMUBs.Step2.SOS.Canonical508
import NoFourMUBs.Step2.SOS.Canonical509
import NoFourMUBs.Step2.SOS.Canonical510
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.OldProjections041
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions042
import NoFourMUBs.Step2.SOS.Reductions135
import NoFourMUBs.Step2.SOS.Reductions148
import NoFourMUBs.Step2.SOS.Reductions171
import NoFourMUBs.Step2.SOS.Reductions173
import NoFourMUBs.Step2.SOS.Reductions260
import NoFourMUBs.Step2.SOS.Reductions289
import NoFourMUBs.Step2.SOS.Reductions296
import NoFourMUBs.Step2.SOS.Reductions300
import NoFourMUBs.Step2.SOS.Reductions301
import NoFourMUBs.Step2.SOS.Reductions302
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical289
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical298

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput482 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 1, -1], ![1, -1, 1, -1], ![-2, 3, 1, -2]]

theorem rowSound482 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 482) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row482 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row482 H]
  have hshape : boundaryInput482 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput482 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 720, 720, 1440, 1440, 120] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput482 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9495, reductionProjection9495, reductionProjection9495, reductionProjection1351, reductionProjection1351, reductionProjection9692] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput482 (0 : Fin 6)) = canonicalInput24767.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput482 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9495 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput482 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9495 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24767 hH))).trans (reductionSound9495 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput482 (1 : Fin 6)) = canonicalInput28076.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput482 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9495 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput482 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9495 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28076 hH))).trans (reductionSound9495 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput482 (2 : Fin 6)) = canonicalInput28224.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput482 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9495 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput482 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9495 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28224 hH))).trans (reductionSound9495 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput482 (3 : Fin 6)) = canonicalInput28279.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput482 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1351 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput482 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1351 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28279 hH))).trans (reductionSound1351 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput482 (4 : Fin 6)) = canonicalInput28287.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput482 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1351 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput482 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1351 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28287 hH))).trans (reductionSound1351 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput482 (5 : Fin 6)) = canonicalInput28288.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((120 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput482 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9692 (Normalization.momentVector H)
      have hh : (120 : ℝ) * injectiveMoment H (mergeFirst boundaryInput482 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9692 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28288 hH))).trans (reductionSound9692 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput482 (j : Fin 6)))
    720 1440 ![720, 720, 720, 1440, 1440, 120] ![-1440, -1440, -1440, -720, -720, -8640] (extendRow Arithmetic.row482) ![reductionProjection9495, reductionProjection9495, reductionProjection9495, reductionProjection1351, reductionProjection1351, reductionProjection9692]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput822 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, -1, 2, -1], ![-2, 2, -1, 1]]

theorem rowSound822 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 822) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row822 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row822 H]
  have hshape : boundaryInput822 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput822 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![144, 720, 1440, 1440, 360, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput822 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9663, oldProjection1751, reductionProjection9668, oldProjection3093, oldProjection3044, oldProjection3311] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput822 (0 : Fin 6)) = canonicalInput27803.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput822 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9663 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput822 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9663 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27803 hH))).trans (reductionSound9663 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput822 (1 : Fin 6)) = canonicalInput28799.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput822 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1751 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput822 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1751 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28799 hH))).trans (oldProjectionSound1751 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput822 (2 : Fin 6)) = canonicalInput29209.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput822 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9668 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput822 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9668 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29209 hH))).trans (reductionSound9668 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput822 (3 : Fin 6)) = canonicalInput29276.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput822 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3093 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput822 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3093 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29276 hH))).trans (oldProjectionSound3093 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput822 (4 : Fin 6)) = canonicalInput29283.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput822 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3044 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput822 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3044 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29283 hH))).trans (oldProjectionSound3044 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput822 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9546 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput822 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3311 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput822 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3311 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9546 hH))).trans (oldProjectionSound3311 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput822 (j : Fin 6)))
    1440 1440 ![144, 720, 1440, 1440, 360, 1440] ![-14400, -2880, -1440, -1440, -5760, -1440] (extendRow Arithmetic.row822) ![reductionProjection9663, oldProjection1751, reductionProjection9668, oldProjection3093, oldProjection3044, oldProjection3311]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1078 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 2, 1, -1], ![0, -1, -2, 3]]

theorem rowSound1078 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1078) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1078 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1078 H]
  have hshape : boundaryInput1078 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1078 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1078 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1635, oldProjection1635, reductionProjection9649, reductionProjection9667, reductionProjection4348, oldProjection3314] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1078 (0 : Fin 6)) = canonicalInput30146.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1078 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1635 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1078 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1635 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30146 hH))).trans (oldProjectionSound1635 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1078 (1 : Fin 6)) = canonicalInput31166.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1078 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1635 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1078 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1635 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31166 hH))).trans (oldProjectionSound1635 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1078 (2 : Fin 6)) = canonicalInput31246.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1078 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9649 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1078 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9649 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31246 hH))).trans (reductionSound9649 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1078 (3 : Fin 6)) = canonicalInput31255.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1078 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9667 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1078 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9667 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31255 hH))).trans (reductionSound9667 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1078 (4 : Fin 6)) = canonicalInput31256.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1078 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4348 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1078 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4348 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31256 hH))).trans (reductionSound4348 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1078 (5 : Fin 6)) = canonicalInput31257.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1078 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3314 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1078 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3314 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31257 hH))).trans (oldProjectionSound3314 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1078 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-1440, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row1078) ![oldProjection1635, oldProjection1635, reductionProjection9649, reductionProjection9667, reductionProjection4348, oldProjection3314]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1109 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 2, 1, -1], ![1, 0, 2, -3]]

theorem rowSound1109 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1109) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1109 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1109 H]
  have hshape : boundaryInput1109 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1109 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1109 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9629, reductionProjection9629, reductionProjection9629, reductionProjection9256, oldProjection3467, reductionProjection9691] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1109 (0 : Fin 6)) = canonicalInput24764.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1109 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9629 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1109 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9629 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24764 hH))).trans (reductionSound9629 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1109 (1 : Fin 6)) = canonicalInput28073.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1109 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9629 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1109 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9629 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28073 hH))).trans (reductionSound9629 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1109 (2 : Fin 6)) = canonicalInput28221.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1109 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9629 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1109 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9629 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28221 hH))).trans (reductionSound9629 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1109 (3 : Fin 6)) = canonicalInput28272.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1109 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9256 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1109 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9256 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28272 hH))).trans (reductionSound9256 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1109 (4 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9275 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1109 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3467 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1109 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3467 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9275 hH))).trans (oldProjectionSound3467 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1109 (5 : Fin 6)) = canonicalInput28282.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1109 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9691 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1109 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9691 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28282 hH))).trans (reductionSound9691 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1109 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 288] ![-1440, -1440, -1440, -1440, -1440, -7200] (extendRow Arithmetic.row1109) ![reductionProjection9629, reductionProjection9629, reductionProjection9629, reductionProjection9256, oldProjection3467, reductionProjection9691]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1135 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![-1, 1, 1, -1], ![2, -2, 1, -1]]

theorem rowSound1135 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1135) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1135 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1135 H]
  have hshape : boundaryInput1135 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1135 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 1440, 288, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1135 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9653, oldProjection1847, reductionProjection9668, reductionProjection9651, oldProjection3093, reductionProjection8320] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1135 (0 : Fin 6)) = canonicalInput27753.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1135 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9653 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1135 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9653 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27753 hH))).trans (reductionSound9653 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1135 (1 : Fin 6)) = canonicalInput28748.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1135 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1847 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1135 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1847 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28748 hH))).trans (oldProjectionSound1847 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1135 (2 : Fin 6)) = canonicalInput28955.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1135 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9668 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1135 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9668 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28955 hH))).trans (reductionSound9668 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1135 (3 : Fin 6)) = canonicalInput29092.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1135 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9651 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1135 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9651 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29092 hH))).trans (reductionSound9651 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1135 (4 : Fin 6)) = canonicalInput29093.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1135 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3093 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1135 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3093 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29093 hH))).trans (oldProjectionSound3093 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1135 (5 : Fin 6)) = canonicalInput29094.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1135 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8320 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1135 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8320 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29094 hH))).trans (reductionSound8320 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1135 (j : Fin 6)))
    1440 1440 ![288, 288, 1440, 288, 1440, 288] ![-7200, -7200, -1440, -7200, -1440, -7200] (extendRow Arithmetic.row1135) ![reductionProjection9653, oldProjection1847, reductionProjection9668, reductionProjection9651, oldProjection3093, reductionProjection8320]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1238 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 1, 2, -1], ![1, -3, 1, 1]]

theorem rowSound1238 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1238) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1238 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1238 H]
  have hshape : boundaryInput1238 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1238 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 720, 720, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1238 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5478, reductionProjection5564, reductionProjection5564, reductionProjection5473, oldProjection3197, reductionProjection9667] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1238 (0 : Fin 6)) = canonicalInput27893.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1238 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5478 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1238 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5478 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27893 hH))).trans (reductionSound5478 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1238 (1 : Fin 6)) = canonicalInput29532.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1238 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5564 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1238 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5564 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29532 hH))).trans (reductionSound5564 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1238 (2 : Fin 6)) = canonicalInput29769.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1238 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5564 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1238 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5564 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29769 hH))).trans (reductionSound5564 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1238 (3 : Fin 6)) = canonicalInput29827.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1238 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5473 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1238 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5473 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29827 hH))).trans (reductionSound5473 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1238 (4 : Fin 6)) = canonicalInput29834.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1238 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3197 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1238 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3197 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29834 hH))).trans (oldProjectionSound3197 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1238 (5 : Fin 6)) = canonicalInput29835.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1238 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9667 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1238 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9667 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29835 hH))).trans (reductionSound9667 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1238 (j : Fin 6)))
    1440 1440 ![720, 720, 720, 1440, 1440, 1440] ![-2880, -2880, -2880, -1440, -1440, -1440] (extendRow Arithmetic.row1238) ![reductionProjection5478, reductionProjection5564, reductionProjection5564, reductionProjection5473, oldProjection3197, reductionProjection9667]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1245 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, -1, 3, 0], ![1, -2, -1, 2]]

theorem rowSound1245 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1245) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1245 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1245 H]
  have hshape : boundaryInput1245 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1245 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 288, 288, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1245 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5565, reductionProjection5565, reductionProjection5565, reductionProjection4739, reductionProjection9691, reductionProjection4740] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1245 (0 : Fin 6)) = canonicalInput31987.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1245 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5565 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1245 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5565 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31987 hH))).trans (reductionSound5565 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1245 (1 : Fin 6)) = canonicalInput32521.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1245 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5565 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1245 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5565 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32521 hH))).trans (reductionSound5565 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1245 (2 : Fin 6)) = canonicalInput32556.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1245 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5565 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1245 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5565 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32556 hH))).trans (reductionSound5565 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1245 (3 : Fin 6)) = canonicalInput32557.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1245 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4739 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1245 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4739 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32557 hH))).trans (reductionSound4739 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1245 (4 : Fin 6)) = canonicalInput32558.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1245 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9691 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1245 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9691 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32558 hH))).trans (reductionSound9691 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1245 (5 : Fin 6)) = canonicalInput32559.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1245 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4740 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1245 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4740 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32559 hH))).trans (reductionSound4740 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1245 (j : Fin 6)))
    1440 1440 ![288, 288, 288, 288, 288, 1440] ![-7200, -7200, -7200, -7200, -7200, -1440] (extendRow Arithmetic.row1245) ![reductionProjection5565, reductionProjection5565, reductionProjection5565, reductionProjection4739, reductionProjection9691, reductionProjection4740]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1246 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, 1, 2, -1], ![0, -3, 1, 2]]

theorem rowSound1246 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1246) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1246 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1246 H]
  have hshape : boundaryInput1246 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1246 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 1440, 1440, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1246 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5565, reductionProjection5565, reductionProjection5475, reductionProjection5475, oldProjection2976, reductionProjection9685] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1246 (0 : Fin 6)) = canonicalInput32068.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1246 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5565 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1246 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5565 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32068 hH))).trans (reductionSound5565 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1246 (1 : Fin 6)) = canonicalInput32539.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1246 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5565 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1246 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5565 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32539 hH))).trans (reductionSound5565 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1246 (2 : Fin 6)) = canonicalInput32608.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1246 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5475 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1246 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5475 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32608 hH))).trans (reductionSound5475 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1246 (3 : Fin 6)) = canonicalInput32636.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1246 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5475 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1246 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5475 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32636 hH))).trans (reductionSound5475 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1246 (4 : Fin 6)) = canonicalInput32649.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1246 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2976 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1246 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2976 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32649 hH))).trans (oldProjectionSound2976 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1246 (5 : Fin 6)) = canonicalInput32650.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1246 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9685 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1246 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9685 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32650 hH))).trans (reductionSound9685 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1246 (j : Fin 6)))
    1440 1440 ![288, 288, 1440, 1440, 1440, 720] ![-7200, -7200, -1440, -1440, -1440, -2880] (extendRow Arithmetic.row1246) ![reductionProjection5565, reductionProjection5565, reductionProjection5475, reductionProjection5475, oldProjection2976, reductionProjection9685]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
