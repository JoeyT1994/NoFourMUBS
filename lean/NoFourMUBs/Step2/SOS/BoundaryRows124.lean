import NoFourMUBs.Step2.SOS.Canonical119
import NoFourMUBs.Step2.SOS.Canonical120
import NoFourMUBs.Step2.SOS.Canonical247
import NoFourMUBs.Step2.SOS.Canonical267
import NoFourMUBs.Step2.SOS.Canonical269
import NoFourMUBs.Step2.SOS.Canonical316
import NoFourMUBs.Step2.SOS.Canonical317
import NoFourMUBs.Step2.SOS.Canonical324
import NoFourMUBs.Step2.SOS.Canonical326
import NoFourMUBs.Step2.SOS.Canonical327
import NoFourMUBs.Step2.SOS.Canonical328
import NoFourMUBs.Step2.SOS.Canonical389
import NoFourMUBs.Step2.SOS.Canonical392
import NoFourMUBs.Step2.SOS.Canonical393
import NoFourMUBs.Step2.SOS.Canonical396
import NoFourMUBs.Step2.SOS.Canonical398
import NoFourMUBs.Step2.SOS.Canonical400
import NoFourMUBs.Step2.SOS.Canonical401
import NoFourMUBs.Step2.SOS.Canonical406
import NoFourMUBs.Step2.SOS.Canonical407
import NoFourMUBs.Step2.SOS.Canonical437
import NoFourMUBs.Step2.SOS.Canonical441
import NoFourMUBs.Step2.SOS.Canonical446
import NoFourMUBs.Step2.SOS.Canonical447
import NoFourMUBs.Step2.SOS.Canonical450
import NoFourMUBs.Step2.SOS.Canonical457
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.OldProjections037
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions064
import NoFourMUBs.Step2.SOS.Reductions065
import NoFourMUBs.Step2.SOS.Reductions066
import NoFourMUBs.Step2.SOS.Reductions068
import NoFourMUBs.Step2.SOS.Reductions240
import NoFourMUBs.Step2.SOS.Reductions241
import NoFourMUBs.Step2.SOS.Reductions267
import NoFourMUBs.Step2.SOS.Reductions268
import NoFourMUBs.Step2.SOS.Reductions269
import NoFourMUBs.Step2.SOS.Reductions270
import NoFourMUBs.Step2.SOS.Reductions274
import NoFourMUBs.Step2.SOS.Reductions277
import NoFourMUBs.Step2.SOS.Reductions298
import NoFourMUBs.Step2.SOS.Reductions299
import NoFourMUBs.Step2.SOS.Reductions301
import NoFourMUBs.Step2.SOS.Reductions347
import NoFourMUBs.Step2.SOS.Reductions382

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput199 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, 0, -3, 3], ![-1, 2, 2, -3]]

theorem rowSound199 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 199) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row199 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row199 H]
  have hshape : boundaryInput199 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput199 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput199 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8595, reductionProjection8624, reductionProjection12227, reductionProjection8594, reductionProjection8608, reductionProjection9576] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput199 (0 : Fin 6)) = canonicalInput17274.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput199 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8595 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput199 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8595 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17274 hH))).trans (reductionSound8595 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput199 (1 : Fin 6)) = canonicalInput25496.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput199 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8624 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput199 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8624 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25496 hH))).trans (reductionSound8624 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput199 (2 : Fin 6)) = canonicalInput26018.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput199 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12227 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput199 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12227 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26018 hH))).trans (reductionSound12227 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput199 (3 : Fin 6)) = canonicalInput26063.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput199 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8594 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput199 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8594 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26063 hH))).trans (reductionSound8594 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput199 (4 : Fin 6)) = canonicalInput26070.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput199 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8608 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput199 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8608 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26070 hH))).trans (reductionSound8608 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput199 (5 : Fin 6)) = canonicalInput26073.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput199 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9576 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput199 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9576 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26073 hH))).trans (reductionSound9576 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput199 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 288] ![-1440, -1440, -1440, -1440, -1440, -7200] (extendRow Arithmetic.row199) ![reductionProjection8595, reductionProjection8624, reductionProjection12227, reductionProjection8594, reductionProjection8608, reductionProjection9576]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput211 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 0, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 1, 1, -3], ![1, -2, -2, 3]]

theorem rowSound211 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 211) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row211 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row211 H]
  have hshape : boundaryInput211 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput211 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput211 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7713, reductionProjection8558, reductionProjection8558, reductionProjection8614, reductionProjection12235, reductionProjection11106] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput211 (0 : Fin 6)) = canonicalInput7689.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput211 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7713 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput211 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7713 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7689 hH))).trans (reductionSound7713 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput211 (1 : Fin 6)) = canonicalInput20758.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput211 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8558 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput211 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8558 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20758 hH))).trans (reductionSound8558 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput211 (2 : Fin 6)) = canonicalInput20981.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput211 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8558 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput211 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8558 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20981 hH))).trans (reductionSound8558 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput211 (3 : Fin 6)) = canonicalInput20986.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput211 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8614 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput211 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8614 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20986 hH))).trans (reductionSound8614 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput211 (4 : Fin 6)) = (normalNode10713).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput211 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12235 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput211 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12235 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound12235 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput211 (5 : Fin 6)) = canonicalInput20989.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput211 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11106 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput211 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11106 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20989 hH))).trans (reductionSound11106 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput211 (j : Fin 6)))
    288 1440 ![1440, 1440, 1440, 1440, 720, 1440] ![-288, -288, -288, -288, -576, -288] (extendRow Arithmetic.row211) ![reductionProjection7713, reductionProjection8558, reductionProjection8558, reductionProjection8614, reductionProjection12235, reductionProjection11106]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput298 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 2, -2, 1], ![0, -1, 4, -3]]

theorem rowSound298 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 298) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row298 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row298 H]
  have hshape : boundaryInput298 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput298 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 288, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput298 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8875, reductionProjection8875, reductionProjection12233, oldProjection2853, reductionProjection9589, oldProjection3245] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput298 (0 : Fin 6)) = canonicalInput20258.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput298 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8875 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput298 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8875 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20258 hH))).trans (reductionSound8875 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput298 (1 : Fin 6)) = canonicalInput27991.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput298 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8875 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput298 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8875 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27991 hH))).trans (reductionSound8875 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput298 (2 : Fin 6)) = canonicalInput28227.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput298 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12233 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput298 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12233 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28227 hH))).trans (reductionSound12233 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput298 (3 : Fin 6)) = canonicalInput28595.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput298 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2853 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput298 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2853 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28595 hH))).trans (oldProjectionSound2853 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput298 (4 : Fin 6)) = canonicalInput28638.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput298 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9589 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput298 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9589 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28638 hH))).trans (reductionSound9589 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput298 (5 : Fin 6)) = canonicalInput28648.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput298 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3245 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput298 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3245 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28648 hH))).trans (oldProjectionSound3245 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput298 (j : Fin 6)))
    1440 1440 ![1440, 1440, 288, 288, 1440, 1440] ![-1440, -1440, -7200, -7200, -1440, -1440] (extendRow Arithmetic.row298) ![reductionProjection8875, reductionProjection8875, reductionProjection12233, oldProjection2853, reductionProjection9589, oldProjection3245]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput307 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, -1, 3, -2], ![-1, 2, -3, 2]]

theorem rowSound307 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 307) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row307 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row307 H]
  have hshape : boundaryInput307 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput307 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 288, 288, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput307 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8662, reductionProjection8647, reductionProjection12225, oldProjection2854, oldProjection3226, reductionProjection9544] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput307 (0 : Fin 6)) = canonicalInput20291.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput307 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8662 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput307 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8662 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20291 hH))).trans (reductionSound8662 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput307 (1 : Fin 6)) = canonicalInput28019.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput307 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8647 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput307 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8647 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28019 hH))).trans (reductionSound8647 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput307 (2 : Fin 6)) = canonicalInput28826.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput307 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12225 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput307 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12225 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28826 hH))).trans (reductionSound12225 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput307 (3 : Fin 6)) = canonicalInput29255.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput307 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2854 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput307 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2854 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29255 hH))).trans (oldProjectionSound2854 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput307 (4 : Fin 6)) = canonicalInput29282.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput307 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3226 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput307 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3226 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29282 hH))).trans (oldProjectionSound3226 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput307 (5 : Fin 6)) = canonicalInput29284.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput307 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9544 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput307 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9544 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29284 hH))).trans (reductionSound9544 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput307 (j : Fin 6)))
    288 1440 ![720, 288, 288, 1440, 1440, 1440] ![-576, -1440, -1440, -288, -288, -288] (extendRow Arithmetic.row307) ![reductionProjection8662, reductionProjection8647, reductionProjection12225, oldProjection2854, oldProjection3226, reductionProjection9544]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput325 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 0, 1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, 2, -2, 1], ![0, 0, 4, -4]]

theorem rowSound325 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 325) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row325 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row325 H]
  have hshape : boundaryInput325 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput325 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 288, 288, 72, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput325 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8787, reductionProjection8787, reductionProjection12228, reductionProjection12228, reductionProjection9571, reductionProjection8792] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput325 (0 : Fin 6)) = canonicalInput17116.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput325 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8787 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput325 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8787 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17116 hH))).trans (reductionSound8787 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput325 (1 : Fin 6)) = canonicalInput25405.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput325 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8787 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput325 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8787 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25405 hH))).trans (reductionSound8787 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput325 (2 : Fin 6)) = canonicalInput25623.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput325 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12228 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput325 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12228 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25623 hH))).trans (reductionSound12228 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput325 (3 : Fin 6)) = canonicalInput25672.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput325 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12228 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput325 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12228 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25672 hH))).trans (reductionSound12228 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput325 (4 : Fin 6)) = canonicalInput25677.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput325 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9571 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput325 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9571 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25677 hH))).trans (reductionSound9571 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput325 (5 : Fin 6)) = canonicalInput25680.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput325 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8792 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput325 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8792 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25680 hH))).trans (reductionSound8792 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput325 (j : Fin 6)))
    1440 1440 ![288, 288, 288, 288, 72, 1440] ![-7200, -7200, -7200, -7200, -28800, -1440] (extendRow Arithmetic.row325) ![reductionProjection8787, reductionProjection8787, reductionProjection12228, reductionProjection12228, reductionProjection9571, reductionProjection8792]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput342 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, -2, -1, 1], ![0, 0, 4, -4]]

theorem rowSound342 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 342) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row342 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row342 H]
  have hshape : boundaryInput342 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput342 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![72, 288, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput342 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7693, reductionProjection9634, reductionProjection9655, reductionProjection9655, reductionProjection12228, reductionProjection9646] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput342 (0 : Fin 6)) = canonicalInput7636.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput342 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7693 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput342 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7693 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7636 hH))).trans (reductionSound7693 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput342 (1 : Fin 6)) = canonicalInput20744.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput342 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9634 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput342 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9634 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20744 hH))).trans (reductionSound9634 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput342 (2 : Fin 6)) = canonicalInput20926.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput342 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9655 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput342 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9655 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20926 hH))).trans (reductionSound9655 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput342 (3 : Fin 6)) = canonicalInput20957.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput342 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9655 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput342 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9655 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20957 hH))).trans (reductionSound9655 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput342 (4 : Fin 6)) = canonicalInput20962.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput342 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12228 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput342 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12228 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20962 hH))).trans (reductionSound12228 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput342 (5 : Fin 6)) = canonicalInput20963.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput342 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9646 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput342 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9646 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20963 hH))).trans (reductionSound9646 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput342 (j : Fin 6)))
    1440 1440 ![72, 288, 1440, 1440, 288, 1440] ![-28800, -7200, -1440, -1440, -7200, -1440] (extendRow Arithmetic.row342) ![reductionProjection7693, reductionProjection9634, reductionProjection9655, reductionProjection9655, reductionProjection12228, reductionProjection9646]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput349 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 0, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 0, 3, -3], ![2, -2, -2, 2]]

theorem rowSound349 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 349) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row349 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row349 H]
  have hshape : boundaryInput349 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput349 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![144, 1440, 288, 288, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput349 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7725, reductionProjection9568, reductionProjection9585, reductionProjection9585, reductionProjection9566, reductionProjection12237] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput349 (0 : Fin 6)) = canonicalInput7708.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput349 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7725 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput349 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7725 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7708 hH))).trans (reductionSound7725 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput349 (1 : Fin 6)) = canonicalInput20759.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput349 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9568 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput349 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9568 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20759 hH))).trans (reductionSound9568 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput349 (2 : Fin 6)) = canonicalInput20982.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput349 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9585 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput349 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9585 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20982 hH))).trans (reductionSound9585 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput349 (3 : Fin 6)) = canonicalInput20990.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput349 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9585 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput349 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9585 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20990 hH))).trans (reductionSound9585 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput349 (4 : Fin 6)) = canonicalInput20993.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput349 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9566 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput349 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9566 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20993 hH))).trans (reductionSound9566 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput349 (5 : Fin 6)) = canonicalInput20994.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput349 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12237 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput349 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12237 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20994 hH))).trans (reductionSound12237 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput349 (j : Fin 6)))
    288 1440 ![144, 1440, 288, 288, 1440, 1440] ![-2880, -288, -1440, -1440, -288, -288] (extendRow Arithmetic.row349) ![reductionProjection7725, reductionProjection9568, reductionProjection9585, reductionProjection9585, reductionProjection9566, reductionProjection12237]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput628 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, 1, -2, 1], ![2, -1, 0, 0, -1], ![-1, 2, 1, 1, -3]]

theorem rowSound628 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 628) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row628 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row628 H]
  have hshape : boundaryInput628 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput628 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 1440, 2880, 2880, 2880, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput628 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection2074, reductionProjection2094, reductionProjection2122, reductionProjection2085, reductionProjection12244, reductionProjection2192] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput628 (0 : Fin 6)) = canonicalInput15845.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput628 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2074 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput628 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2074 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15845 hH))).trans (reductionSound2074 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput628 (1 : Fin 6)) = canonicalInput24950.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput628 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2094 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput628 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2094 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24950 hH))).trans (reductionSound2094 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput628 (2 : Fin 6)) = canonicalInput25120.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput628 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2122 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput628 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2122 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25120 hH))).trans (reductionSound2122 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput628 (3 : Fin 6)) = canonicalInput25168.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput628 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2085 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput628 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2085 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25168 hH))).trans (reductionSound2085 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput628 (4 : Fin 6)) = canonicalInput25187.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput628 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12244 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput628 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12244 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25187 hH))).trans (reductionSound12244 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput628 (5 : Fin 6)) = canonicalInput25188.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput628 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2192 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput628 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2192 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25188 hH))).trans (reductionSound2192 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput628 (j : Fin 6)))
    2880 2880 ![2880, 1440, 2880, 2880, 2880, 2880] ![-2880, -5760, -2880, -2880, -2880, -2880] (extendRow Arithmetic.row628) ![reductionProjection2074, reductionProjection2094, reductionProjection2122, reductionProjection2085, reductionProjection12244, reductionProjection2192]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
