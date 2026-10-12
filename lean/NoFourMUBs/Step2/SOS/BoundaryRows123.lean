import NoFourMUBs.Step2.SOS.Canonical144
import NoFourMUBs.Step2.SOS.Canonical145
import NoFourMUBs.Step2.SOS.Canonical170
import NoFourMUBs.Step2.SOS.Canonical291
import NoFourMUBs.Step2.SOS.Canonical316
import NoFourMUBs.Step2.SOS.Canonical317
import NoFourMUBs.Step2.SOS.Canonical337
import NoFourMUBs.Step2.SOS.Canonical338
import NoFourMUBs.Step2.SOS.Canonical356
import NoFourMUBs.Step2.SOS.Canonical412
import NoFourMUBs.Step2.SOS.Canonical414
import NoFourMUBs.Step2.SOS.Canonical415
import NoFourMUBs.Step2.SOS.Canonical437
import NoFourMUBs.Step2.SOS.Canonical441
import NoFourMUBs.Step2.SOS.Canonical442
import NoFourMUBs.Step2.SOS.Canonical446
import NoFourMUBs.Step2.SOS.Canonical447
import NoFourMUBs.Step2.SOS.Canonical448
import NoFourMUBs.Step2.SOS.Canonical450
import NoFourMUBs.Step2.SOS.Canonical457
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections031
import NoFourMUBs.Step2.SOS.OldProjections037
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions053
import NoFourMUBs.Step2.SOS.Reductions054
import NoFourMUBs.Step2.SOS.Reductions142
import NoFourMUBs.Step2.SOS.Reductions233
import NoFourMUBs.Step2.SOS.Reductions239
import NoFourMUBs.Step2.SOS.Reductions258
import NoFourMUBs.Step2.SOS.Reductions259
import NoFourMUBs.Step2.SOS.Reductions263
import NoFourMUBs.Step2.SOS.Reductions268
import NoFourMUBs.Step2.SOS.Reductions269
import NoFourMUBs.Step2.SOS.Reductions291
import NoFourMUBs.Step2.SOS.Reductions298
import NoFourMUBs.Step2.SOS.Reductions312
import NoFourMUBs.Step2.SOS.Reductions313
import NoFourMUBs.Step2.SOS.Reductions328
import NoFourMUBs.Step2.SOS.Reductions329
import NoFourMUBs.Step2.SOS.Reductions367
import NoFourMUBs.Step2.SOS.Reductions379
import NoFourMUBs.Step2.SOS.Reductions382
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical298

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput31 : Matrix (Fin 7) (Fin 3) ℤ := ![![-1, 0, 1], ![0, -1, 1], ![0, 1, -1], ![1, -1, 0], ![1, -1, 0], ![-1, -2, 3], ![0, 4, -4]]

theorem rowSound31 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 31) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row31 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row31 H]
  have hshape : boundaryInput31 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput31 2 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![96, 96, 480, 480, 96, 480] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput31 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10525, reductionProjection12253, reductionProjection10536, reductionProjection10536, reductionProjection1739, oldProjection2383] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput31 (0 : Fin 6)) = canonicalInput18657.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput31 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10525 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput31 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10525 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound18657 hH))).trans (reductionSound10525 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput31 (1 : Fin 6)) = canonicalInput26397.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput31 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12253 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput31 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12253 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26397 hH))).trans (reductionSound12253 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput31 (2 : Fin 6)) = canonicalInput26558.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput31 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10536 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput31 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10536 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26558 hH))).trans (reductionSound10536 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput31 (3 : Fin 6)) = canonicalInput26583.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput31 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10536 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput31 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10536 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26583 hH))).trans (reductionSound10536 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput31 (4 : Fin 6)) = canonicalInput26588.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput31 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1739 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput31 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1739 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26588 hH))).trans (reductionSound1739 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput31 (5 : Fin 6)) = canonicalInput26589.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput31 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2383 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput31 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2383 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26589 hH))).trans (oldProjectionSound2383 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput31 (j : Fin 6)))
    480 480 ![96, 96, 480, 480, 96, 480] ![-2400, -2400, -480, -480, -2400, -480] (extendRow Arithmetic.row31) ![reductionProjection10525, reductionProjection12253, reductionProjection10536, reductionProjection10536, reductionProjection1739, oldProjection2383]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput32 : Matrix (Fin 7) (Fin 3) ℤ := ![![-1, 0, 1], ![-1, 0, 1], ![0, 1, -1], ![0, 1, -1], ![1, -1, 0], ![0, 3, -3], ![1, -4, 3]]

theorem rowSound32 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 32) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row32 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row32 H]
  have hshape : boundaryInput32 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput32 2 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![96, 96, 96, 480, 480, 48] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput32 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8310, reductionProjection10010, reductionProjection10010, reductionProjection10028, reductionProjection10009, reductionProjection12255] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput32 (0 : Fin 6)) = canonicalInput9307.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput32 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8310 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput32 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8310 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9307 hH))).trans (reductionSound8310 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput32 (1 : Fin 6)) = canonicalInput21603.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput32 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10010 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput32 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10010 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21603 hH))).trans (reductionSound10010 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput32 (2 : Fin 6)) = canonicalInput21645.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput32 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10010 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput32 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10010 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21645 hH))).trans (reductionSound10010 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput32 (3 : Fin 6)) = canonicalInput21647.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput32 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10028 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput32 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10028 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21647 hH))).trans (reductionSound10028 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput32 (4 : Fin 6)) = canonicalInput21648.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput32 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10009 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput32 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10009 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21648 hH))).trans (reductionSound10009 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput32 (5 : Fin 6)) = canonicalInput21649.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput32 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12255 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput32 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12255 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21649 hH))).trans (reductionSound12255 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput32 (j : Fin 6)))
    480 480 ![96, 96, 96, 480, 480, 48] ![-2400, -2400, -2400, -480, -480, -4800] (extendRow Arithmetic.row32) ![reductionProjection8310, reductionProjection10010, reductionProjection10010, reductionProjection10028, reductionProjection10009, reductionProjection12255]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput34 : Matrix (Fin 7) (Fin 3) ℤ := ![![-1, 0, 1], ![-1, 1, 0], ![0, -1, 1], ![1, -1, 0], ![1, 0, -1], ![0, -3, 3], ![0, 4, -4]]

theorem rowSound34 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 34) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row34 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row34 H]
  have hshape : boundaryInput34 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput34 2 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![48, 96, 48, 96, 96, 96] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput34 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9330, reductionProjection11750, reductionProjection12255, reductionProjection12251, reductionProjection10015, reductionProjection10010] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput34 (0 : Fin 6)) = canonicalInput10916.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput34 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9330 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput34 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9330 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10916 hH))).trans (reductionSound9330 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput34 (1 : Fin 6)) = canonicalInput22815.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput34 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11750 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput34 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11750 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound22815 hH))).trans (reductionSound11750 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput34 (2 : Fin 6)) = canonicalInput22824.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput34 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12255 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput34 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12255 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound22824 hH))).trans (reductionSound12255 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput34 (3 : Fin 6)) = canonicalInput22828.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput34 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12251 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput34 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12251 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound22828 hH))).trans (reductionSound12251 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput34 (4 : Fin 6)) = canonicalInput22829.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput34 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10015 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput34 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10015 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound22829 hH))).trans (reductionSound10015 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput34 (5 : Fin 6)) = canonicalInput22830.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput34 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10010 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput34 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10010 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound22830 hH))).trans (reductionSound10010 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput34 (j : Fin 6)))
    24 96 ![48, 96, 48, 96, 96, 96] ![-48, -24, -48, -24, -24, -24] (extendRow Arithmetic.row34) ![reductionProjection9330, reductionProjection11750, reductionProjection12255, reductionProjection12251, reductionProjection10015, reductionProjection10010]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput63 : Matrix (Fin 7) (Fin 3) ℤ := ![![-1, 0, 1], ![-1, 0, 1], ![0, -1, 1], ![1, 0, -1], ![1, 0, -1], ![1, -3, 2], ![-1, 4, -3]]

theorem rowSound63 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 63) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row63 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row63 H]
  have hshape : boundaryInput63 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput63 2 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![96, 24, 48, 48, 96, 96] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput63 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8282, reductionProjection11746, oldProjection736, oldProjection736, reductionProjection12254, reductionProjection1708] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput63 (0 : Fin 6)) = canonicalInput9303.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput63 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8282 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput63 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8282 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9303 hH))).trans (reductionSound8282 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput63 (1 : Fin 6)) = canonicalInput21585.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput63 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11746 (Normalization.momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst boundaryInput63 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11746 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21585 hH))).trans (reductionSound11746 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput63 (2 : Fin 6)) = canonicalInput21634.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput63 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection736 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput63 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection736 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21634 hH))).trans (oldProjectionSound736 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput63 (3 : Fin 6)) = canonicalInput21641.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput63 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection736 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput63 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection736 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21641 hH))).trans (oldProjectionSound736 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput63 (4 : Fin 6)) = canonicalInput21643.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput63 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12254 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput63 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12254 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21643 hH))).trans (reductionSound12254 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput63 (5 : Fin 6)) = canonicalInput21644.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput63 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1708 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput63 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1708 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21644 hH))).trans (reductionSound1708 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput63 (j : Fin 6)))
    96 96 ![96, 24, 48, 48, 96, 96] ![-96, -384, -192, -192, -96, -96] (extendRow Arithmetic.row63) ![reductionProjection8282, reductionProjection11746, oldProjection736, oldProjection736, reductionProjection12254, reductionProjection1708]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput66 : Matrix (Fin 7) (Fin 3) ℤ := ![![-1, 0, 1], ![-1, 0, 1], ![-1, 1, 0], ![1, 0, -1], ![1, 0, -1], ![0, 3, -3], ![1, -4, 3]]

theorem rowSound66 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 66) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row66 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row66 H]
  have hshape : boundaryInput66 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput66 2 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![96, 96, 48, 48, 96, 96] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput66 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8275, reductionProjection9323, oldProjection740, oldProjection740, reductionProjection10012, reductionProjection12252] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput66 (0 : Fin 6)) = canonicalInput9268.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput66 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8275 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput66 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8275 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9268 hH))).trans (reductionSound8275 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput66 (1 : Fin 6)) = canonicalInput21569.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput66 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9323 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput66 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9323 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21569 hH))).trans (reductionSound9323 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput66 (2 : Fin 6)) = canonicalInput21599.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput66 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection740 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput66 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection740 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21599 hH))).trans (oldProjectionSound740 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput66 (3 : Fin 6)) = canonicalInput21608.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput66 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection740 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput66 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection740 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21608 hH))).trans (oldProjectionSound740 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput66 (4 : Fin 6)) = canonicalInput21609.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput66 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10012 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput66 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10012 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21609 hH))).trans (reductionSound10012 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput66 (5 : Fin 6)) = canonicalInput21610.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput66 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12252 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput66 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12252 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21610 hH))).trans (reductionSound12252 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput66 (j : Fin 6)))
    96 96 ![96, 96, 48, 48, 96, 96] ![-96, -96, -192, -192, -96, -96] (extendRow Arithmetic.row66) ![reductionProjection8275, reductionProjection9323, oldProjection740, oldProjection740, reductionProjection10012, reductionProjection12252]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput87 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, -2, 0, 2], ![-1, 2, 3, -4]]

theorem rowSound87 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 87) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row87 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row87 H]
  have hshape : boundaryInput87 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput87 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 720, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput87 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7458, reductionProjection7458, reductionProjection12231, reductionProjection12148, reductionProjection4552, reductionProjection7679] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput87 (0 : Fin 6)) = canonicalInput20262.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput87 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7458 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput87 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7458 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20262 hH))).trans (reductionSound7458 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput87 (1 : Fin 6)) = canonicalInput27995.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput87 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7458 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput87 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7458 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27995 hH))).trans (reductionSound7458 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput87 (2 : Fin 6)) = canonicalInput28293.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput87 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12231 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput87 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12231 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28293 hH))).trans (reductionSound12231 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput87 (3 : Fin 6)) = canonicalInput28663.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput87 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12148 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput87 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12148 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28663 hH))).trans (reductionSound12148 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput87 (4 : Fin 6)) = canonicalInput28676.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput87 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4552 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput87 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4552 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28676 hH))).trans (reductionSound4552 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput87 (5 : Fin 6)) = canonicalInput28681.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput87 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7679 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput87 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7679 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28681 hH))).trans (reductionSound7679 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput87 (j : Fin 6)))
    1440 1440 ![720, 720, 1440, 1440, 1440, 1440] ![-2880, -2880, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row87) ![reductionProjection7458, reductionProjection7458, reductionProjection12231, reductionProjection12148, reductionProjection4552, reductionProjection7679]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput88 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, -1, -1, 2], ![-1, 2, 3, -4]]

theorem rowSound88 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 88) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row88 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row88 H]
  have hshape : boundaryInput88 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput88 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput88 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8444, reductionProjection8444, reductionProjection12236, reductionProjection8433, reductionProjection8434, reductionProjection9538] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput88 (0 : Fin 6)) = canonicalInput20259.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput88 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8444 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput88 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8444 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20259 hH))).trans (reductionSound8444 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput88 (1 : Fin 6)) = canonicalInput27992.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput88 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8444 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput88 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8444 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27992 hH))).trans (reductionSound8444 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput88 (2 : Fin 6)) = canonicalInput28228.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput88 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12236 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput88 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12236 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28228 hH))).trans (reductionSound12236 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput88 (3 : Fin 6)) = canonicalInput28596.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput88 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8433 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput88 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8433 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28596 hH))).trans (reductionSound8433 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput88 (4 : Fin 6)) = canonicalInput28644.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput88 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8434 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput88 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8434 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28644 hH))).trans (reductionSound8434 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput88 (5 : Fin 6)) = canonicalInput28651.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput88 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9538 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput88 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9538 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28651 hH))).trans (reductionSound9538 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput88 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 288, 1440] ![-1440, -1440, -1440, -1440, -7200, -1440] (extendRow Arithmetic.row88) ![reductionProjection8444, reductionProjection8444, reductionProjection12236, reductionProjection8433, reductionProjection8434, reductionProjection9538]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput170 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, -1, -2, 3], ![-1, 2, 2, -3]]

theorem rowSound170 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 170) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row170 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row170 H]
  have hshape : boundaryInput170 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput170 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 1440, 1440, 1440, 144] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput170 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8604, reductionProjection8616, reductionProjection12226, oldProjection2854, reductionProjection8590, oldProjection3307] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput170 (0 : Fin 6)) = canonicalInput20290.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput170 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8604 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput170 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8604 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20290 hH))).trans (reductionSound8604 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput170 (1 : Fin 6)) = canonicalInput28018.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput170 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8616 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput170 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8616 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28018 hH))).trans (reductionSound8616 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput170 (2 : Fin 6)) = canonicalInput28825.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput170 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12226 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput170 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12226 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28825 hH))).trans (reductionSound12226 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput170 (3 : Fin 6)) = canonicalInput29254.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput170 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2854 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput170 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2854 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29254 hH))).trans (oldProjectionSound2854 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput170 (4 : Fin 6)) = canonicalInput29281.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput170 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8590 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput170 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8590 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29281 hH))).trans (reductionSound8590 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput170 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9544 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput170 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3307 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput170 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3307 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9544 hH))).trans (oldProjectionSound3307 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput170 (j : Fin 6)))
    1440 1440 ![1440, 288, 1440, 1440, 1440, 144] ![-1440, -7200, -1440, -1440, -1440, -14400] (extendRow Arithmetic.row170) ![reductionProjection8604, reductionProjection8616, reductionProjection12226, oldProjection2854, reductionProjection8590, oldProjection3307]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
