import NoFourMUBs.Step2.SOS.Canonical145
import NoFourMUBs.Step2.SOS.Canonical291
import NoFourMUBs.Step2.SOS.Canonical337
import NoFourMUBs.Step2.SOS.Canonical381
import NoFourMUBs.Step2.SOS.Canonical412
import NoFourMUBs.Step2.SOS.Canonical413
import NoFourMUBs.Step2.SOS.Canonical414
import NoFourMUBs.Step2.SOS.Canonical415
import NoFourMUBs.Step2.SOS.Canonical470
import NoFourMUBs.Step2.SOS.Canonical498
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections020
import NoFourMUBs.Step2.SOS.OldProjections030
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions000
import NoFourMUBs.Step2.SOS.Reductions001
import NoFourMUBs.Step2.SOS.Reductions007
import NoFourMUBs.Step2.SOS.Reductions008
import NoFourMUBs.Step2.SOS.Reductions010
import NoFourMUBs.Step2.SOS.Reductions012
import NoFourMUBs.Step2.SOS.Reductions013
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical269
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical270
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical273

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput49 : Matrix (Fin 7) (Fin 3) ℤ := ![![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![1, -1, 0], ![1, -1, 0], ![-3, 0, 3], ![1, 3, -4]]

theorem rowSound49 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 49) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row49 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row49 H]
  have hshape : boundaryInput49 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput49 2 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![48, 96, 96, 96, 96, 480] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput49 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection321, oldProjection324, reductionProjection332, reductionProjection332, reductionProjection253, oldProjection1405] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput49 (0 : Fin 6)) = canonicalInput24406.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput49 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection321 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput49 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection321 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound24406 hH))).trans (reductionSound321 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput49 (1 : Fin 6)) = canonicalInput26547.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput49 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection324 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput49 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection324 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26547 hH))).trans (oldProjectionSound324 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput49 (2 : Fin 6)) = canonicalInput26569.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput49 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection332 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput49 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection332 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26569 hH))).trans (reductionSound332 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput49 (3 : Fin 6)) = canonicalInput26585.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput49 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection332 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput49 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection332 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26585 hH))).trans (reductionSound332 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput49 (4 : Fin 6)) = canonicalInput26587.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput49 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection253 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput49 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection253 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26587 hH))).trans (reductionSound253 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput49 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw8746 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput49 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection1405 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput49 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection1405 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8746 hH))).trans (oldProjectionSound1405 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput49 (j : Fin 6)))
    480 480 ![48, 96, 96, 96, 96, 480] ![-4800, -2400, -2400, -2400, -2400, -480] (extendRow Arithmetic.row49) ![reductionProjection321, oldProjection324, reductionProjection332, reductionProjection332, reductionProjection253, oldProjection1405]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput73 : Matrix (Fin 7) (Fin 3) ℤ := ![![-1, 0, 1], ![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![-3, 3, 0], ![4, -1, -3]]

theorem rowSound73 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 73) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row73 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row73 H]
  have hshape : boundaryInput73 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput73 2 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![96, 96, 96, 96, 24, 96] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput73 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection13, reductionProjection13, reductionProjection13, reductionProjection277, reductionProjection6, reductionProjection329] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput73 (0 : Fin 6)) = canonicalInput18639.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput73 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection13 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput73 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection13 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound18639 hH))).trans (reductionSound13 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput73 (1 : Fin 6)) = canonicalInput26380.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput73 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection13 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput73 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection13 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26380 hH))).trans (reductionSound13 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput73 (2 : Fin 6)) = canonicalInput26424.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput73 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection13 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput73 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection13 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26424 hH))).trans (reductionSound13 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput73 (3 : Fin 6)) = canonicalInput26451.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput73 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection277 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput73 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection277 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26451 hH))).trans (reductionSound277 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput73 (4 : Fin 6)) = canonicalInput26463.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput73 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6 (Normalization.momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst boundaryInput73 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26463 hH))).trans (reductionSound6 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput73 (5 : Fin 6)) = canonicalInput26464.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput73 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection329 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput73 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection329 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26464 hH))).trans (reductionSound329 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput73 (j : Fin 6)))
    24 96 ![96, 96, 96, 96, 24, 96] ![-24, -24, -24, -24, -96, -24] (extendRow Arithmetic.row73) ![reductionProjection13, reductionProjection13, reductionProjection13, reductionProjection277, reductionProjection6, reductionProjection329]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput941 : Matrix (Fin 7) (Fin 3) ℤ := ![![0, -1, 1], ![0, 1, -1], ![1, 0, -1], ![1, 0, -1], ![1, 0, -1], ![-3, 3, 0], ![0, -3, 3]]

theorem rowSound941 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 941) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row941 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row941 H]
  have hshape : boundaryInput941 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput941 2 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![48, 240, 240, 240, 480, 96] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput941 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection341, oldProjection1407, oldProjection1407, oldProjection1407, oldProjection1411, reductionProjection334] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput941 (0 : Fin 6)) = canonicalInput30097.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput941 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection341 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput941 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection341 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound30097 hH))).trans (oldProjectionSound341 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput941 (1 : Fin 6)) = canonicalInput31913.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput941 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1407 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput941 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1407 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31913 hH))).trans (oldProjectionSound1407 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput941 (2 : Fin 6)) = canonicalInput31917.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput941 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection1407 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput941 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection1407 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31917 hH))).trans (oldProjectionSound1407 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput941 (3 : Fin 6)) = canonicalInput31919.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput941 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection1407 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput941 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection1407 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31919 hH))).trans (oldProjectionSound1407 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput941 (4 : Fin 6)) = canonicalInput31921.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput941 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection1411 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput941 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection1411 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31921 hH))).trans (oldProjectionSound1411 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput941 (5 : Fin 6)) = canonicalInput31922.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput941 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection334 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput941 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection334 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31922 hH))).trans (reductionSound334 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput941 (j : Fin 6)))
    480 480 ![48, 240, 240, 240, 480, 96] ![-4800, -960, -960, -960, -480, -2400] (extendRow Arithmetic.row941) ![oldProjection341, oldProjection1407, oldProjection1407, oldProjection1407, oldProjection1411, reductionProjection334]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput48 : Matrix (Fin 7) (Fin 3) ℤ := ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![1, 0, -1], ![-3, 1, 2], ![1, 3, -4]]

theorem rowSound48 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 48) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row48 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row48 H]
  have hshape : boundaryInput48 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput48 2 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![96, 96, 6, 480, 480, 480] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput48 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection401, reductionProjection401, reductionProjection414, oldProjection1424, oldProjection1385, oldProjection1425] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput48 (0 : Fin 6)) = canonicalInput24395.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput48 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection401 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput48 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection401 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound24395 hH))).trans (reductionSound401 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput48 (1 : Fin 6)) = canonicalInput26416.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput48 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection401 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput48 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection401 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26416 hH))).trans (reductionSound401 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput48 (2 : Fin 6)) = canonicalInput26502.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput48 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection414 (Normalization.momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst boundaryInput48 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection414 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26502 hH))).trans (reductionSound414 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput48 (3 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw8651 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput48 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection1424 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput48 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection1424 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8651 hH))).trans (oldProjectionSound1424 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput48 (4 : Fin 6)) = canonicalInput26532.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput48 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection1385 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput48 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection1385 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26532 hH))).trans (oldProjectionSound1385 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput48 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw8654 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput48 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection1425 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput48 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection1425 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8654 hH))).trans (oldProjectionSound1425 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput48 (j : Fin 6)))
    480 480 ![96, 96, 6, 480, 480, 480] ![-2400, -2400, -38400, -480, -480, -480] (extendRow Arithmetic.row48) ![reductionProjection401, reductionProjection401, reductionProjection414, oldProjection1424, oldProjection1385, oldProjection1425]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput939 : Matrix (Fin 7) (Fin 3) ℤ := ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![0, 1, -1], ![-3, 2, 1], ![3, -1, -2]]

theorem rowSound939 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 939) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row939 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row939 H]
  have hshape : boundaryInput939 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput939 2 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![48, 48, 48, 48, 96, 96] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput939 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection412, reductionProjection412, oldProjection364, oldProjection364, oldProjection1421, oldProjection1421] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput939 (0 : Fin 6)) = canonicalInput24386.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput939 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection412 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput939 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection412 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound24386 hH))).trans (reductionSound412 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput939 (1 : Fin 6)) = canonicalInput26407.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput939 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection412 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput939 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection412 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26407 hH))).trans (reductionSound412 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput939 (2 : Fin 6)) = canonicalInput26473.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput939 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection364 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput939 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection364 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26473 hH))).trans (oldProjectionSound364 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput939 (3 : Fin 6)) = canonicalInput26478.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput939 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection364 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput939 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection364 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26478 hH))).trans (oldProjectionSound364 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput939 (4 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw8622 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput939 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection1421 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput939 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection1421 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8622 hH))).trans (oldProjectionSound1421 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput939 (5 : Fin 6)) = canonicalInput26484.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput939 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection1421 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput939 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection1421 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26484 hH))).trans (oldProjectionSound1421 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput939 (j : Fin 6)))
    48 96 ![48, 48, 48, 48, 96, 96] ![-96, -96, -96, -96, -48, -48] (extendRow Arithmetic.row939) ![reductionProjection412, reductionProjection412, oldProjection364, oldProjection364, oldProjection1421, oldProjection1421]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput62 : Matrix (Fin 7) (Fin 3) ℤ := ![![-1, 0, 1], ![-1, 0, 1], ![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![3, -1, -2], ![-1, 4, -3]]

theorem rowSound62 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 62) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row62 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row62 H]
  have hshape : boundaryInput62 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput62 2 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![96, 6, 6, 6, 96, 480] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput62 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection426, reductionProjection432, reductionProjection432, reductionProjection432, oldProjection2302, reductionProjection428] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput62 (0 : Fin 6)) = canonicalInput9291.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput62 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection426 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput62 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection426 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9291 hH))).trans (reductionSound426 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput62 (1 : Fin 6)) = canonicalInput21578.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput62 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection432 (Normalization.momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst boundaryInput62 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection432 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21578 hH))).trans (reductionSound432 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput62 (2 : Fin 6)) = canonicalInput21619.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput62 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection432 (Normalization.momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst boundaryInput62 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection432 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21619 hH))).trans (reductionSound432 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput62 (3 : Fin 6)) = canonicalInput21623.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput62 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection432 (Normalization.momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst boundaryInput62 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection432 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21623 hH))).trans (reductionSound432 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput62 (4 : Fin 6)) = canonicalInput21625.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput62 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2302 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput62 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2302 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21625 hH))).trans (oldProjectionSound2302 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput62 (5 : Fin 6)) = canonicalInput21626.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput62 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection428 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput62 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection428 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21626 hH))).trans (reductionSound428 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput62 (j : Fin 6)))
    480 480 ![96, 6, 6, 6, 96, 480] ![-2400, -38400, -38400, -38400, -2400, -480] (extendRow Arithmetic.row62) ![reductionProjection426, reductionProjection432, reductionProjection432, reductionProjection432, oldProjection2302, reductionProjection428]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput71 : Matrix (Fin 7) (Fin 3) ℤ := ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![1, 1, -2], ![-3, 1, 2], ![1, 2, -3]]

theorem rowSound71 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 71) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row71 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row71 H]
  have hshape : boundaryInput71 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput71 2 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![96, 96, 6, 480, 480, 240] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput71 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection403, reductionProjection403, reductionProjection416, oldProjection1425, reductionProjection326, reductionProjection417] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput71 (0 : Fin 6)) = canonicalInput24397.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput71 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection403 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput71 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection403 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound24397 hH))).trans (reductionSound403 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput71 (1 : Fin 6)) = canonicalInput26418.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput71 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection403 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput71 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection403 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26418 hH))).trans (reductionSound403 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput71 (2 : Fin 6)) = canonicalInput26504.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput71 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection416 (Normalization.momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst boundaryInput71 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection416 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26504 hH))).trans (reductionSound416 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput71 (3 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw8654 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput71 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection1425 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput71 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection1425 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8654 hH))).trans (oldProjectionSound1425 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput71 (4 : Fin 6)) = canonicalInput26535.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput71 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection326 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput71 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection326 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26535 hH))).trans (reductionSound326 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput71 (5 : Fin 6)) = canonicalInput26536.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput71 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection417 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput71 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection417 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26536 hH))).trans (reductionSound417 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput71 (j : Fin 6)))
    480 480 ![96, 96, 6, 480, 480, 240] ![-2400, -2400, -38400, -480, -480, -960] (extendRow Arithmetic.row71) ![reductionProjection403, reductionProjection403, reductionProjection416, oldProjection1425, reductionProjection326, reductionProjection417]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput76 : Matrix (Fin 7) (Fin 3) ℤ := ![![-1, 0, 1], ![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![1, -1, 0], ![-3, 2, 1], ![2, 2, -4]]

theorem rowSound76 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 76) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row76 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row76 H]
  have hshape : boundaryInput76 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput76 2 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![480, 480, 480, 480, 12, 24] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput76 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection50, reductionProjection50, reductionProjection428, reductionProjection428, reductionProjection46, oldProjection1433] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput76 (0 : Fin 6)) = canonicalInput18651.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput76 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection50 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput76 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection50 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound18651 hH))).trans (reductionSound50 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput76 (1 : Fin 6)) = canonicalInput26391.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput76 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection50 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput76 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection50 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26391 hH))).trans (reductionSound50 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput76 (2 : Fin 6)) = canonicalInput26468.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput76 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection428 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput76 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection428 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26468 hH))).trans (reductionSound428 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput76 (3 : Fin 6)) = canonicalInput26523.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput76 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection428 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput76 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection428 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26523 hH))).trans (reductionSound428 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput76 (4 : Fin 6)) = canonicalInput26527.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput76 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection46 (Normalization.momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst boundaryInput76 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection46 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26527 hH))).trans (reductionSound46 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput76 (5 : Fin 6)) = canonicalInput26529.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput76 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection1433 (Normalization.momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst boundaryInput76 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection1433 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26529 hH))).trans (oldProjectionSound1433 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput76 (j : Fin 6)))
    240 480 ![480, 480, 480, 480, 12, 24] ![-240, -240, -240, -240, -9600, -4800] (extendRow Arithmetic.row76) ![reductionProjection50, reductionProjection50, reductionProjection428, reductionProjection428, reductionProjection46, oldProjection1433]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
