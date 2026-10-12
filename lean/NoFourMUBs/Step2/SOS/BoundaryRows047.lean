import NoFourMUBs.Step2.SOS.Canonical380
import NoFourMUBs.Step2.SOS.Canonical381
import NoFourMUBs.Step2.SOS.Canonical412
import NoFourMUBs.Step2.SOS.Canonical413
import NoFourMUBs.Step2.SOS.Canonical414
import NoFourMUBs.Step2.SOS.Canonical415
import NoFourMUBs.Step2.SOS.Canonical416
import NoFourMUBs.Step2.SOS.Canonical471
import NoFourMUBs.Step2.SOS.Canonical491
import NoFourMUBs.Step2.SOS.Canonical492
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections020
import NoFourMUBs.Step2.SOS.OldProjections026
import NoFourMUBs.Step2.SOS.OldProjections027
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions191
import NoFourMUBs.Step2.SOS.Reductions192
import NoFourMUBs.Step2.SOS.Reductions214
import NoFourMUBs.Step2.SOS.Reductions238
import NoFourMUBs.Step2.SOS.Reductions258
import NoFourMUBs.Step2.SOS.Reductions259
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical270

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput947 : Matrix (Fin 7) (Fin 3) ℤ := ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![-2, 1, 1], ![2, 0, -2], ![-1, 3, -2]]

theorem rowSound947 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 947) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row947 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row947 H]
  have hshape : boundaryInput947 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput947 2 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![240, 240, 480, 480, 12, 120] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput947 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8272, reductionProjection8272, reductionProjection8279, oldProjection1420, oldProjection1868, oldProjection2099] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput947 (0 : Fin 6)) = canonicalInput24393.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput947 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8272 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput947 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8272 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound24393 hH))).trans (reductionSound8272 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput947 (1 : Fin 6)) = canonicalInput26414.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput947 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8272 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput947 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8272 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26414 hH))).trans (reductionSound8272 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput947 (2 : Fin 6)) = canonicalInput26500.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput947 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8279 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput947 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8279 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26500 hH))).trans (reductionSound8279 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput947 (3 : Fin 6)) = canonicalInput26514.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput947 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection1420 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput947 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection1420 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26514 hH))).trans (oldProjectionSound1420 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput947 (4 : Fin 6)) = canonicalInput26521.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput947 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection1868 (Normalization.momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst boundaryInput947 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection1868 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26521 hH))).trans (oldProjectionSound1868 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput947 (5 : Fin 6)) = canonicalInput26522.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((120 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput947 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2099 (Normalization.momentVector H)
      have hh : (120 : ℝ) * injectiveMoment H (mergeFirst boundaryInput947 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2099 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26522 hH))).trans (oldProjectionSound2099 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput947 (j : Fin 6)))
    480 480 ![240, 240, 480, 480, 12, 120] ![-960, -960, -480, -480, -19200, -1920] (extendRow Arithmetic.row947) ![reductionProjection8272, reductionProjection8272, reductionProjection8279, oldProjection1420, oldProjection1868, oldProjection2099]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput949 : Matrix (Fin 7) (Fin 3) ℤ := ![![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![1, 0, -1], ![-2, 0, 2], ![2, -2, 0], ![-1, 3, -2]]

theorem rowSound949 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 949) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row949 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row949 H]
  have hshape : boundaryInput949 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput949 2 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![480, 480, 240, 480, 480, 480] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput949 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8267, oldProjection369, oldProjection1853, reductionProjection6130, reductionProjection6116, oldProjection2097] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput949 (0 : Fin 6)) = canonicalInput24409.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput949 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8267 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput949 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8267 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound24409 hH))).trans (reductionSound8267 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput949 (1 : Fin 6)) = canonicalInput26550.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput949 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection369 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput949 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection369 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26550 hH))).trans (oldProjectionSound369 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput949 (2 : Fin 6)) = canonicalInput26572.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput949 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection1853 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput949 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection1853 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26572 hH))).trans (oldProjectionSound1853 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput949 (3 : Fin 6)) = canonicalInput26593.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput949 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6130 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput949 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6130 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26593 hH))).trans (reductionSound6130 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput949 (4 : Fin 6)) = canonicalInput26596.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput949 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6116 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput949 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6116 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26596 hH))).trans (reductionSound6116 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput949 (5 : Fin 6)) = canonicalInput26597.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput949 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2097 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput949 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2097 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26597 hH))).trans (oldProjectionSound2097 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput949 (j : Fin 6)))
    96 480 ![480, 480, 240, 480, 480, 480] ![-96, -96, -192, -96, -96, -96] (extendRow Arithmetic.row949) ![reductionProjection8267, oldProjection369, oldProjection1853, reductionProjection6130, reductionProjection6116, oldProjection2097]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput950 : Matrix (Fin 7) (Fin 3) ℤ := ![![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![1, -1, 0], ![-2, 0, 2], ![-1, 2, -1], ![1, 2, -3]]

theorem rowSound950 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 950) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row950 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row950 H]
  have hshape : boundaryInput950 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput950 2 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![480, 240, 240, 480, 480, 120] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput950 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8277, reductionProjection8278, reductionProjection8278, oldProjection1867, oldProjection1428, oldProjection2099] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput950 (0 : Fin 6)) = canonicalInput24415.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput950 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8277 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput950 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8277 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound24415 hH))).trans (reductionSound8277 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput950 (1 : Fin 6)) = canonicalInput26611.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput950 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8278 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput950 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8278 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26611 hH))).trans (reductionSound8278 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput950 (2 : Fin 6)) = canonicalInput26619.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput950 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8278 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput950 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8278 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26619 hH))).trans (reductionSound8278 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput950 (3 : Fin 6)) = canonicalInput26621.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput950 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection1867 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput950 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection1867 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26621 hH))).trans (oldProjectionSound1867 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput950 (4 : Fin 6)) = canonicalInput26623.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput950 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection1428 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput950 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection1428 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26623 hH))).trans (oldProjectionSound1428 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput950 (5 : Fin 6)) = canonicalInput26624.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((120 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput950 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2099 (Normalization.momentVector H)
      have hh : (120 : ℝ) * injectiveMoment H (mergeFirst boundaryInput950 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2099 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26624 hH))).trans (oldProjectionSound2099 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput950 (j : Fin 6)))
    480 480 ![480, 240, 240, 480, 480, 120] ![-480, -960, -960, -480, -480, -1920] (extendRow Arithmetic.row950) ![reductionProjection8277, reductionProjection8278, reductionProjection8278, oldProjection1867, oldProjection1428, oldProjection2099]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput951 : Matrix (Fin 7) (Fin 3) ℤ := ![![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![1, -1, 0], ![-2, 0, 2], ![1, 1, -2], ![-1, 3, -2]]

theorem rowSound951 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 951) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row951 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row951 H]
  have hshape : boundaryInput951 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput951 2 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![240, 480, 480, 480, 480, 120] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput951 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8280, reductionProjection8281, reductionProjection8281, reductionProjection6131, oldProjection1432, oldProjection2099] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput951 (0 : Fin 6)) = canonicalInput24416.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput951 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8280 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput951 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8280 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound24416 hH))).trans (reductionSound8280 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput951 (1 : Fin 6)) = canonicalInput26612.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput951 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8281 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput951 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8281 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26612 hH))).trans (reductionSound8281 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput951 (2 : Fin 6)) = canonicalInput26620.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput951 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8281 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput951 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8281 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26620 hH))).trans (reductionSound8281 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput951 (3 : Fin 6)) = canonicalInput26622.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput951 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6131 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput951 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6131 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26622 hH))).trans (reductionSound6131 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput951 (4 : Fin 6)) = canonicalInput26625.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput951 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection1432 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput951 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection1432 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26625 hH))).trans (oldProjectionSound1432 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput951 (5 : Fin 6)) = canonicalInput26626.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((120 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput951 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2099 (Normalization.momentVector H)
      have hh : (120 : ℝ) * injectiveMoment H (mergeFirst boundaryInput951 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2099 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26626 hH))).trans (oldProjectionSound2099 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput951 (j : Fin 6)))
    96 480 ![240, 480, 480, 480, 480, 120] ![-192, -96, -96, -96, -96, -384] (extendRow Arithmetic.row951) ![reductionProjection8280, reductionProjection8281, reductionProjection8281, reductionProjection6131, oldProjection1432, oldProjection2099]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput23 : Matrix (Fin 7) (Fin 3) ℤ := ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![1, -1, 0], ![-2, 0, 2], ![0, 5, -5]]

theorem rowSound23 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 23) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row23 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row23 H]
  have hshape : boundaryInput23 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput23 2 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![48, 48, 48, 48, 96, 240] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput23 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8295, reductionProjection8295, reductionProjection8303, reductionProjection8303, reductionProjection6151, oldProjection2134] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput23 (0 : Fin 6)) = canonicalInput24394.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput23 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8295 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput23 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8295 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound24394 hH))).trans (reductionSound8295 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput23 (1 : Fin 6)) = canonicalInput26415.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput23 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8295 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput23 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8295 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26415 hH))).trans (reductionSound8295 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput23 (2 : Fin 6)) = canonicalInput26501.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput23 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8303 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput23 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8303 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26501 hH))).trans (reductionSound8303 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput23 (3 : Fin 6)) = canonicalInput26526.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput23 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8303 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput23 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8303 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26526 hH))).trans (reductionSound8303 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput23 (4 : Fin 6)) = canonicalInput26530.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput23 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6151 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput23 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6151 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26530 hH))).trans (reductionSound6151 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput23 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw8652 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput23 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2134 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput23 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2134 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8652 hH))).trans (oldProjectionSound2134 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput23 (j : Fin 6)))
    480 480 ![48, 48, 48, 48, 96, 240] ![-4800, -4800, -4800, -4800, -2400, -960] (extendRow Arithmetic.row23) ![reductionProjection8295, reductionProjection8295, reductionProjection8303, reductionProjection8303, reductionProjection6151, oldProjection2134]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput730 : Matrix (Fin 7) (Fin 3) ℤ := ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![-2, 2, 0], ![0, 2, -2], ![2, 0, -2]]

theorem rowSound730 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 730) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row730 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row730 H]
  have hshape : boundaryInput730 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput730 2 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![120, 120, 120, 480, 240, 480] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput730 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8296, reductionProjection8296, reductionProjection8296, oldProjection2118, oldProjection2135, oldProjection2118] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput730 (0 : Fin 6)) = canonicalInput24380.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((120 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput730 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8296 (Normalization.momentVector H)
      have hh : (120 : ℝ) * injectiveMoment H (mergeFirst boundaryInput730 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8296 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound24380 hH))).trans (reductionSound8296 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput730 (1 : Fin 6)) = canonicalInput26401.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((120 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput730 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8296 (Normalization.momentVector H)
      have hh : (120 : ℝ) * injectiveMoment H (mergeFirst boundaryInput730 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8296 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26401 hH))).trans (reductionSound8296 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput730 (2 : Fin 6)) = canonicalInput26435.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((120 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput730 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8296 (Normalization.momentVector H)
      have hh : (120 : ℝ) * injectiveMoment H (mergeFirst boundaryInput730 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8296 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26435 hH))).trans (reductionSound8296 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput730 (3 : Fin 6)) = canonicalInput26443.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput730 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2118 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput730 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2118 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26443 hH))).trans (oldProjectionSound2118 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput730 (4 : Fin 6)) = canonicalInput26446.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput730 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2135 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput730 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2135 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26446 hH))).trans (oldProjectionSound2135 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput730 (5 : Fin 6)) = canonicalInput26447.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput730 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2118 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput730 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2118 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26447 hH))).trans (oldProjectionSound2118 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput730 (j : Fin 6)))
    60 480 ![120, 120, 120, 480, 240, 480] ![-240, -240, -240, -60, -120, -60] (extendRow Arithmetic.row730) ![reductionProjection8296, reductionProjection8296, reductionProjection8296, oldProjection2118, oldProjection2135, oldProjection2118]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput891 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, 0, 0, 2], ![0, -1, 2, -1], ![1, 1, -2, 0]]

theorem rowSound891 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 891) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row891 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row891 H]
  have hshape : boundaryInput891 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput891 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 720, 360, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput891 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection2021, reductionProjection8319, reductionProjection7634, reductionProjection6867, oldProjection3174, reductionProjection7635] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput891 (0 : Fin 6)) = canonicalInput30181.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput891 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection2021 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput891 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection2021 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30181 hH))).trans (oldProjectionSound2021 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput891 (1 : Fin 6)) = canonicalInput31427.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput891 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8319 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput891 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8319 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31427 hH))).trans (reductionSound8319 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput891 (2 : Fin 6)) = canonicalInput31503.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput891 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7634 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput891 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7634 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31503 hH))).trans (reductionSound7634 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput891 (3 : Fin 6)) = canonicalInput31525.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput891 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6867 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput891 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6867 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31525 hH))).trans (reductionSound6867 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput891 (4 : Fin 6)) = canonicalInput31526.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput891 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3174 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput891 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3174 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31526 hH))).trans (oldProjectionSound3174 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput891 (5 : Fin 6)) = canonicalInput31527.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput891 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7635 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput891 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7635 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31527 hH))).trans (reductionSound7635 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput891 (j : Fin 6)))
    1440 1440 ![720, 720, 360, 1440, 288, 1440] ![-2880, -2880, -5760, -1440, -7200, -1440] (extendRow Arithmetic.row891) ![oldProjection2021, reductionProjection8319, reductionProjection7634, reductionProjection6867, oldProjection3174, reductionProjection7635]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput915 : Matrix (Fin 7) (Fin 3) ℤ := ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![-2, 0, 2], ![0, 2, -2], ![1, 2, -3]]

theorem rowSound915 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 915) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row915 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row915 H]
  have hshape : boundaryInput915 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput915 2 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![240, 240, 480, 96, 480, 240] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput915 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8292, reductionProjection8292, reductionProjection8298, reductionProjection6147, oldProjection2128, oldProjection2130] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput915 (0 : Fin 6)) = canonicalInput24389.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput915 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8292 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput915 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8292 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound24389 hH))).trans (reductionSound8292 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput915 (1 : Fin 6)) = canonicalInput26410.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput915 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8292 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput915 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8292 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26410 hH))).trans (reductionSound8292 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput915 (2 : Fin 6)) = canonicalInput26496.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput915 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8298 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput915 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8298 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26496 hH))).trans (reductionSound8298 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput915 (3 : Fin 6)) = canonicalInput26507.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput915 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6147 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput915 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6147 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26507 hH))).trans (reductionSound6147 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput915 (4 : Fin 6)) = canonicalInput26510.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput915 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2128 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput915 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2128 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26510 hH))).trans (oldProjectionSound2128 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput915 (5 : Fin 6)) = canonicalInput26511.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput915 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2130 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput915 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2130 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26511 hH))).trans (oldProjectionSound2130 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput915 (j : Fin 6)))
    480 480 ![240, 240, 480, 96, 480, 240] ![-960, -960, -480, -2400, -480, -960] (extendRow Arithmetic.row915) ![reductionProjection8292, reductionProjection8292, reductionProjection8298, reductionProjection6147, oldProjection2128, oldProjection2130]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
