import NoFourMUBs.Step2.SOS.Canonical115
import NoFourMUBs.Step2.SOS.Canonical245
import NoFourMUBs.Step2.SOS.Canonical247
import NoFourMUBs.Step2.SOS.Canonical323
import NoFourMUBs.Step2.SOS.Canonical325
import NoFourMUBs.Step2.SOS.Canonical339
import NoFourMUBs.Step2.SOS.Canonical340
import NoFourMUBs.Step2.SOS.Canonical376
import NoFourMUBs.Step2.SOS.Canonical379
import NoFourMUBs.Step2.SOS.Canonical387
import NoFourMUBs.Step2.SOS.Canonical389
import NoFourMUBs.Step2.SOS.Canonical391
import NoFourMUBs.Step2.SOS.Canonical392
import NoFourMUBs.Step2.SOS.Canonical393
import NoFourMUBs.Step2.SOS.Canonical399
import NoFourMUBs.Step2.SOS.Canonical404
import NoFourMUBs.Step2.SOS.Canonical417
import NoFourMUBs.Step2.SOS.Canonical418
import NoFourMUBs.Step2.SOS.Canonical439
import NoFourMUBs.Step2.SOS.Canonical442
import NoFourMUBs.Step2.SOS.Canonical444
import NoFourMUBs.Step2.SOS.Canonical445
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.OldProjections032
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.OldProjections041
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions024
import NoFourMUBs.Step2.SOS.Reductions025
import NoFourMUBs.Step2.SOS.Reductions027
import NoFourMUBs.Step2.SOS.Reductions040
import NoFourMUBs.Step2.SOS.Reductions134
import NoFourMUBs.Step2.SOS.Reductions135
import NoFourMUBs.Step2.SOS.Reductions138
import NoFourMUBs.Step2.SOS.Reductions149
import NoFourMUBs.Step2.SOS.Reductions157
import NoFourMUBs.Step2.SOS.Reductions158
import NoFourMUBs.Step2.SOS.Reductions159
import NoFourMUBs.Step2.SOS.Reductions160
import NoFourMUBs.Step2.SOS.Reductions226
import NoFourMUBs.Step2.SOS.Reductions227
import NoFourMUBs.Step2.SOS.Reductions233
import NoFourMUBs.Step2.SOS.Reductions255
import NoFourMUBs.Step2.SOS.Reductions315
import NoFourMUBs.Step2.SOS.Reductions316
import NoFourMUBs.Step2.SOS.Reductions317
import NoFourMUBs.Step2.SOS.Reductions321
import NoFourMUBs.Step2.SOS.Reductions322

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput468 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![1, 2, -3, 0], ![1, 1, 2, -4]]

theorem rowSound468 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 468) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row468 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row468 H]
  have hshape : boundaryInput468 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput468 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 288, 1440, 360] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput468 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7469, reductionProjection10123, reductionProjection10123, reductionProjection10125, reductionProjection10137, reductionProjection10278] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput468 (0 : Fin 6)) = canonicalInput7392.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput468 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7469 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput468 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7469 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7392 hH))).trans (reductionSound7469 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput468 (1 : Fin 6)) = canonicalInput20708.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput468 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10123 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput468 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10123 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20708 hH))).trans (reductionSound10123 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput468 (2 : Fin 6)) = canonicalInput20819.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput468 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10123 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput468 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10123 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20819 hH))).trans (reductionSound10123 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput468 (3 : Fin 6)) = canonicalInput20828.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput468 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10125 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput468 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10125 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20828 hH))).trans (reductionSound10125 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput468 (4 : Fin 6)) = canonicalInput20830.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput468 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10137 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput468 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10137 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20830 hH))).trans (reductionSound10137 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput468 (5 : Fin 6)) = canonicalInput20831.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput468 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10278 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput468 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10278 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20831 hH))).trans (reductionSound10278 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput468 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 288, 1440, 360] ![-1440, -1440, -1440, -7200, -1440, -5760] (extendRow Arithmetic.row468) ![reductionProjection7469, reductionProjection10123, reductionProjection10123, reductionProjection10125, reductionProjection10137, reductionProjection10278]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput475 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 1, 0], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -3, 0, 2], ![1, 1, 2, -4]]

theorem rowSound475 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 475) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row475 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row475 H]
  have hshape : boundaryInput475 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput475 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput475 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8164, reductionProjection10110, reductionProjection10114, reductionProjection10114, reductionProjection10160, reductionProjection10274] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput475 (0 : Fin 6)) = (normalNode4468).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput475 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8164 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput475 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8164 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8164 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput475 (1 : Fin 6)) = canonicalInput21709.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput475 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10110 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput475 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10110 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21709 hH))).trans (reductionSound10110 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput475 (2 : Fin 6)) = canonicalInput21757.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput475 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10114 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput475 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10114 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21757 hH))).trans (reductionSound10114 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput475 (3 : Fin 6)) = canonicalInput21763.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput475 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10114 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput475 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10114 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21763 hH))).trans (reductionSound10114 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput475 (4 : Fin 6)) = canonicalInput21766.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput475 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10160 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput475 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10160 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21766 hH))).trans (reductionSound10160 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput475 (5 : Fin 6)) = canonicalInput21767.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput475 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10274 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput475 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10274 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21767 hH))).trans (reductionSound10274 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput475 (j : Fin 6)))
    1440 1440 ![288, 1440, 1440, 1440, 1440, 288] ![-7200, -1440, -1440, -1440, -1440, -7200] (extendRow Arithmetic.row475) ![reductionProjection8164, reductionProjection10110, reductionProjection10114, reductionProjection10114, reductionProjection10160, reductionProjection10274]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1116 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-2, 0, 3, -1], ![2, 1, 0, -3]]

theorem rowSound1116 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1116) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1116 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1116 H]
  have hshape : boundaryInput1116 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1116 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 1440, 720, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1116 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4311, reductionProjection4335, reductionProjection4335, reductionProjection10303, reductionProjection4302, oldProjection3435] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1116 (0 : Fin 6)) = canonicalInput24121.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1116 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4311 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1116 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4311 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24121 hH))).trans (reductionSound4311 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1116 (1 : Fin 6)) = canonicalInput25549.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1116 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4335 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1116 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4335 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25549 hH))).trans (reductionSound4335 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1116 (2 : Fin 6)) = canonicalInput25856.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1116 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4335 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1116 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4335 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25856 hH))).trans (reductionSound4335 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1116 (3 : Fin 6)) = canonicalInput25878.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1116 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10303 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1116 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10303 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25878 hH))).trans (reductionSound10303 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1116 (4 : Fin 6)) = canonicalInput25889.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1116 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4302 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1116 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4302 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25889 hH))).trans (reductionSound4302 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1116 (5 : Fin 6)) = canonicalInput25890.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1116 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3435 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1116 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3435 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25890 hH))).trans (oldProjectionSound3435 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1116 (j : Fin 6)))
    1440 1440 ![288, 1440, 1440, 720, 720, 1440] ![-7200, -1440, -1440, -2880, -2880, -1440] (extendRow Arithmetic.row1116) ![reductionProjection4311, reductionProjection4335, reductionProjection4335, reductionProjection10303, reductionProjection4302, oldProjection3435]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput585 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, 1, -2, 0], ![2, -1, 0, 0, -1], ![-1, 1, 1, 1, -2]]

theorem rowSound585 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 585) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row585 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row585 H]
  have hshape : boundaryInput585 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput585 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 288, 576, 2880, 360, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput585 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7280, reductionProjection7276, reductionProjection7285, reductionProjection5150, reductionProjection10311, reductionProjection5051] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput585 (0 : Fin 6)) = canonicalInput15851.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput585 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7280 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput585 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7280 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15851 hH))).trans (reductionSound7280 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput585 (1 : Fin 6)) = canonicalInput24956.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput585 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7276 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput585 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7276 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24956 hH))).trans (reductionSound7276 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput585 (2 : Fin 6)) = canonicalInput25126.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput585 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7285 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput585 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7285 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25126 hH))).trans (reductionSound7285 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput585 (3 : Fin 6)) = canonicalInput25178.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput585 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5150 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput585 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5150 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25178 hH))).trans (reductionSound5150 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput585 (4 : Fin 6)) = canonicalInput25199.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput585 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10311 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput585 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10311 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25199 hH))).trans (reductionSound10311 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput585 (5 : Fin 6)) = canonicalInput25200.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput585 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5051 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput585 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5051 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25200 hH))).trans (reductionSound5051 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput585 (j : Fin 6)))
    2880 2880 ![2880, 288, 576, 2880, 360, 2880] ![-2880, -28800, -14400, -2880, -23040, -2880] (extendRow Arithmetic.row585) ![reductionProjection7280, reductionProjection7276, reductionProjection7285, reductionProjection5150, reductionProjection10311, reductionProjection5051]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput617 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, 1, -2, 0], ![2, 0, -1, 0, -1], ![-1, 1, 1, 1, -2]]

theorem rowSound617 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 617) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row617 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row617 H]
  have hshape : boundaryInput617 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput617 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 2880, 2880, 576, 288, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput617 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7258, reductionProjection7258, reductionProjection7288, reductionProjection5120, reductionProjection10314, reductionProjection5064] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput617 (0 : Fin 6)) = canonicalInput15686.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput617 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7258 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput617 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7258 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15686 hH))).trans (reductionSound7258 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput617 (1 : Fin 6)) = canonicalInput24932.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput617 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7258 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput617 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7258 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24932 hH))).trans (reductionSound7258 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput617 (2 : Fin 6)) = canonicalInput25029.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput617 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7288 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput617 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7288 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25029 hH))).trans (reductionSound7288 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput617 (3 : Fin 6)) = canonicalInput25060.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput617 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5120 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput617 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5120 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25060 hH))).trans (reductionSound5120 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput617 (4 : Fin 6)) = canonicalInput25074.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput617 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10314 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput617 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10314 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25074 hH))).trans (reductionSound10314 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput617 (5 : Fin 6)) = canonicalInput25075.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput617 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5064 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput617 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5064 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25075 hH))).trans (reductionSound5064 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput617 (j : Fin 6)))
    2880 2880 ![2880, 2880, 2880, 576, 288, 2880] ![-2880, -2880, -2880, -14400, -28800, -2880] (extendRow Arithmetic.row617) ![reductionProjection7258, reductionProjection7258, reductionProjection7288, reductionProjection5120, reductionProjection10314, reductionProjection5064]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput642 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![2, 0, -1, 0, -1], ![-1, 1, 1, -2, 1], ![0, 1, 1, 1, -3]]

theorem rowSound642 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 642) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row642 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row642 H]
  have hshape : boundaryInput642 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput642 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![576, 576, 2880, 2880, 2880, 576] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput642 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4784, reductionProjection4784, reductionProjection5115, reductionProjection10319, reductionProjection891, reductionProjection5120] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput642 (0 : Fin 6)) = canonicalInput15688.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput642 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4784 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput642 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4784 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15688 hH))).trans (reductionSound4784 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput642 (1 : Fin 6)) = canonicalInput24934.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput642 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4784 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput642 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4784 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24934 hH))).trans (reductionSound4784 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput642 (2 : Fin 6)) = canonicalInput25031.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput642 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5115 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput642 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5115 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25031 hH))).trans (reductionSound5115 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput642 (3 : Fin 6)) = canonicalInput25078.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput642 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10319 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput642 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10319 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25078 hH))).trans (reductionSound10319 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput642 (4 : Fin 6)) = canonicalInput25079.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput642 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection891 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput642 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection891 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25079 hH))).trans (reductionSound891 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput642 (5 : Fin 6)) = canonicalInput25080.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput642 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5120 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput642 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5120 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25080 hH))).trans (reductionSound5120 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput642 (j : Fin 6)))
    576 2880 ![576, 576, 2880, 2880, 2880, 576] ![-2880, -2880, -576, -576, -576, -2880] (extendRow Arithmetic.row642) ![reductionProjection4784, reductionProjection4784, reductionProjection5115, reductionProjection10319, reductionProjection891, reductionProjection5120]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput852 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -1, -1], ![-2, -1, 3, 0]]

theorem rowSound852 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 852) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row852 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row852 H]
  have hshape : boundaryInput852 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput852 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 720, 1440, 1440, 144, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput852 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4425, reductionProjection4425, oldProjection2419, oldProjection2999, reductionProjection10306, reductionProjection1295] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput852 (0 : Fin 6)) = canonicalInput24788.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput852 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4425 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput852 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4425 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24788 hH))).trans (reductionSound4425 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput852 (1 : Fin 6)) = canonicalInput28097.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput852 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4425 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput852 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4425 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28097 hH))).trans (reductionSound4425 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput852 (2 : Fin 6)) = canonicalInput28310.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput852 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection2419 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput852 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection2419 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28310 hH))).trans (oldProjectionSound2419 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput852 (3 : Fin 6)) = canonicalInput28465.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput852 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2999 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput852 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2999 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28465 hH))).trans (oldProjectionSound2999 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput852 (4 : Fin 6)) = canonicalInput28481.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput852 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10306 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput852 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10306 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28481 hH))).trans (reductionSound10306 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput852 (5 : Fin 6)) = canonicalInput28482.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput852 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1295 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput852 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1295 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28482 hH))).trans (reductionSound1295 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput852 (j : Fin 6)))
    1440 1440 ![720, 720, 1440, 1440, 144, 288] ![-2880, -2880, -1440, -1440, -14400, -7200] (extendRow Arithmetic.row852) ![reductionProjection4425, reductionProjection4425, oldProjection2419, oldProjection2999, reductionProjection10306, reductionProjection1295]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1034 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-2, 0, 2, 0], ![2, 2, 0, -4]]

theorem rowSound1034 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1034) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1034 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1034 H]
  have hshape : boundaryInput1034 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1034 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![144, 1440, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1034 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection794, reductionProjection812, reductionProjection812, reductionProjection812, reductionProjection782, reductionProjection10305] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1034 (0 : Fin 6)) = canonicalInput24282.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1034 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection794 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1034 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection794 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24282 hH))).trans (reductionSound794 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1034 (1 : Fin 6)) = canonicalInput26712.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1034 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection812 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1034 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection812 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26712 hH))).trans (reductionSound812 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1034 (2 : Fin 6)) = canonicalInput26789.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1034 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection812 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1034 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection812 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26789 hH))).trans (reductionSound812 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1034 (3 : Fin 6)) = canonicalInput26793.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1034 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection812 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1034 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection812 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26793 hH))).trans (reductionSound812 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1034 (4 : Fin 6)) = canonicalInput26795.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1034 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection782 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1034 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection782 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26795 hH))).trans (reductionSound782 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1034 (5 : Fin 6)) = canonicalInput26796.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1034 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10305 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1034 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10305 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26796 hH))).trans (reductionSound10305 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1034 (j : Fin 6)))
    1440 1440 ![144, 1440, 1440, 1440, 1440, 288] ![-14400, -1440, -1440, -1440, -1440, -7200] (extendRow Arithmetic.row1034) ![reductionProjection794, reductionProjection812, reductionProjection812, reductionProjection812, reductionProjection782, reductionProjection10305]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
