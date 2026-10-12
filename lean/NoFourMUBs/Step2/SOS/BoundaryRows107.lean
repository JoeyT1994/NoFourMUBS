import NoFourMUBs.Step2.SOS.Canonical116
import NoFourMUBs.Step2.SOS.Canonical267
import NoFourMUBs.Step2.SOS.Canonical271
import NoFourMUBs.Step2.SOS.Canonical323
import NoFourMUBs.Step2.SOS.Canonical326
import NoFourMUBs.Step2.SOS.Canonical396
import NoFourMUBs.Step2.SOS.Canonical397
import NoFourMUBs.Step2.SOS.Canonical398
import NoFourMUBs.Step2.SOS.Canonical399
import NoFourMUBs.Step2.SOS.Canonical400
import NoFourMUBs.Step2.SOS.Canonical401
import NoFourMUBs.Step2.SOS.Canonical402
import NoFourMUBs.Step2.SOS.Canonical408
import NoFourMUBs.Step2.SOS.Canonical435
import NoFourMUBs.Step2.SOS.Canonical459
import NoFourMUBs.Step2.SOS.Canonical461
import NoFourMUBs.Step2.SOS.Canonical462
import NoFourMUBs.Step2.SOS.Canonical463
import NoFourMUBs.Step2.SOS.Canonical500
import NoFourMUBs.Step2.SOS.Canonical501
import NoFourMUBs.Step2.SOS.Canonical508
import NoFourMUBs.Step2.SOS.Canonical509
import NoFourMUBs.Step2.SOS.Canonical510
import NoFourMUBs.Step2.SOS.Canonical511
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions201
import NoFourMUBs.Step2.SOS.Reductions202
import NoFourMUBs.Step2.SOS.Reductions203
import NoFourMUBs.Step2.SOS.Reductions205
import NoFourMUBs.Step2.SOS.Reductions210
import NoFourMUBs.Step2.SOS.Reductions211
import NoFourMUBs.Step2.SOS.Reductions213
import NoFourMUBs.Step2.SOS.Reductions278
import NoFourMUBs.Step2.SOS.Reductions284
import NoFourMUBs.Step2.SOS.Reductions320
import NoFourMUBs.Step2.SOS.Reductions341
import NoFourMUBs.Step2.SOS.Reductions342
import NoFourMUBs.Step2.SOS.Reductions347
import NoFourMUBs.Step2.SOS.Reductions359
import NoFourMUBs.Step2.SOS.Reductions368
import NoFourMUBs.Step2.SOS.Reductions369
import NoFourMUBs.Step2.SOS.Reductions370
import NoFourMUBs.Step2.SOS.Reductions371
import NoFourMUBs.Step2.SOS.Reductions372

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput322 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, -3, 1], ![-1, 0, 4, -3]]

theorem rowSound322 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 322) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row322 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row322 H]
  have hshape : boundaryInput322 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput322 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 360, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput322 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10934, reductionProjection10934, reductionProjection10955, reductionProjection11109, reductionProjection11843, reductionProjection6443] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput322 (0 : Fin 6)) = canonicalInput17107.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput322 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10934 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput322 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10934 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17107 hH))).trans (reductionSound10934 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput322 (1 : Fin 6)) = canonicalInput25399.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput322 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10934 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput322 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10934 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25399 hH))).trans (reductionSound10934 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput322 (2 : Fin 6)) = canonicalInput25581.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput322 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10955 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput322 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10955 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25581 hH))).trans (reductionSound10955 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput322 (3 : Fin 6)) = canonicalInput25653.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput322 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11109 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput322 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11109 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25653 hH))).trans (reductionSound11109 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput322 (4 : Fin 6)) = canonicalInput25660.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput322 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11843 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput322 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11843 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25660 hH))).trans (reductionSound11843 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput322 (5 : Fin 6)) = canonicalInput25661.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput322 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6443 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput322 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6443 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25661 hH))).trans (reductionSound6443 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput322 (j : Fin 6)))
    288 1440 ![1440, 1440, 360, 1440, 288, 1440] ![-288, -288, -1152, -288, -1440, -288] (extendRow Arithmetic.row322) ![reductionProjection10934, reductionProjection10934, reductionProjection10955, reductionProjection11109, reductionProjection11843, reductionProjection6443]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput323 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, -3, 1], ![-1, 0, 4, -3]]

theorem rowSound323 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 323) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row323 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row323 H]
  have hshape : boundaryInput323 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput323 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 288, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput323 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6733, reductionProjection6733, reductionProjection6844, reductionProjection6768, reductionProjection11841, reductionProjection6441] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput323 (0 : Fin 6)) = canonicalInput17102.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput323 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6733 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput323 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6733 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17102 hH))).trans (reductionSound6733 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput323 (1 : Fin 6)) = canonicalInput25394.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput323 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6733 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput323 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6733 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25394 hH))).trans (reductionSound6733 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput323 (2 : Fin 6)) = canonicalInput25576.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput323 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6844 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput323 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6844 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25576 hH))).trans (reductionSound6844 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput323 (3 : Fin 6)) = canonicalInput25636.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput323 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6768 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput323 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6768 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25636 hH))).trans (reductionSound6768 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput323 (4 : Fin 6)) = canonicalInput25641.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput323 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11841 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput323 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11841 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25641 hH))).trans (reductionSound11841 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput323 (5 : Fin 6)) = canonicalInput25642.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput323 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6441 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput323 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6441 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25642 hH))).trans (reductionSound6441 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput323 (j : Fin 6)))
    1440 1440 ![288, 288, 288, 1440, 1440, 288] ![-7200, -7200, -7200, -1440, -1440, -7200] (extendRow Arithmetic.row323) ![reductionProjection6733, reductionProjection6733, reductionProjection6844, reductionProjection6768, reductionProjection11841, reductionProjection6441]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput331 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, 0, 3, -2], ![2, 0, -4, 2]]

theorem rowSound331 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 331) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row331 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row331 H]
  have hshape : boundaryInput331 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput331 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput331 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6450, reductionProjection6445, reductionProjection6521, reductionProjection6521, reductionProjection6441, reductionProjection11841] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput331 (0 : Fin 6)) = canonicalInput17135.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput331 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6450 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput331 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6450 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17135 hH))).trans (reductionSound6450 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput331 (1 : Fin 6)) = canonicalInput25425.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput331 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6445 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput331 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6445 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25425 hH))).trans (reductionSound6445 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput331 (2 : Fin 6)) = canonicalInput25705.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput331 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6521 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput331 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6521 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25705 hH))).trans (reductionSound6521 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput331 (3 : Fin 6)) = canonicalInput25765.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput331 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6521 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput331 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6521 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25765 hH))).trans (reductionSound6521 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput331 (4 : Fin 6)) = canonicalInput25770.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput331 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6441 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput331 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6441 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25770 hH))).trans (reductionSound6441 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput331 (5 : Fin 6)) = canonicalInput25771.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput331 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11841 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput331 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11841 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25771 hH))).trans (reductionSound11841 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput331 (j : Fin 6)))
    1440 1440 ![288, 1440, 1440, 1440, 288, 1440] ![-7200, -1440, -1440, -1440, -7200, -1440] (extendRow Arithmetic.row331) ![reductionProjection6450, reductionProjection6445, reductionProjection6521, reductionProjection6521, reductionProjection6441, reductionProjection11841]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput338 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![0, 1, -3, 2], ![-1, 0, 4, -3]]

theorem rowSound338 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 338) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row338 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row338 H]
  have hshape : boundaryInput338 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput338 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![144, 288, 288, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput338 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection11501, reductionProjection11805, reductionProjection11843, reductionProjection11853, reductionProjection11829, reductionProjection6522] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput338 (0 : Fin 6)) = canonicalInput17363.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput338 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11501 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput338 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11501 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17363 hH))).trans (reductionSound11501 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput338 (1 : Fin 6)) = canonicalInput25525.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput338 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11805 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput338 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11805 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25525 hH))).trans (reductionSound11805 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput338 (2 : Fin 6)) = canonicalInput26133.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput338 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11843 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput338 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11843 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26133 hH))).trans (reductionSound11843 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput338 (3 : Fin 6)) = canonicalInput26141.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput338 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11853 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput338 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11853 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26141 hH))).trans (reductionSound11853 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput338 (4 : Fin 6)) = canonicalInput26145.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput338 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11829 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput338 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11829 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26145 hH))).trans (reductionSound11829 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput338 (5 : Fin 6)) = canonicalInput26146.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput338 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6522 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput338 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6522 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26146 hH))).trans (reductionSound6522 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput338 (j : Fin 6)))
    1440 1440 ![144, 288, 288, 1440, 288, 1440] ![-14400, -7200, -7200, -1440, -7200, -1440] (extendRow Arithmetic.row338) ![reductionProjection11501, reductionProjection11805, reductionProjection11843, reductionProjection11853, reductionProjection11829, reductionProjection6522]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput351 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 0, 1], ![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 1, 0, -1], ![0, 1, 2, -3], ![2, 0, -4, 2]]

theorem rowSound351 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 351) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row351 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row351 H]
  have hshape : boundaryInput351 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput351 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput351 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6473, reductionProjection6475, reductionProjection6475, reductionProjection6574, reductionProjection6523, reductionProjection11847] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput351 (0 : Fin 6)) = canonicalInput7430.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput351 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6473 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput351 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6473 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7430 hH))).trans (reductionSound6473 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput351 (1 : Fin 6)) = canonicalInput20722.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput351 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6475 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput351 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6475 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20722 hH))).trans (reductionSound6475 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput351 (2 : Fin 6)) = canonicalInput20865.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput351 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6475 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput351 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6475 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20865 hH))).trans (reductionSound6475 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput351 (3 : Fin 6)) = canonicalInput20874.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput351 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6574 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput351 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6574 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20874 hH))).trans (reductionSound6574 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput351 (4 : Fin 6)) = canonicalInput20879.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput351 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6523 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput351 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6523 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20879 hH))).trans (reductionSound6523 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput351 (5 : Fin 6)) = canonicalInput20880.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput351 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11847 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput351 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11847 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20880 hH))).trans (reductionSound11847 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput351 (j : Fin 6)))
    1440 1440 ![288, 1440, 1440, 1440, 288, 1440] ![-7200, -1440, -1440, -1440, -7200, -1440] (extendRow Arithmetic.row351) ![reductionProjection6473, reductionProjection6475, reductionProjection6475, reductionProjection6574, reductionProjection6523, reductionProjection11847]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1295 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, -1, 2, 0], ![1, 2, 0, -3]]

theorem rowSound1295 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1295) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1295 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1295 H]
  have hshape : boundaryInput1295 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1295 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![144, 1440, 1440, 1440, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1295 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10258, reductionProjection10261, reductionProjection10262, reductionProjection9100, reductionProjection11870, reductionProjection8902] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1295 (0 : Fin 6)) = canonicalInput27858.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1295 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10258 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1295 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10258 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27858 hH))).trans (reductionSound10258 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1295 (1 : Fin 6)) = canonicalInput29379.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1295 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10261 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1295 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10261 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29379 hH))).trans (reductionSound10261 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1295 (2 : Fin 6)) = canonicalInput29567.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1295 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10262 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1295 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10262 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29567 hH))).trans (reductionSound10262 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1295 (3 : Fin 6)) = canonicalInput29624.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1295 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9100 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1295 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9100 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29624 hH))).trans (reductionSound9100 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1295 (4 : Fin 6)) = canonicalInput29632.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1295 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11870 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1295 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11870 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29632 hH))).trans (reductionSound11870 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1295 (5 : Fin 6)) = canonicalInput29633.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1295 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8902 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1295 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8902 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29633 hH))).trans (reductionSound8902 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1295 (j : Fin 6)))
    1440 1440 ![144, 1440, 1440, 1440, 720, 1440] ![-14400, -1440, -1440, -1440, -2880, -1440] (extendRow Arithmetic.row1295) ![reductionProjection10258, reductionProjection10261, reductionProjection10262, reductionProjection9100, reductionProjection11870, reductionProjection8902]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1101 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 0, -2, 3], ![-1, 0, 3, -2]]

theorem rowSound1101 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1101) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1101 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1101 H]
  have hshape : boundaryInput1101 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1101 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 720, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1101 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection11871, reductionProjection11871, reductionProjection11874, reductionProjection11874, reductionProjection11784, oldProjection2996] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1101 (0 : Fin 6)) = canonicalInput32012.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1101 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11871 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1101 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11871 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32012 hH))).trans (reductionSound11871 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1101 (1 : Fin 6)) = canonicalInput32523.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1101 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11871 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1101 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11871 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32523 hH))).trans (reductionSound11871 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1101 (2 : Fin 6)) = canonicalInput32561.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1101 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11874 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1101 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11874 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32561 hH))).trans (reductionSound11874 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1101 (3 : Fin 6)) = canonicalInput32574.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1101 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11874 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1101 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11874 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32574 hH))).trans (reductionSound11874 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1101 (4 : Fin 6)) = canonicalInput32576.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1101 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11784 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1101 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11784 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32576 hH))).trans (reductionSound11784 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1101 (5 : Fin 6)) = canonicalInput32577.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1101 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2996 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1101 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2996 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32577 hH))).trans (oldProjectionSound2996 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1101 (j : Fin 6)))
    1440 1440 ![720, 720, 1440, 1440, 288, 1440] ![-2880, -2880, -1440, -1440, -7200, -1440] (extendRow Arithmetic.row1101) ![reductionProjection11871, reductionProjection11871, reductionProjection11874, reductionProjection11874, reductionProjection11784, oldProjection2996]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput392 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, 1, 1, -1], ![-1, 0, 3, -2], ![0, -1, -2, 3]]

theorem rowSound392 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 392) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row392 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row392 H]
  have hshape : boundaryInput392 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput392 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 144, 288, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput392 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection11886, reductionProjection11883, reductionProjection11878, reductionProjection11911, reductionProjection11908, reductionProjection11809] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput392 (0 : Fin 6)) = canonicalInput32105.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput392 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11886 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput392 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11886 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32105 hH))).trans (reductionSound11886 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput392 (1 : Fin 6)) = canonicalInput32688.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput392 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11883 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput392 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11883 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32688 hH))).trans (reductionSound11883 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput392 (2 : Fin 6)) = canonicalInput32693.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput392 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11878 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput392 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11878 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32693 hH))).trans (reductionSound11878 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput392 (3 : Fin 6)) = canonicalInput32703.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput392 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11911 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput392 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11911 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32703 hH))).trans (reductionSound11911 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput392 (4 : Fin 6)) = canonicalInput32704.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput392 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11908 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput392 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11908 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32704 hH))).trans (reductionSound11908 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput392 (5 : Fin 6)) = canonicalInput32705.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput392 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11809 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput392 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11809 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32705 hH))).trans (reductionSound11809 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput392 (j : Fin 6)))
    1440 1440 ![1440, 1440, 144, 288, 1440, 288] ![-1440, -1440, -14400, -7200, -1440, -7200] (extendRow Arithmetic.row392) ![reductionProjection11886, reductionProjection11883, reductionProjection11878, reductionProjection11911, reductionProjection11908, reductionProjection11809]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
