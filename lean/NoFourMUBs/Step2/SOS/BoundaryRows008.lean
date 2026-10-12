import NoFourMUBs.Step2.SOS.Canonical144
import NoFourMUBs.Step2.SOS.Canonical145
import NoFourMUBs.Step2.SOS.Canonical170
import NoFourMUBs.Step2.SOS.Canonical291
import NoFourMUBs.Step2.SOS.Canonical336
import NoFourMUBs.Step2.SOS.Canonical337
import NoFourMUBs.Step2.SOS.Canonical356
import NoFourMUBs.Step2.SOS.Canonical380
import NoFourMUBs.Step2.SOS.Canonical381
import NoFourMUBs.Step2.SOS.Canonical412
import NoFourMUBs.Step2.SOS.Canonical413
import NoFourMUBs.Step2.SOS.Canonical414
import NoFourMUBs.Step2.SOS.Canonical415
import NoFourMUBs.Step2.SOS.Canonical498
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections020
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections026
import NoFourMUBs.Step2.SOS.OldProjections032
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions001
import NoFourMUBs.Step2.SOS.Reductions004
import NoFourMUBs.Step2.SOS.Reductions018
import NoFourMUBs.Step2.SOS.Reductions019
import NoFourMUBs.Step2.SOS.Reductions052
import NoFourMUBs.Step2.SOS.Reductions053
import NoFourMUBs.Step2.SOS.Reductions054
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical269

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput65 : Matrix (Fin 7) (Fin 3) ℤ := ![![-1, 0, 1], ![-1, 0, 1], ![-1, 1, 0], ![0, 1, -1], ![1, -1, 0], ![0, -3, 3], ![2, 2, -4]]

theorem rowSound65 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 65) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row65 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row65 H]
  have hshape : boundaryInput65 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput65 2 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![96, 96, 96, 480, 96, 480] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput65 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1702, reductionProjection1704, reductionProjection1709, oldProjection1540, reductionProjection1705, oldProjection2468] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput65 (0 : Fin 6)) = canonicalInput9265.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput65 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1702 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput65 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1702 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9265 hH))).trans (reductionSound1702 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput65 (1 : Fin 6)) = canonicalInput21564.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput65 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1704 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput65 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1704 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21564 hH))).trans (reductionSound1704 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput65 (2 : Fin 6)) = canonicalInput21592.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput65 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1709 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput65 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1709 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21592 hH))).trans (reductionSound1709 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput65 (3 : Fin 6)) = canonicalInput21600.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput65 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection1540 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput65 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection1540 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21600 hH))).trans (oldProjectionSound1540 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput65 (4 : Fin 6)) = canonicalInput21601.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput65 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1705 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput65 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1705 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21601 hH))).trans (reductionSound1705 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput65 (5 : Fin 6)) = canonicalInput21602.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput65 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2468 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput65 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2468 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21602 hH))).trans (oldProjectionSound2468 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput65 (j : Fin 6)))
    480 480 ![96, 96, 96, 480, 96, 480] ![-2400, -2400, -2400, -480, -2400, -480] (extendRow Arithmetic.row65) ![reductionProjection1702, reductionProjection1704, reductionProjection1709, oldProjection1540, reductionProjection1705, oldProjection2468]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput68 : Matrix (Fin 7) (Fin 3) ℤ := ![![-1, 0, 1], ![0, 1, -1], ![0, 1, -1], ![1, -1, 0], ![1, -1, 0], ![1, 2, -3], ![-2, -2, 4]]

theorem rowSound68 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 68) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row68 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row68 H]
  have hshape : boundaryInput68 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput68 2 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![96, 96, 480, 480, 240, 96] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput68 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1708, reductionProjection1708, oldProjection1537, oldProjection1537, oldProjection1543, reductionProjection132] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput68 (0 : Fin 6)) = canonicalInput22831.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput68 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1708 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput68 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1708 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound22831 hH))).trans (reductionSound1708 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput68 (1 : Fin 6)) = canonicalInput31874.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput68 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1708 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput68 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1708 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31874 hH))).trans (reductionSound1708 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput68 (2 : Fin 6)) = canonicalInput31877.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput68 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection1537 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput68 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection1537 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31877 hH))).trans (oldProjectionSound1537 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput68 (3 : Fin 6)) = canonicalInput31880.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput68 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection1537 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput68 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection1537 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31880 hH))).trans (oldProjectionSound1537 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput68 (4 : Fin 6)) = canonicalInput31883.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput68 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection1543 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput68 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection1543 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31883 hH))).trans (oldProjectionSound1543 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput68 (5 : Fin 6)) = canonicalInput31884.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput68 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection132 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput68 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection132 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31884 hH))).trans (reductionSound132 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput68 (j : Fin 6)))
    480 480 ![96, 96, 480, 480, 240, 96] ![-2400, -2400, -480, -480, -960, -2400] (extendRow Arithmetic.row68) ![reductionProjection1708, reductionProjection1708, oldProjection1537, oldProjection1537, oldProjection1543, reductionProjection132]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput69 : Matrix (Fin 7) (Fin 3) ℤ := ![![-1, 0, 1], ![-1, 1, 0], ![0, -1, 1], ![0, 1, -1], ![1, -1, 0], ![-1, -2, 3], ![2, 2, -4]]

theorem rowSound69 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 69) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row69 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row69 H]
  have hshape : boundaryInput69 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput69 2 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![480, 96, 96, 480, 96, 240] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput69 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1698, reductionProjection1707, reductionProjection1708, oldProjection1537, reductionProjection1695, oldProjection2465] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput69 (0 : Fin 6)) = canonicalInput10909.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput69 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1698 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput69 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1698 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10909 hH))).trans (reductionSound1698 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput69 (1 : Fin 6)) = canonicalInput22813.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput69 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1707 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput69 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1707 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound22813 hH))).trans (reductionSound1707 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput69 (2 : Fin 6)) = canonicalInput22823.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput69 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1708 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput69 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1708 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound22823 hH))).trans (reductionSound1708 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput69 (3 : Fin 6)) = canonicalInput22825.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput69 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection1537 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput69 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection1537 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound22825 hH))).trans (oldProjectionSound1537 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput69 (4 : Fin 6)) = canonicalInput22826.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput69 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1695 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput69 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1695 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound22826 hH))).trans (reductionSound1695 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput69 (5 : Fin 6)) = canonicalInput22827.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput69 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2465 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput69 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2465 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound22827 hH))).trans (oldProjectionSound2465 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput69 (j : Fin 6)))
    480 480 ![480, 96, 96, 480, 96, 240] ![-480, -2400, -2400, -480, -2400, -960] (extendRow Arithmetic.row69) ![reductionProjection1698, reductionProjection1707, reductionProjection1708, oldProjection1537, reductionProjection1695, oldProjection2465]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput75 : Matrix (Fin 7) (Fin 3) ℤ := ![![-1, 0, 1], ![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![0, 1, -1], ![-3, 2, 1], ![4, -2, -2]]

theorem rowSound75 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 75) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row75 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row75 H]
  have hshape : boundaryInput75 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput75 2 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![96, 96, 96, 96, 12, 96] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput75 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection40, reductionProjection40, reductionProjection1708, reductionProjection1708, reductionProjection36, oldProjection1421] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput75 (0 : Fin 6)) = canonicalInput18642.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput75 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection40 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput75 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection40 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound18642 hH))).trans (reductionSound40 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput75 (1 : Fin 6)) = canonicalInput26383.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput75 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection40 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput75 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection40 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26383 hH))).trans (reductionSound40 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput75 (2 : Fin 6)) = canonicalInput26427.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput75 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1708 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput75 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1708 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26427 hH))).trans (reductionSound1708 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput75 (3 : Fin 6)) = canonicalInput26476.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput75 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1708 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput75 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1708 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26476 hH))).trans (reductionSound1708 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput75 (4 : Fin 6)) = canonicalInput26482.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput75 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection36 (Normalization.momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst boundaryInput75 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection36 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26482 hH))).trans (reductionSound36 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput75 (5 : Fin 6)) = canonicalInput26484.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput75 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection1421 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput75 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection1421 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26484 hH))).trans (oldProjectionSound1421 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput75 (j : Fin 6)))
    96 96 ![96, 96, 96, 96, 12, 96] ![-96, -96, -96, -96, -768, -96] (extendRow Arithmetic.row75) ![reductionProjection40, reductionProjection40, reductionProjection1708, reductionProjection1708, reductionProjection36, oldProjection1421]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput78 : Matrix (Fin 7) (Fin 3) ℤ := ![![-1, 0, 1], ![-1, 0, 1], ![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![-2, 3, -1], ![4, -2, -2]]

theorem rowSound78 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 78) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row78 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row78 H]
  have hshape : boundaryInput78 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput78 2 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![96, 96, 96, 480, 96, 480] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput78 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection43, reductionProjection57, reductionProjection57, oldProjection1535, reductionProjection1709, oldProjection1422] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput78 (0 : Fin 6)) = canonicalInput9292.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput78 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection43 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput78 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection43 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9292 hH))).trans (reductionSound43 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput78 (1 : Fin 6)) = canonicalInput21579.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput78 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection57 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput78 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection57 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21579 hH))).trans (reductionSound57 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput78 (2 : Fin 6)) = canonicalInput21620.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput78 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection57 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput78 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection57 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21620 hH))).trans (reductionSound57 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput78 (3 : Fin 6)) = canonicalInput21624.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput78 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection1535 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput78 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection1535 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21624 hH))).trans (oldProjectionSound1535 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput78 (4 : Fin 6)) = canonicalInput21628.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput78 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1709 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput78 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1709 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21628 hH))).trans (reductionSound1709 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput78 (5 : Fin 6)) = canonicalInput21629.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput78 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection1422 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput78 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection1422 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21629 hH))).trans (oldProjectionSound1422 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput78 (j : Fin 6)))
    480 480 ![96, 96, 96, 480, 96, 480] ![-2400, -2400, -2400, -480, -2400, -480] (extendRow Arithmetic.row78) ![reductionProjection43, reductionProjection57, reductionProjection57, oldProjection1535, reductionProjection1709, oldProjection1422]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput13 : Matrix (Fin 7) (Fin 3) ℤ := ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![0, 1, -1], ![-2, -1, 3], ![2, 2, -4]]

theorem rowSound13 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 13) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row13 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row13 H]
  have hshape : boundaryInput13 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput13 2 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![96, 96, 96, 96, 24, 480] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput13 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1734, reductionProjection1734, oldProjection429, oldProjection429, reductionProjection1733, oldProjection1873] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput13 (0 : Fin 6)) = canonicalInput24387.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput13 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1734 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput13 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1734 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound24387 hH))).trans (reductionSound1734 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput13 (1 : Fin 6)) = canonicalInput26408.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput13 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1734 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput13 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1734 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26408 hH))).trans (reductionSound1734 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput13 (2 : Fin 6)) = canonicalInput26474.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput13 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection429 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput13 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection429 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26474 hH))).trans (oldProjectionSound429 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput13 (3 : Fin 6)) = canonicalInput26479.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput13 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection429 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput13 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection429 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26479 hH))).trans (oldProjectionSound429 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput13 (4 : Fin 6)) = canonicalInput26485.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput13 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1733 (Normalization.momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst boundaryInput13 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1733 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26485 hH))).trans (reductionSound1733 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput13 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw8623 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput13 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection1873 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput13 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection1873 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8623 hH))).trans (oldProjectionSound1873 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput13 (j : Fin 6)))
    480 480 ![96, 96, 96, 96, 24, 480] ![-2400, -2400, -2400, -2400, -9600, -480] (extendRow Arithmetic.row13) ![reductionProjection1734, reductionProjection1734, oldProjection429, oldProjection429, reductionProjection1733, oldProjection1873]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput17 : Matrix (Fin 7) (Fin 3) ℤ := ![![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![1, 0, -1], ![1, 0, -1], ![0, 3, -3], ![-2, -2, 4]]

theorem rowSound17 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 17) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row17 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row17 H]
  have hshape : boundaryInput17 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput17 2 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![48, 24, 480, 480, 240, 48] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput17 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1732, oldProjection435, oldProjection1540, oldProjection1540, oldProjection1539, reductionProjection601] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput17 (0 : Fin 6)) = canonicalInput24414.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput17 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1732 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput17 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1732 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound24414 hH))).trans (reductionSound1732 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput17 (1 : Fin 6)) = canonicalInput26555.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput17 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection435 (Normalization.momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst boundaryInput17 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection435 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26555 hH))).trans (oldProjectionSound435 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput17 (2 : Fin 6)) = canonicalInput26592.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput17 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection1540 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput17 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection1540 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26592 hH))).trans (oldProjectionSound1540 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput17 (3 : Fin 6)) = canonicalInput26606.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput17 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection1540 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput17 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection1540 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26606 hH))).trans (oldProjectionSound1540 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput17 (4 : Fin 6)) = canonicalInput26609.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput17 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection1539 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput17 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection1539 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26609 hH))).trans (oldProjectionSound1539 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput17 (5 : Fin 6)) = canonicalInput26610.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput17 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection601 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput17 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection601 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26610 hH))).trans (reductionSound601 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput17 (j : Fin 6)))
    240 480 ![48, 24, 480, 480, 240, 48] ![-2400, -4800, -240, -240, -480, -2400] (extendRow Arithmetic.row17) ![reductionProjection1732, oldProjection435, oldProjection1540, oldProjection1540, oldProjection1539, reductionProjection601]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput21 : Matrix (Fin 7) (Fin 3) ℤ := ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![-2, 2, 0], ![2, 3, -5]]

theorem rowSound21 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 21) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row21 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row21 H]
  have hshape : boundaryInput21 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput21 2 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![6, 6, 6, 6, 480, 120] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput21 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection611, reductionProjection611, reductionProjection611, reductionProjection611, oldProjection1436, reductionProjection1744] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput21 (0 : Fin 6)) = canonicalInput24382.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput21 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection611 (Normalization.momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst boundaryInput21 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection611 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound24382 hH))).trans (reductionSound611 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput21 (1 : Fin 6)) = canonicalInput26403.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput21 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection611 (Normalization.momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst boundaryInput21 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection611 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26403 hH))).trans (reductionSound611 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput21 (2 : Fin 6)) = canonicalInput26437.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput21 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection611 (Normalization.momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst boundaryInput21 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection611 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26437 hH))).trans (reductionSound611 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput21 (3 : Fin 6)) = canonicalInput26455.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput21 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection611 (Normalization.momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst boundaryInput21 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection611 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26455 hH))).trans (reductionSound611 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput21 (4 : Fin 6)) = canonicalInput26459.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput21 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection1436 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput21 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection1436 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26459 hH))).trans (oldProjectionSound1436 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput21 (5 : Fin 6)) = canonicalInput26460.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((120 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput21 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1744 (Normalization.momentVector H)
      have hh : (120 : ℝ) * injectiveMoment H (mergeFirst boundaryInput21 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1744 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26460 hH))).trans (reductionSound1744 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput21 (j : Fin 6)))
    96 480 ![6, 6, 6, 6, 480, 120] ![-7680, -7680, -7680, -7680, -96, -384] (extendRow Arithmetic.row21) ![reductionProjection611, reductionProjection611, reductionProjection611, reductionProjection611, oldProjection1436, reductionProjection1744]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
