import NoFourMUBs.Step2.SOS.Canonical291
import NoFourMUBs.Step2.SOS.Canonical381
import NoFourMUBs.Step2.SOS.Canonical412
import NoFourMUBs.Step2.SOS.Canonical413
import NoFourMUBs.Step2.SOS.Canonical414
import NoFourMUBs.Step2.SOS.Canonical415
import NoFourMUBs.Step2.SOS.Canonical470
import NoFourMUBs.Step2.SOS.Canonical497
import NoFourMUBs.Step2.SOS.Canonical498
import NoFourMUBs.Step2.SOS.Canonical499
import NoFourMUBs.Step2.SOS.Canonical500
import NoFourMUBs.Step2.SOS.Canonical501
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections020
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections026
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections032
import NoFourMUBs.Step2.SOS.OldProjections035
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions000
import NoFourMUBs.Step2.SOS.Reductions010
import NoFourMUBs.Step2.SOS.Reductions011
import NoFourMUBs.Step2.SOS.Reductions013
import NoFourMUBs.Step2.SOS.Reductions054
import NoFourMUBs.Step2.SOS.Reductions077
import NoFourMUBs.Step2.SOS.Reductions078
import NoFourMUBs.Step2.SOS.Reductions139
import NoFourMUBs.Step2.SOS.Reductions140
import NoFourMUBs.Step2.SOS.Reductions191
import NoFourMUBs.Step2.SOS.Reductions192
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical273

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput77 : Matrix (Fin 7) (Fin 3) ℤ := ![![-1, 0, 1], ![0, -1, 1], ![0, 1, -1], ![0, 1, -1], ![0, 1, -1], ![-3, 1, 2], ![4, -3, -1]]

theorem rowSound77 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 77) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row77 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row77 H]
  have hshape : boundaryInput77 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput77 2 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![96, 96, 96, 96, 24, 96] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput77 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection23, reductionProjection6120, reductionProjection6120, reductionProjection6120, reductionProjection6, reductionProjection329] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput77 (0 : Fin 6)) = canonicalInput18655.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput77 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection23 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput77 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection23 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound18655 hH))).trans (reductionSound23 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput77 (1 : Fin 6)) = canonicalInput26395.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput77 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6120 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput77 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6120 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26395 hH))).trans (reductionSound6120 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput77 (2 : Fin 6)) = canonicalInput26556.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput77 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6120 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput77 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6120 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26556 hH))).trans (reductionSound6120 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput77 (3 : Fin 6)) = canonicalInput26562.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput77 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6120 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput77 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6120 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26562 hH))).trans (reductionSound6120 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput77 (4 : Fin 6)) = canonicalInput26563.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput77 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6 (Normalization.momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst boundaryInput77 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26563 hH))).trans (reductionSound6 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput77 (5 : Fin 6)) = canonicalInput26564.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput77 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection329 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput77 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection329 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26564 hH))).trans (reductionSound329 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput77 (j : Fin 6)))
    96 96 ![96, 96, 96, 96, 24, 96] ![-96, -96, -96, -96, -384, -96] (extendRow Arithmetic.row77) ![reductionProjection23, reductionProjection6120, reductionProjection6120, reductionProjection6120, reductionProjection6, reductionProjection329]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput82 : Matrix (Fin 7) (Fin 3) ℤ := ![![-1, 0, 1], ![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![-2, 1, 1], ![-1, 3, -2], ![3, -1, -2]]

theorem rowSound82 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 82) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row82 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row82 H]
  have hshape : boundaryInput82 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput82 2 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![480, 480, 480, 24, 480, 12] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput82 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection383, reductionProjection383, reductionProjection427, reductionProjection380, reductionProjection6131, oldProjection1868] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput82 (0 : Fin 6)) = canonicalInput18650.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput82 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection383 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput82 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection383 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound18650 hH))).trans (reductionSound383 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput82 (1 : Fin 6)) = canonicalInput26390.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput82 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection383 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput82 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection383 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26390 hH))).trans (reductionSound383 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput82 (2 : Fin 6)) = canonicalInput26442.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput82 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection427 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput82 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection427 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26442 hH))).trans (reductionSound427 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput82 (3 : Fin 6)) = canonicalInput26506.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput82 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection380 (Normalization.momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst boundaryInput82 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection380 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26506 hH))).trans (reductionSound380 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput82 (4 : Fin 6)) = canonicalInput26515.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput82 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6131 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput82 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6131 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26515 hH))).trans (reductionSound6131 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput82 (5 : Fin 6)) = canonicalInput26518.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput82 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection1868 (Normalization.momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst boundaryInput82 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection1868 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26518 hH))).trans (oldProjectionSound1868 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput82 (j : Fin 6)))
    96 480 ![480, 480, 480, 24, 480, 12] ![-96, -96, -96, -1920, -96, -3840] (extendRow Arithmetic.row82) ![reductionProjection383, reductionProjection383, reductionProjection427, reductionProjection380, reductionProjection6131, oldProjection1868]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput930 : Matrix (Fin 7) (Fin 3) ℤ := ![![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![1, 0, -1], ![-2, 1, 1], ![-1, -1, 2], ![2, 1, -3]]

theorem rowSound930 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 930) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row930 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row930 H]
  have hshape : boundaryInput930 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput930 2 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![96, 240, 96, 480, 480, 480] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput930 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1851, oldProjection870, reductionProjection6114, oldProjection2460, oldProjection1850, oldProjection2661] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput930 (0 : Fin 6)) = canonicalInput24410.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput930 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1851 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput930 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1851 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound24410 hH))).trans (oldProjectionSound1851 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput930 (1 : Fin 6)) = canonicalInput26551.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput930 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection870 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput930 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection870 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26551 hH))).trans (oldProjectionSound870 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput930 (2 : Fin 6)) = canonicalInput26573.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput930 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6114 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput930 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6114 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26573 hH))).trans (reductionSound6114 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput930 (3 : Fin 6)) = canonicalInput26594.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput930 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2460 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput930 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2460 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26594 hH))).trans (oldProjectionSound2460 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput930 (4 : Fin 6)) = canonicalInput26598.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput930 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection1850 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput930 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection1850 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26598 hH))).trans (oldProjectionSound1850 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput930 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw8764 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput930 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2661 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput930 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2661 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8764 hH))).trans (oldProjectionSound2661 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput930 (j : Fin 6)))
    480 480 ![96, 240, 96, 480, 480, 480] ![-2400, -960, -2400, -480, -480, -480] (extendRow Arithmetic.row930) ![oldProjection1851, oldProjection870, reductionProjection6114, oldProjection2460, oldProjection1850, oldProjection2661]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput942 : Matrix (Fin 7) (Fin 3) ℤ := ![![0, -1, 1], ![0, 1, -1], ![1, -1, 0], ![1, 0, -1], ![1, 0, -1], ![-2, 3, -1], ![-1, -2, 3]]

theorem rowSound942 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 942) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row942 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row942 H]
  have hshape : boundaryInput942 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput942 2 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![480, 480, 480, 480, 480, 480] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput942 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection372, reductionProjection6131, oldProjection1425, oldProjection1425, oldProjection1432, oldProjection1869] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput942 (0 : Fin 6)) = canonicalInput30095.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput942 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection372 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput942 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection372 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound30095 hH))).trans (oldProjectionSound372 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput942 (1 : Fin 6)) = canonicalInput31891.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput942 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6131 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput942 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6131 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31891 hH))).trans (reductionSound6131 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput942 (2 : Fin 6)) = canonicalInput31898.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput942 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection1425 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput942 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection1425 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31898 hH))).trans (oldProjectionSound1425 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput942 (3 : Fin 6)) = canonicalInput31911.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput942 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection1425 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput942 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection1425 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31911 hH))).trans (oldProjectionSound1425 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput942 (4 : Fin 6)) = canonicalInput31914.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput942 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection1432 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput942 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection1432 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31914 hH))).trans (oldProjectionSound1432 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput942 (5 : Fin 6)) = canonicalInput31915.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput942 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection1869 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput942 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection1869 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31915 hH))).trans (oldProjectionSound1869 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput942 (j : Fin 6)))
    96 480 ![480, 480, 480, 480, 480, 480] ![-96, -96, -96, -96, -96, -96] (extendRow Arithmetic.row942) ![oldProjection372, reductionProjection6131, oldProjection1425, oldProjection1425, oldProjection1432, oldProjection1869]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput946 : Matrix (Fin 7) (Fin 3) ℤ := ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![-2, 1, 1], ![-1, 2, -1], ![2, 1, -3]]

theorem rowSound946 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 946) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row946 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row946 H]
  have hshape : boundaryInput946 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput946 2 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![480, 480, 240, 120, 480, 120] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput946 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6123, reductionProjection6123, reductionProjection6129, reductionProjection6121, oldProjection1430, oldProjection2099] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput946 (0 : Fin 6)) = canonicalInput24391.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput946 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6123 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput946 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6123 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound24391 hH))).trans (reductionSound6123 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput946 (1 : Fin 6)) = canonicalInput26412.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput946 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6123 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput946 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6123 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26412 hH))).trans (reductionSound6123 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput946 (2 : Fin 6)) = canonicalInput26498.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput946 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6129 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput946 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6129 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26498 hH))).trans (reductionSound6129 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput946 (3 : Fin 6)) = canonicalInput26509.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((120 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput946 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6121 (Normalization.momentVector H)
      have hh : (120 : ℝ) * injectiveMoment H (mergeFirst boundaryInput946 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6121 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26509 hH))).trans (reductionSound6121 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput946 (4 : Fin 6)) = canonicalInput26516.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput946 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection1430 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput946 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection1430 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26516 hH))).trans (oldProjectionSound1430 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput946 (5 : Fin 6)) = canonicalInput26517.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((120 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput946 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2099 (Normalization.momentVector H)
      have hh : (120 : ℝ) * injectiveMoment H (mergeFirst boundaryInput946 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2099 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26517 hH))).trans (oldProjectionSound2099 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput946 (j : Fin 6)))
    480 480 ![480, 480, 240, 120, 480, 120] ![-480, -480, -960, -1920, -480, -1920] (extendRow Arithmetic.row946) ![reductionProjection6123, reductionProjection6123, reductionProjection6129, reductionProjection6121, oldProjection1430, oldProjection2099]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput28 : Matrix (Fin 7) (Fin 3) ℤ := ![![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![1, -1, 0], ![1, -1, 0], ![-2, -1, 3], ![0, 4, -4]]

theorem rowSound28 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 28) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row28 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row28 H]
  have hshape : boundaryInput28 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput28 2 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![96, 96, 96, 96, 96, 240] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput28 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6145, oldProjection565, reductionProjection6154, reductionProjection6154, reductionProjection1739, oldProjection1887] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput28 (0 : Fin 6)) = canonicalInput24407.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput28 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6145 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput28 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6145 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound24407 hH))).trans (reductionSound6145 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput28 (1 : Fin 6)) = canonicalInput26548.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput28 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection565 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput28 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection565 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26548 hH))).trans (oldProjectionSound565 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput28 (2 : Fin 6)) = canonicalInput26570.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput28 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6154 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput28 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6154 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26570 hH))).trans (reductionSound6154 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput28 (3 : Fin 6)) = canonicalInput26586.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput28 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6154 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput28 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6154 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26586 hH))).trans (reductionSound6154 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput28 (4 : Fin 6)) = canonicalInput26588.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput28 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1739 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput28 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1739 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26588 hH))).trans (reductionSound1739 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput28 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw8747 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput28 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection1887 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput28 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection1887 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8747 hH))).trans (oldProjectionSound1887 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput28 (j : Fin 6)))
    480 480 ![96, 96, 96, 96, 96, 240] ![-2400, -2400, -2400, -2400, -2400, -960] (extendRow Arithmetic.row28) ![reductionProjection6145, oldProjection565, reductionProjection6154, reductionProjection6154, reductionProjection1739, oldProjection1887]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput277 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -2, 0, 3], ![-1, 0, 4, -3]]

theorem rowSound277 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 277) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row277 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row277 H]
  have hshape : boundaryInput277 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput277 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput277 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4504, reductionProjection6155, reductionProjection4492, reductionProjection4492, reductionProjection2494, reductionProjection4474] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput277 (0 : Fin 6)) = canonicalInput31863.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput277 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4504 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput277 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4504 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31863 hH))).trans (reductionSound4504 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput277 (1 : Fin 6)) = canonicalInput31975.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput277 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6155 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput277 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6155 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31975 hH))).trans (reductionSound6155 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput277 (2 : Fin 6)) = canonicalInput32038.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput277 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4492 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput277 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4492 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32038 hH))).trans (reductionSound4492 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput277 (3 : Fin 6)) = canonicalInput32063.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput277 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4492 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput277 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4492 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32063 hH))).trans (reductionSound4492 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput277 (4 : Fin 6)) = canonicalInput32069.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput277 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2494 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput277 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2494 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32069 hH))).trans (reductionSound2494 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput277 (5 : Fin 6)) = canonicalInput32070.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput277 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4474 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput277 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4474 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32070 hH))).trans (reductionSound4474 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput277 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-1440, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row277) ![reductionProjection4504, reductionProjection6155, reductionProjection4492, reductionProjection4492, reductionProjection2494, reductionProjection4474]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput278 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, -1, 0, 3], ![0, -1, 4, -3]]

theorem rowSound278 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 278) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row278 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row278 H]
  have hshape : boundaryInput278 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput278 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 288, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput278 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4496, reductionProjection6155, reductionProjection4511, reductionProjection4511, reductionProjection2502, reductionProjection4476] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput278 (0 : Fin 6)) = canonicalInput31862.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput278 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4496 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput278 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4496 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31862 hH))).trans (reductionSound4496 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput278 (1 : Fin 6)) = canonicalInput31974.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput278 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6155 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput278 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6155 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31974 hH))).trans (reductionSound6155 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput278 (2 : Fin 6)) = canonicalInput32037.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput278 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4511 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput278 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4511 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32037 hH))).trans (reductionSound4511 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput278 (3 : Fin 6)) = canonicalInput32062.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput278 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4511 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput278 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4511 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32062 hH))).trans (reductionSound4511 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput278 (4 : Fin 6)) = canonicalInput32064.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput278 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2502 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput278 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2502 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32064 hH))).trans (reductionSound2502 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput278 (5 : Fin 6)) = canonicalInput32065.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput278 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4476 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput278 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4476 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32065 hH))).trans (reductionSound4476 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput278 (j : Fin 6)))
    288 1440 ![1440, 1440, 288, 288, 288, 1440] ![-288, -288, -1440, -1440, -1440, -288] (extendRow Arithmetic.row278) ![reductionProjection4496, reductionProjection6155, reductionProjection4511, reductionProjection4511, reductionProjection2502, reductionProjection4476]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
