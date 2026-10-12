import NoFourMUBs.Step2.SOS.Canonical386
import NoFourMUBs.Step2.SOS.Canonical388
import NoFourMUBs.Step2.SOS.Canonical432
import NoFourMUBs.Step2.SOS.Canonical434
import NoFourMUBs.Step2.SOS.Canonical435
import NoFourMUBs.Step2.SOS.Canonical436
import NoFourMUBs.Step2.SOS.Canonical438
import NoFourMUBs.Step2.SOS.Canonical440
import NoFourMUBs.Step2.SOS.Canonical441
import NoFourMUBs.Step2.SOS.Canonical448
import NoFourMUBs.Step2.SOS.Canonical450
import NoFourMUBs.Step2.SOS.Canonical451
import NoFourMUBs.Step2.SOS.Canonical458
import NoFourMUBs.Step2.SOS.Canonical460
import NoFourMUBs.Step2.SOS.Canonical461
import NoFourMUBs.Step2.SOS.Canonical464
import NoFourMUBs.Step2.SOS.Canonical465
import NoFourMUBs.Step2.SOS.Canonical466
import NoFourMUBs.Step2.SOS.Canonical468
import NoFourMUBs.Step2.SOS.Canonical469
import NoFourMUBs.Step2.SOS.Canonical471
import NoFourMUBs.Step2.SOS.Canonical491
import NoFourMUBs.Step2.SOS.Canonical492
import NoFourMUBs.Step2.SOS.Canonical493
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections026
import NoFourMUBs.Step2.SOS.OldProjections035
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions029
import NoFourMUBs.Step2.SOS.Reductions041
import NoFourMUBs.Step2.SOS.Reductions048
import NoFourMUBs.Step2.SOS.Reductions139
import NoFourMUBs.Step2.SOS.Reductions208
import NoFourMUBs.Step2.SOS.Reductions214
import NoFourMUBs.Step2.SOS.Reductions215
import NoFourMUBs.Step2.SOS.Reductions216
import NoFourMUBs.Step2.SOS.Reductions217
import NoFourMUBs.Step2.SOS.Reductions232
import NoFourMUBs.Step2.SOS.Reductions234
import NoFourMUBs.Step2.SOS.Reductions236
import NoFourMUBs.Step2.SOS.Reductions237
import NoFourMUBs.Step2.SOS.Reductions238
import NoFourMUBs.Step2.SOS.Reductions239
import NoFourMUBs.Step2.SOS.Reductions240
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical299

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput386 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -1, -1], ![-2, 0, 3, -1], ![0, -1, -2, 3]]

theorem rowSound386 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 386) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row386 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row386 H]
  have hshape : boundaryInput386 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput386 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput386 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1946, reductionProjection6879, reductionProjection6876, reductionProjection6874, reductionProjection7649, reductionProjection6900] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput386 (0 : Fin 6)) = canonicalInput30201.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput386 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1946 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput386 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1946 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30201 hH))).trans (oldProjectionSound1946 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput386 (1 : Fin 6)) = canonicalInput31450.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput386 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6879 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput386 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6879 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31450 hH))).trans (reductionSound6879 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput386 (2 : Fin 6)) = canonicalInput31523.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput386 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6876 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput386 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6876 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31523 hH))).trans (reductionSound6876 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput386 (3 : Fin 6)) = canonicalInput31584.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput386 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6874 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput386 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6874 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31584 hH))).trans (reductionSound6874 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput386 (4 : Fin 6)) = canonicalInput31588.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput386 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7649 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput386 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7649 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31588 hH))).trans (reductionSound7649 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput386 (5 : Fin 6)) = canonicalInput31589.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput386 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6900 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput386 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6900 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31589 hH))).trans (reductionSound6900 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput386 (j : Fin 6)))
    1440 1440 ![1440, 1440, 288, 1440, 1440, 1440] ![-1440, -1440, -7200, -1440, -1440, -1440] (extendRow Arithmetic.row386) ![oldProjection1946, reductionProjection6879, reductionProjection6876, reductionProjection6874, reductionProjection7649, reductionProjection6900]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1149 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![2, -1, -1, 0], ![0, -1, 3, -2]]

theorem rowSound1149 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1149) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1149 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1149 H]
  have hshape : boundaryInput1149 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1149 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 144, 360] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1149 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7644, reductionProjection7647, reductionProjection7647, reductionProjection6878, reductionProjection7651, reductionProjection7506] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1149 (0 : Fin 6)) = canonicalInput27878.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1149 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7644 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1149 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7644 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27878 hH))).trans (reductionSound7644 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1149 (1 : Fin 6)) = canonicalInput29461.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1149 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7647 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1149 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7647 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29461 hH))).trans (reductionSound7647 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1149 (2 : Fin 6)) = canonicalInput29754.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1149 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7647 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1149 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7647 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29754 hH))).trans (reductionSound7647 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1149 (3 : Fin 6)) = canonicalInput29775.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1149 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6878 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1149 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6878 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29775 hH))).trans (reductionSound6878 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1149 (4 : Fin 6)) = canonicalInput29779.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1149 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7651 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1149 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7651 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29779 hH))).trans (reductionSound7651 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1149 (5 : Fin 6)) = canonicalInput29780.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1149 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7506 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1149 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7506 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29780 hH))).trans (reductionSound7506 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1149 (j : Fin 6)))
    288 1440 ![1440, 1440, 1440, 1440, 144, 360] ![-288, -288, -288, -288, -2880, -1152] (extendRow Arithmetic.row1149) ![reductionProjection7644, reductionProjection7647, reductionProjection7647, reductionProjection6878, reductionProjection7651, reductionProjection7506]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1171 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 0, 0, 2], ![0, 2, 0, -2], ![0, -1, 3, -2]]

theorem rowSound1171 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1171) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1171 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1171 H]
  have hshape : boundaryInput1171 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1171 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 1440, 288, 288, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1171 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7594, reductionProjection7581, reductionProjection7637, reductionProjection6883, reductionProjection7653, reductionProjection7511] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1171 (0 : Fin 6)) = canonicalInput27935.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1171 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7594 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1171 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7594 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27935 hH))).trans (reductionSound7594 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1171 (1 : Fin 6)) = canonicalInput29987.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1171 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7581 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1171 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7581 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29987 hH))).trans (reductionSound7581 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1171 (2 : Fin 6)) = canonicalInput30025.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1171 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7637 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1171 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7637 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30025 hH))).trans (reductionSound7637 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1171 (3 : Fin 6)) = canonicalInput30033.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1171 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6883 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1171 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6883 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30033 hH))).trans (reductionSound6883 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1171 (4 : Fin 6)) = canonicalInput30035.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1171 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7653 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1171 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7653 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30035 hH))).trans (reductionSound7653 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1171 (5 : Fin 6)) = canonicalInput30036.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1171 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7511 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1171 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7511 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30036 hH))).trans (reductionSound7511 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1171 (j : Fin 6)))
    288 1440 ![720, 1440, 288, 288, 1440, 1440] ![-576, -288, -1440, -1440, -288, -288] (extendRow Arithmetic.row1171) ![reductionProjection7594, reductionProjection7581, reductionProjection7637, reductionProjection6883, reductionProjection7653, reductionProjection7511]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1213 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![2, 0, -2, 0], ![0, -1, 3, -2]]

theorem rowSound1213 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1213) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1213 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1213 H]
  have hshape : boundaryInput1213 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1213 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 1440, 1440, 720, 144, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1213 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7455, oldProjection2697, oldProjection2697, reductionProjection4461, reductionProjection7651, reductionProjection6671] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1213 (0 : Fin 6)) = canonicalInput24867.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1213 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7455 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1213 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7455 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24867 hH))).trans (reductionSound7455 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1213 (1 : Fin 6)) = canonicalInput28726.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1213 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection2697 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1213 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection2697 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28726 hH))).trans (oldProjectionSound2697 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1213 (2 : Fin 6)) = canonicalInput29747.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1213 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection2697 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1213 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection2697 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29747 hH))).trans (oldProjectionSound2697 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1213 (3 : Fin 6)) = canonicalInput29773.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1213 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4461 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1213 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4461 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29773 hH))).trans (reductionSound4461 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1213 (4 : Fin 6)) = canonicalInput29779.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1213 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7651 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1213 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7651 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29779 hH))).trans (reductionSound7651 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1213 (5 : Fin 6)) = canonicalInput29781.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1213 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6671 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1213 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6671 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29781 hH))).trans (reductionSound6671 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1213 (j : Fin 6)))
    360 1440 ![720, 1440, 1440, 720, 144, 720] ![-720, -360, -360, -720, -3600, -720] (extendRow Arithmetic.row1213) ![reductionProjection7455, oldProjection2697, oldProjection2697, reductionProjection4461, reductionProjection7651, reductionProjection6671]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput481 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-2, 1, 1, 0], ![0, 2, 0, -2], ![2, -2, 2, -2]]

theorem rowSound481 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 481) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row481 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row481 H]
  have hshape : boundaryInput481 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput481 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![360, 360, 360, 90, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput481 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1563, reductionProjection1563, reductionProjection1563, reductionProjection7704, oldProjection3293, reductionProjection1338] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput481 (0 : Fin 6)) = canonicalInput24756.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput481 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1563 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput481 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1563 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24756 hH))).trans (reductionSound1563 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput481 (1 : Fin 6)) = canonicalInput28067.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput481 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1563 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput481 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1563 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28067 hH))).trans (reductionSound1563 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput481 (2 : Fin 6)) = canonicalInput28215.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput481 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1563 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput481 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1563 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28215 hH))).trans (reductionSound1563 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput481 (3 : Fin 6)) = canonicalInput28235.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((90 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput481 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7704 (Normalization.momentVector H)
      have hh : (90 : ℝ) * injectiveMoment H (mergeFirst boundaryInput481 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7704 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (90 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28235 hH))).trans (reductionSound7704 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput481 (4 : Fin 6)) = canonicalInput28237.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput481 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3293 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput481 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3293 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28237 hH))).trans (oldProjectionSound3293 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput481 (5 : Fin 6)) = canonicalInput28238.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput481 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1338 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput481 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1338 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28238 hH))).trans (reductionSound1338 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput481 (j : Fin 6)))
    1440 1440 ![360, 360, 360, 90, 1440, 1440] ![-5760, -5760, -5760, -23040, -1440, -1440] (extendRow Arithmetic.row481) ![reductionProjection1563, reductionProjection1563, reductionProjection1563, reductionProjection7704, oldProjection3293, reductionProjection1338]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput991 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, 0, 2], ![1, -2, 3, -2]]

theorem rowSound991 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 991) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row991 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row991 H]
  have hshape : boundaryInput991 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput991 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput991 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7677, oldProjection3189, oldProjection3189, reductionProjection7701, reductionProjection6955, oldProjection3099] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput991 (0 : Fin 6)) = canonicalInput27891.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput991 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7677 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput991 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7677 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27891 hH))).trans (reductionSound7677 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput991 (1 : Fin 6)) = canonicalInput29530.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput991 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection3189 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput991 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection3189 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29530 hH))).trans (oldProjectionSound3189 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput991 (2 : Fin 6)) = canonicalInput29767.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput991 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection3189 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput991 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection3189 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29767 hH))).trans (oldProjectionSound3189 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput991 (3 : Fin 6)) = canonicalInput29825.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput991 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7701 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput991 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7701 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29825 hH))).trans (reductionSound7701 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput991 (4 : Fin 6)) = canonicalInput29831.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput991 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6955 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput991 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6955 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29831 hH))).trans (reductionSound6955 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput991 (5 : Fin 6)) = canonicalInput29832.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput991 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3099 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput991 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3099 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29832 hH))).trans (oldProjectionSound3099 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput991 (j : Fin 6)))
    288 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-288, -288, -288, -288, -288, -288] (extendRow Arithmetic.row991) ![reductionProjection7677, oldProjection3189, oldProjection3189, reductionProjection7701, reductionProjection6955, oldProjection3099]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput995 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, 0, 0, 2], ![1, -1, 3, -3]]

theorem rowSound995 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 995) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row995 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row995 H]
  have hshape : boundaryInput995 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput995 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput995 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7671, reductionProjection7695, oldProjection3188, reductionProjection7698, reductionProjection6947, oldProjection3041] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput995 (0 : Fin 6)) = canonicalInput27836.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput995 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7671 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput995 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7671 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27836 hH))).trans (reductionSound7671 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput995 (1 : Fin 6)) = canonicalInput29357.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput995 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7695 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput995 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7695 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29357 hH))).trans (reductionSound7695 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput995 (2 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9570 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput995 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection3188 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput995 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection3188 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9570 hH))).trans (oldProjectionSound3188 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput995 (3 : Fin 6)) = canonicalInput29516.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput995 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7698 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput995 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7698 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29516 hH))).trans (reductionSound7698 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput995 (4 : Fin 6)) = canonicalInput29520.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput995 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6947 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput995 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6947 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29520 hH))).trans (reductionSound6947 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput995 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9574 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput995 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3041 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput995 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3041 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9574 hH))).trans (oldProjectionSound3041 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput995 (j : Fin 6)))
    720 1440 ![1440, 1440, 288, 1440, 1440, 288] ![-720, -720, -3600, -720, -720, -3600] (extendRow Arithmetic.row995) ![reductionProjection7671, reductionProjection7695, oldProjection3188, reductionProjection7698, reductionProjection6947, oldProjection3041]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1129 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, -2, 0, 2], ![2, 0, -1, -1], ![-2, 2, 1, -1]]

theorem rowSound1129 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1129) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1129 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1129 H]
  have hshape : boundaryInput1129 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1129 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 360, 720, 180] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1129 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7666, reductionProjection948, reductionProjection948, reductionProjection6928, reductionProjection7684, reductionProjection7495] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1129 (0 : Fin 6)) = canonicalInput27704.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1129 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7666 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1129 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7666 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27704 hH))).trans (reductionSound7666 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1129 (1 : Fin 6)) = canonicalInput28698.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1129 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection948 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1129 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection948 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28698 hH))).trans (reductionSound948 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1129 (2 : Fin 6)) = canonicalInput28842.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1129 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection948 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1129 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection948 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28842 hH))).trans (reductionSound948 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1129 (3 : Fin 6)) = canonicalInput28878.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1129 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6928 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1129 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6928 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28878 hH))).trans (reductionSound6928 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1129 (4 : Fin 6)) = canonicalInput28880.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1129 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7684 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1129 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7684 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28880 hH))).trans (reductionSound7684 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1129 (5 : Fin 6)) = canonicalInput28881.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1129 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7495 (Normalization.momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1129 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7495 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28881 hH))).trans (reductionSound7495 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1129 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 360, 720, 180] ![-1440, -1440, -1440, -5760, -2880, -11520] (extendRow Arithmetic.row1129) ![reductionProjection7666, reductionProjection948, reductionProjection948, reductionProjection6928, reductionProjection7684, reductionProjection7495]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
