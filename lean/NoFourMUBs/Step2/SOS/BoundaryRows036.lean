import NoFourMUBs.Step2.SOS.Canonical387
import NoFourMUBs.Step2.SOS.Canonical432
import NoFourMUBs.Step2.SOS.Canonical433
import NoFourMUBs.Step2.SOS.Canonical434
import NoFourMUBs.Step2.SOS.Canonical436
import NoFourMUBs.Step2.SOS.Canonical439
import NoFourMUBs.Step2.SOS.Canonical448
import NoFourMUBs.Step2.SOS.Canonical449
import NoFourMUBs.Step2.SOS.Canonical450
import NoFourMUBs.Step2.SOS.Canonical451
import NoFourMUBs.Step2.SOS.Canonical452
import NoFourMUBs.Step2.SOS.Canonical456
import NoFourMUBs.Step2.SOS.Canonical458
import NoFourMUBs.Step2.SOS.Canonical459
import NoFourMUBs.Step2.SOS.Canonical460
import NoFourMUBs.Step2.SOS.Canonical463
import NoFourMUBs.Step2.SOS.Canonical467
import NoFourMUBs.Step2.SOS.Canonical471
import NoFourMUBs.Step2.SOS.Canonical490
import NoFourMUBs.Step2.SOS.Canonical491
import NoFourMUBs.Step2.SOS.Canonical492
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections034
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.OldProjections041
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions083
import NoFourMUBs.Step2.SOS.Reductions111
import NoFourMUBs.Step2.SOS.Reductions132
import NoFourMUBs.Step2.SOS.Reductions137
import NoFourMUBs.Step2.SOS.Reductions142
import NoFourMUBs.Step2.SOS.Reductions143
import NoFourMUBs.Step2.SOS.Reductions155
import NoFourMUBs.Step2.SOS.Reductions172
import NoFourMUBs.Step2.SOS.Reductions178
import NoFourMUBs.Step2.SOS.Reductions189
import NoFourMUBs.Step2.SOS.Reductions210
import NoFourMUBs.Step2.SOS.Reductions211
import NoFourMUBs.Step2.SOS.Reductions212
import NoFourMUBs.Step2.SOS.Reductions214
import NoFourMUBs.Step2.SOS.Reductions229
import NoFourMUBs.Step2.SOS.Reductions230
import NoFourMUBs.Step2.SOS.Reductions231
import NoFourMUBs.Step2.SOS.Reductions232
import NoFourMUBs.Step2.SOS.Reductions233
import NoFourMUBs.Step2.SOS.Reductions234
import NoFourMUBs.Step2.SOS.Reductions235
import NoFourMUBs.Step2.SOS.Reductions236

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput1159 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![2, 0, 1, -3]]

theorem rowSound1159 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1159) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1159 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1159 H]
  have hshape : boundaryInput1159 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1159 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![360, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1159 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6727, reductionProjection6742, reductionProjection6774, reductionProjection4412, reductionProjection4587, reductionProjection7477] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1159 (0 : Fin 6)) = canonicalInput27825.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1159 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6727 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1159 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6727 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27825 hH))).trans (reductionSound6727 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1159 (1 : Fin 6)) = canonicalInput29346.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1159 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6742 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1159 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6742 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29346 hH))).trans (reductionSound6742 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1159 (2 : Fin 6)) = canonicalInput29427.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1159 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6774 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1159 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6774 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29427 hH))).trans (reductionSound6774 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1159 (3 : Fin 6)) = canonicalInput29457.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1159 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4412 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1159 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4412 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29457 hH))).trans (reductionSound4412 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1159 (4 : Fin 6)) = canonicalInput29464.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1159 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4587 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1159 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4587 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29464 hH))).trans (reductionSound4587 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1159 (5 : Fin 6)) = canonicalInput29465.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1159 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7477 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1159 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7477 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29465 hH))).trans (reductionSound7477 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1159 (j : Fin 6)))
    1440 1440 ![360, 1440, 1440, 1440, 1440, 1440] ![-5760, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row1159) ![reductionProjection6727, reductionProjection6742, reductionProjection6774, reductionProjection4412, reductionProjection4587, reductionProjection7477]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput778 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-2, 0, 0, 2], ![0, 2, 0, -2], ![2, -2, 0, 0]]

theorem rowSound778 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 778) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row778 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row778 H]
  have hshape : boundaryInput778 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput778 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![180, 360, 360, 288, 180, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput778 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7335, reductionProjection3559, reductionProjection3559, reductionProjection4224, reductionProjection7495, reductionProjection6051] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput778 (0 : Fin 6)) = canonicalInput27696.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput778 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7335 (Normalization.momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst boundaryInput778 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7335 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27696 hH))).trans (reductionSound7335 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput778 (1 : Fin 6)) = canonicalInput28691.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput778 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3559 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput778 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3559 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28691 hH))).trans (reductionSound3559 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput778 (2 : Fin 6)) = canonicalInput28834.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput778 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3559 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput778 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3559 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28834 hH))).trans (reductionSound3559 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput778 (3 : Fin 6)) = canonicalInput28856.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput778 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4224 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput778 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4224 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28856 hH))).trans (reductionSound4224 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput778 (4 : Fin 6)) = canonicalInput28858.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput778 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7495 (Normalization.momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst boundaryInput778 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7495 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28858 hH))).trans (reductionSound7495 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput778 (5 : Fin 6)) = canonicalInput28859.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput778 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6051 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput778 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6051 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28859 hH))).trans (reductionSound6051 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput778 (j : Fin 6)))
    72 1440 ![180, 360, 360, 288, 180, 1440] ![-576, -288, -288, -360, -576, -72] (extendRow Arithmetic.row778) ![reductionProjection7335, reductionProjection3559, reductionProjection3559, reductionProjection4224, reductionProjection7495, reductionProjection6051]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput787 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 0, 0, 2], ![0, 2, 0, -2], ![1, -1, 1, -1]]

theorem rowSound787 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 787) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row787 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row787 H]
  have hshape : boundaryInput787 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput787 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 720, 720, 1440, 1440, 144] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput787 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7334, oldProjection2633, reductionProjection7510, oldProjection2951, reductionProjection7496, oldProjection3426] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput787 (0 : Fin 6)) = canonicalInput27786.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput787 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7334 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput787 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7334 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27786 hH))).trans (reductionSound7334 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput787 (1 : Fin 6)) = canonicalInput28781.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput787 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection2633 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput787 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection2633 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28781 hH))).trans (oldProjectionSound2633 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput787 (2 : Fin 6)) = canonicalInput29191.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput787 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7510 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput787 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7510 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29191 hH))).trans (reductionSound7510 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput787 (3 : Fin 6)) = canonicalInput29214.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput787 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2951 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput787 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2951 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29214 hH))).trans (oldProjectionSound2951 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput787 (4 : Fin 6)) = canonicalInput29218.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput787 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7496 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput787 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7496 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29218 hH))).trans (reductionSound7496 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput787 (5 : Fin 6)) = canonicalInput29219.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput787 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3426 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput787 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3426 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29219 hH))).trans (oldProjectionSound3426 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput787 (j : Fin 6)))
    720 1440 ![1440, 720, 720, 1440, 1440, 144] ![-720, -1440, -1440, -720, -720, -7200] (extendRow Arithmetic.row787) ![reductionProjection7334, oldProjection2633, reductionProjection7510, oldProjection2951, reductionProjection7496, oldProjection3426]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput382 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 0, -2, 0], ![-1, -1, -1, 3], ![-1, -1, 3, -1]]

theorem rowSound382 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 382) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row382 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row382 H]
  have hshape : boundaryInput382 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput382 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput382 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4964, reductionProjection7480, reductionProjection7480, reductionProjection6778, reductionProjection7539, reductionProjection7540] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput382 (0 : Fin 6)) = canonicalInput30180.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput382 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4964 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput382 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4964 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30180 hH))).trans (reductionSound4964 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput382 (1 : Fin 6)) = canonicalInput31422.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput382 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7480 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput382 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7480 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31422 hH))).trans (reductionSound7480 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput382 (2 : Fin 6)) = canonicalInput31480.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput382 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7480 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput382 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7480 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31480 hH))).trans (reductionSound7480 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput382 (3 : Fin 6)) = canonicalInput31496.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput382 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6778 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput382 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6778 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31496 hH))).trans (reductionSound6778 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput382 (4 : Fin 6)) = canonicalInput31499.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput382 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7539 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput382 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7539 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31499 hH))).trans (reductionSound7539 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput382 (5 : Fin 6)) = canonicalInput31500.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput382 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7540 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput382 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7540 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31500 hH))).trans (reductionSound7540 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput382 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-1440, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row382) ![reductionProjection4964, reductionProjection7480, reductionProjection7480, reductionProjection6778, reductionProjection7539, reductionProjection7540]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput489 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-2, 0, 0, 2], ![1, -2, 1, 0], ![1, 3, -2, -2]]

theorem rowSound489 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 489) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row489 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row489 H]
  have hshape : boundaryInput489 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput489 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 1440, 288, 72, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput489 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7462, reductionProjection7523, reductionProjection7523, reductionProjection4558, reductionProjection7530, reductionProjection5715] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput489 (0 : Fin 6)) = canonicalInput24810.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput489 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7462 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput489 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7462 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24810 hH))).trans (reductionSound7462 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput489 (1 : Fin 6)) = canonicalInput28114.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput489 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7523 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput489 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7523 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28114 hH))).trans (reductionSound7523 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput489 (2 : Fin 6)) = canonicalInput28827.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput489 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7523 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput489 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7523 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28827 hH))).trans (reductionSound7523 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput489 (3 : Fin 6)) = canonicalInput28854.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput489 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4558 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput489 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4558 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28854 hH))).trans (reductionSound4558 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput489 (4 : Fin 6)) = canonicalInput28860.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput489 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7530 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput489 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7530 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28860 hH))).trans (reductionSound7530 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput489 (5 : Fin 6)) = canonicalInput28862.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput489 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5715 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput489 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5715 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28862 hH))).trans (reductionSound5715 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput489 (j : Fin 6)))
    1440 1440 ![288, 1440, 1440, 288, 72, 288] ![-7200, -1440, -1440, -7200, -28800, -7200] (extendRow Arithmetic.row489) ![reductionProjection7462, reductionProjection7523, reductionProjection7523, reductionProjection4558, reductionProjection7530, reductionProjection5715]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput493 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 0, 0, 2], ![0, -1, 2, -1], ![1, 3, -2, -2]]

theorem rowSound493 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 493) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row493 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row493 H]
  have hshape : boundaryInput493 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput493 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 720, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput493 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7449, reductionProjection7527, reductionProjection7533, reductionProjection4407, reductionProjection7385, oldProjection3065] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput493 (0 : Fin 6)) = canonicalInput24821.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput493 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7449 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput493 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7449 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24821 hH))).trans (reductionSound7449 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput493 (1 : Fin 6)) = canonicalInput28121.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput493 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7527 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput493 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7527 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28121 hH))).trans (reductionSound7527 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput493 (2 : Fin 6)) = canonicalInput29184.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput493 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7533 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput493 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7533 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29184 hH))).trans (reductionSound7533 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput493 (3 : Fin 6)) = canonicalInput29212.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput493 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4407 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput493 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4407 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29212 hH))).trans (reductionSound4407 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput493 (4 : Fin 6)) = canonicalInput29215.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput493 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7385 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput493 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7385 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29215 hH))).trans (reductionSound7385 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput493 (5 : Fin 6)) = canonicalInput29217.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput493 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3065 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput493 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3065 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29217 hH))).trans (oldProjectionSound3065 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput493 (j : Fin 6)))
    288 1440 ![1440, 1440, 720, 1440, 1440, 1440] ![-288, -288, -576, -288, -288, -288] (extendRow Arithmetic.row493) ![reductionProjection7449, reductionProjection7527, reductionProjection7533, reductionProjection4407, reductionProjection7385, oldProjection3065]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1290 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 2, 0, 0], ![0, -2, 1, 1], ![1, -1, 2, -2]]

theorem rowSound1290 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1290) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1290 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1290 H]
  have hshape : boundaryInput1290 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1290 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1290 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7396, oldProjection3190, reductionProjection7524, reductionProjection5529, oldProjection3075, reductionProjection7525] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1290 (0 : Fin 6)) = canonicalInput27912.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1290 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7396 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1290 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7396 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27912 hH))).trans (reductionSound7396 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1290 (1 : Fin 6)) = canonicalInput29687.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1290 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection3190 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1290 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection3190 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29687 hH))).trans (oldProjectionSound3190 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1290 (2 : Fin 6)) = canonicalInput29904.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1290 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7524 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1290 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7524 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29904 hH))).trans (reductionSound7524 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1290 (3 : Fin 6)) = canonicalInput29920.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1290 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5529 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1290 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5529 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29920 hH))).trans (reductionSound5529 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1290 (4 : Fin 6)) = canonicalInput29921.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1290 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3075 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1290 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3075 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29921 hH))).trans (oldProjectionSound3075 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1290 (5 : Fin 6)) = canonicalInput29922.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1290 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7525 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1290 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7525 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29922 hH))).trans (reductionSound7525 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1290 (j : Fin 6)))
    1440 1440 ![1440, 1440, 288, 1440, 1440, 1440] ![-1440, -1440, -7200, -1440, -1440, -1440] (extendRow Arithmetic.row1290) ![reductionProjection7396, oldProjection3190, reductionProjection7524, reductionProjection5529, oldProjection3075, reductionProjection7525]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput374 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, -2, 2, 0], ![-2, 1, -1, 2], ![2, 0, 1, -3]]

theorem rowSound374 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 374) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row374 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row374 H]
  have hshape : boundaryInput374 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput374 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 720, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput374 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6806, reductionProjection2659, reductionProjection6853, reductionProjection6801, reductionProjection6798, reductionProjection7555] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput374 (0 : Fin 6)) = canonicalInput27718.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput374 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6806 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput374 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6806 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27718 hH))).trans (reductionSound6806 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput374 (1 : Fin 6)) = canonicalInput28711.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput374 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2659 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput374 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2659 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28711 hH))).trans (reductionSound2659 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput374 (2 : Fin 6)) = canonicalInput28920.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput374 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6853 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput374 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6853 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28920 hH))).trans (reductionSound6853 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput374 (3 : Fin 6)) = canonicalInput28972.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput374 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6801 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput374 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6801 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28972 hH))).trans (reductionSound6801 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput374 (4 : Fin 6)) = canonicalInput28974.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput374 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6798 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput374 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6798 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28974 hH))).trans (reductionSound6798 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput374 (5 : Fin 6)) = canonicalInput28975.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput374 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7555 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput374 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7555 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28975 hH))).trans (reductionSound7555 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput374 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 720, 1440, 1440] ![-1440, -1440, -1440, -2880, -1440, -1440] (extendRow Arithmetic.row374) ![reductionProjection6806, reductionProjection2659, reductionProjection6853, reductionProjection6801, reductionProjection6798, reductionProjection7555]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
