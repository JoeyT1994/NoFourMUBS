import NoFourMUBs.Step2.SOS.Canonical115
import NoFourMUBs.Step2.SOS.Canonical267
import NoFourMUBs.Step2.SOS.Canonical317
import NoFourMUBs.Step2.SOS.Canonical323
import NoFourMUBs.Step2.SOS.Canonical325
import NoFourMUBs.Step2.SOS.Canonical397
import NoFourMUBs.Step2.SOS.Canonical400
import NoFourMUBs.Step2.SOS.Canonical401
import NoFourMUBs.Step2.SOS.Canonical420
import NoFourMUBs.Step2.SOS.Canonical435
import NoFourMUBs.Step2.SOS.Canonical436
import NoFourMUBs.Step2.SOS.Canonical438
import NoFourMUBs.Step2.SOS.Canonical459
import NoFourMUBs.Step2.SOS.Canonical463
import NoFourMUBs.Step2.SOS.Canonical466
import NoFourMUBs.Step2.SOS.Canonical467
import NoFourMUBs.Step2.SOS.Canonical471
import NoFourMUBs.Step2.SOS.Canonical491
import NoFourMUBs.Step2.SOS.Canonical492
import NoFourMUBs.Step2.SOS.Canonical493
import NoFourMUBs.Step2.SOS.Canonical494
import NoFourMUBs.Step2.SOS.Canonical495
import NoFourMUBs.Step2.SOS.Canonical508
import NoFourMUBs.Step2.SOS.Canonical509
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections033
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.OldProjections041
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions010
import NoFourMUBs.Step2.SOS.Reductions079
import NoFourMUBs.Step2.SOS.Reductions132
import NoFourMUBs.Step2.SOS.Reductions134
import NoFourMUBs.Step2.SOS.Reductions147
import NoFourMUBs.Step2.SOS.Reductions236
import NoFourMUBs.Step2.SOS.Reductions255
import NoFourMUBs.Step2.SOS.Reductions315
import NoFourMUBs.Step2.SOS.Reductions335
import NoFourMUBs.Step2.SOS.Reductions336
import NoFourMUBs.Step2.SOS.Reductions340
import NoFourMUBs.Step2.SOS.Reductions341
import NoFourMUBs.Step2.SOS.Reductions343
import NoFourMUBs.Step2.SOS.Reductions344
import NoFourMUBs.Step2.SOS.Reductions345
import NoFourMUBs.Step2.SOS.Reductions346
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical300
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical302
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical313

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput540 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 0, 2, -1], ![-1, -1, -1, 3], ![0, 3, -2, -1]]

theorem rowSound540 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 540) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row540 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row540 H]
  have hshape : boundaryInput540 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput540 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 360, 288, 1440, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput540 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection11000, reductionProjection11007, reductionProjection11008, reductionProjection10891, reductionProjection10105, reductionProjection7575] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput540 (0 : Fin 6)) = canonicalInput26905.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput540 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11000 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput540 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11000 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26905 hH))).trans (reductionSound11000 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput540 (1 : Fin 6)) = canonicalInput31677.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput540 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11007 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput540 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11007 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31677 hH))).trans (reductionSound11007 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput540 (2 : Fin 6)) = canonicalInput31696.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput540 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11008 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput540 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11008 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31696 hH))).trans (reductionSound11008 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput540 (3 : Fin 6)) = canonicalInput31715.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput540 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10891 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput540 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10891 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31715 hH))).trans (reductionSound10891 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput540 (4 : Fin 6)) = canonicalInput31719.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput540 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10105 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput540 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10105 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31719 hH))).trans (reductionSound10105 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput540 (5 : Fin 6)) = canonicalInput31720.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput540 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7575 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput540 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7575 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31720 hH))).trans (reductionSound7575 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput540 (j : Fin 6)))
    1440 1440 ![1440, 360, 288, 1440, 1440, 720] ![-1440, -5760, -7200, -1440, -1440, -2880] (extendRow Arithmetic.row540) ![reductionProjection11000, reductionProjection11007, reductionProjection11008, reductionProjection10891, reductionProjection10105, reductionProjection7575]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput561 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 0, 1], ![1, 0, -1, 0], ![2, 0, -1, -1], ![-1, -1, 3, -1], ![-1, 3, -1, -1]]

theorem rowSound561 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 561) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row561 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row561 H]
  have hshape : boundaryInput561 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput561 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2, 2, 1440, 288, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput561 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection345, reductionProjection345, reductionProjection8165, reductionProjection10903, reductionProjection10882, reductionProjection11008] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput561 (0 : Fin 6)) = canonicalInput17120.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput561 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection345 (Normalization.momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst boundaryInput561 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection345 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17120 hH))).trans (reductionSound345 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput561 (1 : Fin 6)) = canonicalInput25409.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput561 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection345 (Normalization.momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst boundaryInput561 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection345 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25409 hH))).trans (reductionSound345 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput561 (2 : Fin 6)) = canonicalInput25627.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput561 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8165 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput561 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8165 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25627 hH))).trans (reductionSound8165 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput561 (3 : Fin 6)) = canonicalInput25678.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput561 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10903 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput561 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10903 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25678 hH))).trans (reductionSound10903 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput561 (4 : Fin 6)) = canonicalInput25686.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput561 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10882 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput561 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10882 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25686 hH))).trans (reductionSound10882 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput561 (5 : Fin 6)) = canonicalInput25687.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput561 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11008 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput561 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11008 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25687 hH))).trans (reductionSound11008 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput561 (j : Fin 6)))
    1440 1440 ![2, 2, 1440, 288, 1440, 288] ![-1036800, -1036800, -1440, -7200, -1440, -7200] (extendRow Arithmetic.row561) ![reductionProjection345, reductionProjection345, reductionProjection8165, reductionProjection10903, reductionProjection10882, reductionProjection11008]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1099 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, -1, 3], ![-1, 0, 3, -2]]

theorem rowSound1099 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1099) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1099 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1099 H]
  have hshape : boundaryInput1099 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1099 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1099 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection3364, oldProjection3364, reductionProjection11023, reductionProjection11025, reductionProjection10732, oldProjection3197] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1099 (0 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw10047 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1099 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection3364 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1099 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection3364 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical10047 hH))).trans (oldProjectionSound3364 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1099 (1 : Fin 6)) = canonicalInput32526.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1099 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection3364 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1099 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection3364 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32526 hH))).trans (oldProjectionSound3364 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1099 (2 : Fin 6)) = canonicalInput32564.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1099 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11023 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1099 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11023 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32564 hH))).trans (reductionSound11023 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1099 (3 : Fin 6)) = canonicalInput32581.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1099 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11025 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1099 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11025 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32581 hH))).trans (reductionSound11025 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1099 (4 : Fin 6)) = canonicalInput32587.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1099 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10732 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1099 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10732 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32587 hH))).trans (reductionSound10732 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1099 (5 : Fin 6)) = canonicalInput32588.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1099 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3197 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1099 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3197 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32588 hH))).trans (oldProjectionSound3197 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1099 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-1440, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row1099) ![oldProjection3364, oldProjection3364, reductionProjection11023, reductionProjection11025, reductionProjection10732, oldProjection3197]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput136 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, -1, 3], ![-1, 1, 3, -3]]

theorem rowSound136 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 136) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row136 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row136 H]
  have hshape : boundaryInput136 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput136 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 1440, 288, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput136 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection11058, oldProjection3367, reductionProjection11041, oldProjection3366, reductionProjection10756, oldProjection3022] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput136 (0 : Fin 6)) = canonicalInput27909.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput136 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11058 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput136 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11058 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27909 hH))).trans (reductionSound11058 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput136 (1 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9601 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput136 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection3367 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput136 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection3367 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9601 hH))).trans (oldProjectionSound3367 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput136 (2 : Fin 6)) = canonicalInput29864.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput136 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11041 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput136 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11041 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29864 hH))).trans (reductionSound11041 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput136 (3 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9667 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput136 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3366 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput136 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3366 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9667 hH))).trans (oldProjectionSound3366 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput136 (4 : Fin 6)) = canonicalInput29899.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput136 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10756 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput136 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10756 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29899 hH))).trans (reductionSound10756 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput136 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9672 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput136 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3022 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput136 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3022 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9672 hH))).trans (oldProjectionSound3022 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput136 (j : Fin 6)))
    288 1440 ![288, 1440, 1440, 288, 1440, 288] ![-1440, -288, -288, -1440, -288, -1440] (extendRow Arithmetic.row136) ![reductionProjection11058, oldProjection3367, reductionProjection11041, oldProjection3366, reductionProjection10756, oldProjection3022]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput186 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, -1, 3], ![0, 1, 3, -4]]

theorem rowSound186 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 186) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row186 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row186 H]
  have hshape : boundaryInput186 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput186 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 288, 720, 720, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput186 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10927, reductionProjection11044, reductionProjection11096, oldProjection2549, reductionProjection2535, oldProjection3367] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput186 (0 : Fin 6)) = canonicalInput20332.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput186 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10927 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput186 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10927 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20332 hH))).trans (reductionSound10927 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput186 (1 : Fin 6)) = canonicalInput28039.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput186 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11044 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput186 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11044 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28039 hH))).trans (reductionSound11044 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput186 (2 : Fin 6)) = canonicalInput29404.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput186 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11096 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput186 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11096 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29404 hH))).trans (reductionSound11096 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput186 (3 : Fin 6)) = canonicalInput29656.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput186 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2549 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput186 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2549 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29656 hH))).trans (oldProjectionSound2549 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput186 (4 : Fin 6)) = canonicalInput29672.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput186 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2535 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput186 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2535 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29672 hH))).trans (reductionSound2535 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput186 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9601 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput186 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3367 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput186 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3367 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9601 hH))).trans (oldProjectionSound3367 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput186 (j : Fin 6)))
    1440 1440 ![720, 288, 720, 720, 1440, 1440] ![-2880, -7200, -2880, -2880, -1440, -1440] (extendRow Arithmetic.row186) ![reductionProjection10927, reductionProjection11044, reductionProjection11096, oldProjection2549, reductionProjection2535, oldProjection3367]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput226 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, 1, 1, -1], ![-1, -1, -1, 3], ![1, 0, 2, -3]]

theorem rowSound226 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 226) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row226 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row226 H]
  have hshape : boundaryInput226 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput226 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput226 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection11062, reductionProjection11073, reductionProjection11043, reductionProjection4291, reductionProjection10757, reductionProjection10938] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput226 (0 : Fin 6)) = canonicalInput27900.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput226 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11062 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput226 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11062 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27900 hH))).trans (reductionSound11062 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput226 (1 : Fin 6)) = canonicalInput29647.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput226 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11073 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput226 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11073 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29647 hH))).trans (reductionSound11073 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput226 (2 : Fin 6)) = canonicalInput29855.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput226 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11043 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput226 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11043 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29855 hH))).trans (reductionSound11043 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput226 (3 : Fin 6)) = canonicalInput29872.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput226 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4291 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput226 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4291 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29872 hH))).trans (reductionSound4291 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput226 (4 : Fin 6)) = canonicalInput29873.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput226 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10757 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput226 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10757 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29873 hH))).trans (reductionSound10757 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput226 (5 : Fin 6)) = canonicalInput29874.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput226 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10938 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput226 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10938 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29874 hH))).trans (reductionSound10938 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput226 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-1440, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row226) ![reductionProjection11062, reductionProjection11073, reductionProjection11043, reductionProjection4291, reductionProjection10757, reductionProjection10938]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput261 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, 3, -1], ![-1, 1, -3, 3]]

theorem rowSound261 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 261) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row261 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row261 H]
  have hshape : boundaryInput261 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput261 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 288, 1440, 1440, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput261 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection2525, oldProjection3366, reductionProjection11084, oldProjection3367, oldProjection3385, reductionProjection11069] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput261 (0 : Fin 6)) = canonicalInput30197.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput261 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection2525 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput261 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection2525 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30197 hH))).trans (oldProjectionSound2525 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput261 (1 : Fin 6)) = canonicalInput31444.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput261 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection3366 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput261 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection3366 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31444 hH))).trans (oldProjectionSound3366 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput261 (2 : Fin 6)) = canonicalInput31519.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput261 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11084 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput261 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11084 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31519 hH))).trans (reductionSound11084 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput261 (3 : Fin 6)) = canonicalInput31566.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput261 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3367 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput261 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3367 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31566 hH))).trans (oldProjectionSound3367 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput261 (4 : Fin 6)) = canonicalInput31577.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput261 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3385 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput261 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3385 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31577 hH))).trans (oldProjectionSound3385 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput261 (5 : Fin 6)) = canonicalInput31578.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput261 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11069 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput261 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11069 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31578 hH))).trans (reductionSound11069 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput261 (j : Fin 6)))
    288 1440 ![720, 288, 1440, 1440, 720, 1440] ![-576, -1440, -288, -288, -576, -288] (extendRow Arithmetic.row261) ![oldProjection2525, oldProjection3366, reductionProjection11084, oldProjection3367, oldProjection3385, reductionProjection11069]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput345 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 1, -1, 0], ![2, 1, -3, 0], ![0, 0, 4, -4]]

theorem rowSound345 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 345) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row345 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row345 H]
  have hshape : boundaryInput345 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput345 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 288, 144, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput345 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4233, reductionProjection4241, reductionProjection4241, reductionProjection4718, reductionProjection11102, oldProjection2953] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput345 (0 : Fin 6)) = canonicalInput7393.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput345 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4233 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput345 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4233 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7393 hH))).trans (reductionSound4233 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput345 (1 : Fin 6)) = canonicalInput20709.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput345 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4241 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput345 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4241 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20709 hH))).trans (reductionSound4241 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput345 (2 : Fin 6)) = canonicalInput20820.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput345 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4241 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput345 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4241 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20820 hH))).trans (reductionSound4241 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput345 (3 : Fin 6)) = canonicalInput20829.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput345 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4718 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput345 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4718 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20829 hH))).trans (reductionSound4718 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput345 (4 : Fin 6)) = canonicalInput20832.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput345 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11102 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput345 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11102 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20832 hH))).trans (reductionSound11102 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput345 (5 : Fin 6)) = canonicalInput20833.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput345 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2953 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput345 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2953 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20833 hH))).trans (oldProjectionSound2953 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput345 (j : Fin 6)))
    1440 1440 ![288, 288, 288, 144, 1440, 1440] ![-7200, -7200, -7200, -14400, -1440, -1440] (extendRow Arithmetic.row345) ![reductionProjection4233, reductionProjection4241, reductionProjection4241, reductionProjection4718, reductionProjection11102, oldProjection2953]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
