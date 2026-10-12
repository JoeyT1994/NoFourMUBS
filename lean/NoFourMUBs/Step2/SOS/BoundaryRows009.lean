import NoFourMUBs.Step2.SOS.Canonical119
import NoFourMUBs.Step2.SOS.Canonical267
import NoFourMUBs.Step2.SOS.Canonical268
import NoFourMUBs.Step2.SOS.Canonical291
import NoFourMUBs.Step2.SOS.Canonical324
import NoFourMUBs.Step2.SOS.Canonical326
import NoFourMUBs.Step2.SOS.Canonical327
import NoFourMUBs.Step2.SOS.Canonical380
import NoFourMUBs.Step2.SOS.Canonical381
import NoFourMUBs.Step2.SOS.Canonical397
import NoFourMUBs.Step2.SOS.Canonical401
import NoFourMUBs.Step2.SOS.Canonical402
import NoFourMUBs.Step2.SOS.Canonical403
import NoFourMUBs.Step2.SOS.Canonical404
import NoFourMUBs.Step2.SOS.Canonical412
import NoFourMUBs.Step2.SOS.Canonical413
import NoFourMUBs.Step2.SOS.Canonical414
import NoFourMUBs.Step2.SOS.Canonical415
import NoFourMUBs.Step2.SOS.Canonical501
import NoFourMUBs.Step2.SOS.Canonical508
import NoFourMUBs.Step2.SOS.Canonical509
import NoFourMUBs.Step2.SOS.Canonical510
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections026
import NoFourMUBs.Step2.SOS.OldProjections037
import NoFourMUBs.Step2.SOS.OldProjections041
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions003
import NoFourMUBs.Step2.SOS.Reductions008
import NoFourMUBs.Step2.SOS.Reductions010
import NoFourMUBs.Step2.SOS.Reductions054
import NoFourMUBs.Step2.SOS.Reductions055
import NoFourMUBs.Step2.SOS.Reductions056
import NoFourMUBs.Step2.SOS.Reductions058
import NoFourMUBs.Step2.SOS.Reductions059
import NoFourMUBs.Step2.SOS.Reductions060
import NoFourMUBs.Step2.SOS.Reductions077
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical268
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical315

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput25 : Matrix (Fin 7) (Fin 3) ℤ := ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![-2, 3, -1], ![2, 2, -4]]

theorem rowSound25 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 25) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row25 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row25 H]
  have hshape : boundaryInput25 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput25 2 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![6, 6, 6, 6, 120, 240] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput25 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1748, reductionProjection1748, reductionProjection1748, reductionProjection1748, reductionProjection1744, oldProjection1888] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput25 (0 : Fin 6)) = canonicalInput24383.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput25 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1748 (Normalization.momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst boundaryInput25 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1748 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound24383 hH))).trans (reductionSound1748 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput25 (1 : Fin 6)) = canonicalInput26404.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput25 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1748 (Normalization.momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst boundaryInput25 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1748 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26404 hH))).trans (reductionSound1748 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput25 (2 : Fin 6)) = canonicalInput26438.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput25 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1748 (Normalization.momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst boundaryInput25 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1748 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26438 hH))).trans (reductionSound1748 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput25 (3 : Fin 6)) = canonicalInput26456.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput25 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1748 (Normalization.momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst boundaryInput25 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1748 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26456 hH))).trans (reductionSound1748 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput25 (4 : Fin 6)) = canonicalInput26460.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((120 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput25 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1744 (Normalization.momentVector H)
      have hh : (120 : ℝ) * injectiveMoment H (mergeFirst boundaryInput25 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1744 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26460 hH))).trans (reductionSound1744 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput25 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw8583 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput25 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection1888 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput25 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection1888 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8583 hH))).trans (oldProjectionSound1888 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput25 (j : Fin 6)))
    48 240 ![6, 6, 6, 6, 120, 240] ![-1920, -1920, -1920, -1920, -96, -48] (extendRow Arithmetic.row25) ![reductionProjection1748, reductionProjection1748, reductionProjection1748, reductionProjection1748, reductionProjection1744, oldProjection1888]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput26 : Matrix (Fin 7) (Fin 3) ℤ := ![![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![1, 0, -1], ![1, 0, -1], ![0, -3, 3], ![-2, 4, -2]]

theorem rowSound26 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 26) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row26 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row26 H]
  have hshape : boundaryInput26 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput26 2 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![96, 96, 480, 480, 96, 240] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput26 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1741, oldProjection445, oldProjection1540, oldProjection1540, reductionProjection1739, oldProjection1887] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput26 (0 : Fin 6)) = canonicalInput24413.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput26 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1741 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput26 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1741 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound24413 hH))).trans (reductionSound1741 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput26 (1 : Fin 6)) = canonicalInput26554.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput26 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection445 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput26 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection445 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26554 hH))).trans (oldProjectionSound445 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput26 (2 : Fin 6)) = canonicalInput26591.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput26 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection1540 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput26 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection1540 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26591 hH))).trans (oldProjectionSound1540 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput26 (3 : Fin 6)) = canonicalInput26605.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput26 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection1540 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput26 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection1540 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26605 hH))).trans (oldProjectionSound1540 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput26 (4 : Fin 6)) = canonicalInput26607.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput26 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1739 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput26 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1739 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26607 hH))).trans (reductionSound1739 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput26 (5 : Fin 6)) = canonicalInput26608.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput26 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection1887 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput26 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection1887 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26608 hH))).trans (oldProjectionSound1887 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput26 (j : Fin 6)))
    480 480 ![96, 96, 480, 480, 96, 240] ![-2400, -2400, -480, -480, -2400, -960] (extendRow Arithmetic.row26) ![reductionProjection1741, oldProjection445, oldProjection1540, oldProjection1540, reductionProjection1739, oldProjection1887]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput41 : Matrix (Fin 7) (Fin 3) ℤ := ![![-1, 0, 1], ![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![-2, 2, 0], ![3, 2, -5]]

theorem rowSound41 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 41) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row41 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row41 H]
  have hshape : boundaryInput41 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput41 2 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![96, 96, 96, 96, 96, 120] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput41 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection124, reductionProjection124, reductionProjection124, reductionProjection124, reductionProjection117, reductionProjection1744] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput41 (0 : Fin 6)) = canonicalInput18636.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput41 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection124 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput41 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection124 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound18636 hH))).trans (reductionSound124 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput41 (1 : Fin 6)) = canonicalInput26377.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput41 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection124 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput41 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection124 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26377 hH))).trans (reductionSound124 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput41 (2 : Fin 6)) = canonicalInput26421.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput41 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection124 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput41 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection124 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26421 hH))).trans (reductionSound124 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput41 (3 : Fin 6)) = canonicalInput26448.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput41 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection124 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput41 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection124 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26448 hH))).trans (reductionSound124 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput41 (4 : Fin 6)) = canonicalInput26457.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput41 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection117 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput41 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection117 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26457 hH))).trans (reductionSound117 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput41 (5 : Fin 6)) = canonicalInput26460.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((120 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput41 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1744 (Normalization.momentVector H)
      have hh : (120 : ℝ) * injectiveMoment H (mergeFirst boundaryInput41 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1744 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26460 hH))).trans (reductionSound1744 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput41 (j : Fin 6)))
    480 480 ![96, 96, 96, 96, 96, 120] ![-2400, -2400, -2400, -2400, -2400, -1920] (extendRow Arithmetic.row41) ![reductionProjection124, reductionProjection124, reductionProjection124, reductionProjection124, reductionProjection117, reductionProjection1744]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput57 : Matrix (Fin 7) (Fin 3) ℤ := ![![-1, 0, 1], ![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![3, 0, -3], ![-2, 4, -2]]

theorem rowSound57 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 57) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row57 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row57 H]
  have hshape : boundaryInput57 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput57 2 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![48, 48, 48, 48, 120, 96] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput57 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection340, reductionProjection340, reductionProjection340, reductionProjection340, reductionProjection1744, reductionProjection263] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput57 (0 : Fin 6)) = canonicalInput18638.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput57 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection340 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput57 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection340 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound18638 hH))).trans (reductionSound340 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput57 (1 : Fin 6)) = canonicalInput26379.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput57 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection340 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput57 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection340 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26379 hH))).trans (reductionSound340 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput57 (2 : Fin 6)) = canonicalInput26423.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput57 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection340 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput57 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection340 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26423 hH))).trans (reductionSound340 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput57 (3 : Fin 6)) = canonicalInput26450.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput57 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection340 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput57 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection340 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26450 hH))).trans (reductionSound340 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput57 (4 : Fin 6)) = canonicalInput26461.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((120 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput57 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1744 (Normalization.momentVector H)
      have hh : (120 : ℝ) * injectiveMoment H (mergeFirst boundaryInput57 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1744 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26461 hH))).trans (reductionSound1744 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput57 (5 : Fin 6)) = canonicalInput26462.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput57 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection263 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput57 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection263 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26462 hH))).trans (reductionSound263 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput57 (j : Fin 6)))
    480 480 ![48, 48, 48, 48, 120, 96] ![-4800, -4800, -4800, -4800, -1920, -2400] (extendRow Arithmetic.row57) ![reductionProjection340, reductionProjection340, reductionProjection340, reductionProjection340, reductionProjection1744, reductionProjection263]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput93 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, -1, 1, 1], ![2, 1, 2, -5]]

theorem rowSound93 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 93) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row93 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row93 H]
  have hshape : boundaryInput93 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput93 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput93 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1780, reductionProjection1803, reductionProjection1803, reductionProjection1906, reductionProjection1754, oldProjection3347] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput93 (0 : Fin 6)) = canonicalInput17196.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput93 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1780 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput93 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1780 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17196 hH))).trans (reductionSound1780 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput93 (1 : Fin 6)) = canonicalInput25447.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput93 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1803 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput93 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1803 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25447 hH))).trans (reductionSound1803 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput93 (2 : Fin 6)) = canonicalInput25829.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput93 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1803 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput93 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1803 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25829 hH))).trans (reductionSound1803 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput93 (3 : Fin 6)) = canonicalInput25871.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput93 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1906 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput93 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1906 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25871 hH))).trans (reductionSound1906 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput93 (4 : Fin 6)) = canonicalInput25888.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput93 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1754 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput93 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1754 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25888 hH))).trans (reductionSound1754 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput93 (5 : Fin 6)) = canonicalInput25892.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput93 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3347 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput93 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3347 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25892 hH))).trans (oldProjectionSound3347 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput93 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 720, 1440] ![-1440, -1440, -1440, -1440, -2880, -1440] (extendRow Arithmetic.row93) ![reductionProjection1780, reductionProjection1803, reductionProjection1803, reductionProjection1906, reductionProjection1754, oldProjection3347]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput111 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, -2, 1, 1], ![2, 1, 2, -5]]

theorem rowSound111 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 111) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row111 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row111 H]
  have hshape : boundaryInput111 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput111 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput111 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1762, reductionProjection1821, reductionProjection1821, reductionProjection1912, reductionProjection1774, oldProjection3348] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput111 (0 : Fin 6)) = canonicalInput7616.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput111 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1762 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput111 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1762 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7616 hH))).trans (reductionSound1762 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput111 (1 : Fin 6)) = canonicalInput20738.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput111 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1821 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput111 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1821 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20738 hH))).trans (reductionSound1821 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput111 (2 : Fin 6)) = canonicalInput20920.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput111 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1821 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput111 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1821 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20920 hH))).trans (reductionSound1821 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput111 (3 : Fin 6)) = canonicalInput20934.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput111 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1912 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput111 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1912 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20934 hH))).trans (reductionSound1912 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput111 (4 : Fin 6)) = canonicalInput20943.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput111 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1774 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput111 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1774 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20943 hH))).trans (reductionSound1774 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput111 (5 : Fin 6)) = canonicalInput20945.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput111 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3348 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput111 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3348 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20945 hH))).trans (oldProjectionSound3348 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput111 (j : Fin 6)))
    1440 1440 ![288, 1440, 1440, 1440, 1440, 1440] ![-7200, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row111) ![reductionProjection1762, reductionProjection1821, reductionProjection1821, reductionProjection1912, reductionProjection1774, oldProjection3348]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput107 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 0, -1, 2], ![2, 1, 2, -5]]

theorem rowSound107 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 107) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row107 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row107 H]
  have hshape : boundaryInput107 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput107 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 720, 1440, 288, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput107 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1795, reductionProjection1803, reductionProjection1856, reductionProjection1926, reductionProjection1789, oldProjection3350] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput107 (0 : Fin 6)) = canonicalInput17127.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput107 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1795 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput107 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1795 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17127 hH))).trans (reductionSound1795 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput107 (1 : Fin 6)) = canonicalInput25416.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput107 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1803 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput107 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1803 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25416 hH))).trans (reductionSound1803 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput107 (2 : Fin 6)) = canonicalInput25697.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput107 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1856 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput107 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1856 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25697 hH))).trans (reductionSound1856 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput107 (3 : Fin 6)) = canonicalInput25724.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput107 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1926 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput107 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1926 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25724 hH))).trans (reductionSound1926 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput107 (4 : Fin 6)) = canonicalInput25730.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput107 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1789 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput107 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1789 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25730 hH))).trans (reductionSound1789 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput107 (5 : Fin 6)) = canonicalInput25733.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput107 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3350 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput107 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3350 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25733 hH))).trans (oldProjectionSound3350 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput107 (j : Fin 6)))
    288 1440 ![1440, 1440, 720, 1440, 288, 720] ![-288, -288, -576, -288, -1440, -576] (extendRow Arithmetic.row107) ![reductionProjection1795, reductionProjection1803, reductionProjection1856, reductionProjection1926, reductionProjection1789, oldProjection3350]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput151 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, -1, 3, -2], ![-2, -1, -1, 4]]

theorem rowSound151 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 151) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row151 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row151 H]
  have hshape : boundaryInput151 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput151 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput151 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection2468, reductionProjection2468, reductionProjection2478, reductionProjection2480, oldProjection2922, reductionProjection1879] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput151 (0 : Fin 6)) = canonicalInput32091.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput151 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2468 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput151 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2468 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32091 hH))).trans (reductionSound2468 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput151 (1 : Fin 6)) = canonicalInput32554.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput151 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2468 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput151 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2468 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32554 hH))).trans (reductionSound2468 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput151 (2 : Fin 6)) = canonicalInput32623.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput151 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2478 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput151 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2478 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32623 hH))).trans (reductionSound2478 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput151 (3 : Fin 6)) = canonicalInput32665.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput151 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2480 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput151 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2480 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32665 hH))).trans (reductionSound2480 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput151 (4 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw10089 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput151 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2922 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput151 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2922 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical10089 hH))).trans (oldProjectionSound2922 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput151 (5 : Fin 6)) = canonicalInput32679.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput151 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1879 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput151 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1879 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32679 hH))).trans (reductionSound1879 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput151 (j : Fin 6)))
    288 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-288, -288, -288, -288, -288, -288] (extendRow Arithmetic.row151) ![reductionProjection2468, reductionProjection2468, reductionProjection2478, reductionProjection2480, oldProjection2922, reductionProjection1879]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
