import NoFourMUBs.Step2.SOS.Canonical387
import NoFourMUBs.Step2.SOS.Canonical431
import NoFourMUBs.Step2.SOS.Canonical432
import NoFourMUBs.Step2.SOS.Canonical434
import NoFourMUBs.Step2.SOS.Canonical436
import NoFourMUBs.Step2.SOS.Canonical439
import NoFourMUBs.Step2.SOS.Canonical440
import NoFourMUBs.Step2.SOS.Canonical443
import NoFourMUBs.Step2.SOS.Canonical444
import NoFourMUBs.Step2.SOS.Canonical445
import NoFourMUBs.Step2.SOS.Canonical448
import NoFourMUBs.Step2.SOS.Canonical449
import NoFourMUBs.Step2.SOS.Canonical450
import NoFourMUBs.Step2.SOS.Canonical451
import NoFourMUBs.Step2.SOS.Canonical456
import NoFourMUBs.Step2.SOS.Canonical468
import NoFourMUBs.Step2.SOS.Canonical469
import NoFourMUBs.Step2.SOS.Canonical471
import NoFourMUBs.Step2.SOS.Canonical488
import NoFourMUBs.Step2.SOS.Canonical489
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections027
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions049
import NoFourMUBs.Step2.SOS.Reductions107
import NoFourMUBs.Step2.SOS.Reductions160
import NoFourMUBs.Step2.SOS.Reductions171
import NoFourMUBs.Step2.SOS.Reductions178
import NoFourMUBs.Step2.SOS.Reductions189
import NoFourMUBs.Step2.SOS.Reductions214
import NoFourMUBs.Step2.SOS.Reductions230
import NoFourMUBs.Step2.SOS.Reductions234
import NoFourMUBs.Step2.SOS.Reductions238
import NoFourMUBs.Step2.SOS.Reductions241
import NoFourMUBs.Step2.SOS.Reductions242
import NoFourMUBs.Step2.SOS.Reductions248
import NoFourMUBs.Step2.SOS.Reductions251
import NoFourMUBs.Step2.SOS.Reductions253
import NoFourMUBs.Step2.SOS.Reductions254
import NoFourMUBs.Step2.SOS.Reductions255

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput490 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-2, 0, 1, 1], ![1, -2, 0, 1], ![1, 3, -2, -2]]

theorem rowSound490 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 490) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row490 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row490 H]
  have hshape : boundaryInput490 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput490 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 180, 180, 288, 288, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput490 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7950, reductionProjection8051, reductionProjection8051, reductionProjection5718, reductionProjection8151, reductionProjection5716] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput490 (0 : Fin 6)) = canonicalInput24811.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput490 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7950 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput490 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7950 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24811 hH))).trans (reductionSound7950 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput490 (1 : Fin 6)) = canonicalInput28115.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput490 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8051 (Normalization.momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst boundaryInput490 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8051 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28115 hH))).trans (reductionSound8051 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput490 (2 : Fin 6)) = canonicalInput28828.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput490 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8051 (Normalization.momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst boundaryInput490 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8051 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28828 hH))).trans (reductionSound8051 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput490 (3 : Fin 6)) = canonicalInput28855.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput490 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5718 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput490 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5718 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28855 hH))).trans (reductionSound5718 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput490 (4 : Fin 6)) = canonicalInput28865.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput490 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8151 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput490 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8151 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28865 hH))).trans (reductionSound8151 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput490 (5 : Fin 6)) = canonicalInput28867.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput490 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5716 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput490 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5716 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28867 hH))).trans (reductionSound5716 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput490 (j : Fin 6)))
    1440 1440 ![1440, 180, 180, 288, 288, 288] ![-1440, -11520, -11520, -7200, -7200, -7200] (extendRow Arithmetic.row490) ![reductionProjection7950, reductionProjection8051, reductionProjection8051, reductionProjection5718, reductionProjection8151, reductionProjection5716]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput864 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-2, 0, 1, 1], ![0, 2, -1, -1], ![2, -2, 0, 0]]

theorem rowSound864 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 864) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row864 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row864 H]
  have hshape : boundaryInput864 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput864 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 360, 360, 180, 180, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput864 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8125, reductionProjection3449, reductionProjection3449, reductionProjection7495, reductionProjection7495, reductionProjection8137] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput864 (0 : Fin 6)) = canonicalInput27698.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput864 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8125 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput864 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8125 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27698 hH))).trans (reductionSound8125 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput864 (1 : Fin 6)) = canonicalInput28693.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput864 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3449 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput864 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3449 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28693 hH))).trans (reductionSound3449 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput864 (2 : Fin 6)) = canonicalInput28837.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput864 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3449 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput864 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3449 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28837 hH))).trans (reductionSound3449 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput864 (3 : Fin 6)) = canonicalInput28858.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput864 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7495 (Normalization.momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst boundaryInput864 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7495 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28858 hH))).trans (reductionSound7495 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput864 (4 : Fin 6)) = canonicalInput28863.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput864 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7495 (Normalization.momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst boundaryInput864 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7495 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28863 hH))).trans (reductionSound7495 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput864 (5 : Fin 6)) = canonicalInput28864.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput864 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8137 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput864 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8137 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28864 hH))).trans (reductionSound8137 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput864 (j : Fin 6)))
    360 720 ![720, 360, 360, 180, 180, 720] ![-360, -720, -720, -1440, -1440, -360] (extendRow Arithmetic.row864) ![reductionProjection8125, reductionProjection3449, reductionProjection3449, reductionProjection7495, reductionProjection7495, reductionProjection8137]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput872 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, 2, -1, -1], ![1, -1, 1, -1]]

theorem rowSound872 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 872) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row872 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row872 H]
  have hshape : boundaryInput872 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput872 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 180, 720, 1440, 1440, 180] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput872 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8127, oldProjection2085, reductionProjection8152, reductionProjection7496, reductionProjection7496, reductionProjection8153] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput872 (0 : Fin 6)) = canonicalInput27787.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput872 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8127 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput872 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8127 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27787 hH))).trans (reductionSound8127 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput872 (1 : Fin 6)) = canonicalInput28782.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput872 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection2085 (Normalization.momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst boundaryInput872 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection2085 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28782 hH))).trans (oldProjectionSound2085 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput872 (2 : Fin 6)) = canonicalInput29192.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput872 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8152 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput872 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8152 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29192 hH))).trans (reductionSound8152 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput872 (3 : Fin 6)) = canonicalInput29218.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput872 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7496 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput872 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7496 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29218 hH))).trans (reductionSound7496 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput872 (4 : Fin 6)) = canonicalInput29220.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput872 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7496 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput872 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7496 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29220 hH))).trans (reductionSound7496 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput872 (5 : Fin 6)) = canonicalInput29221.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput872 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8153 (Normalization.momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst boundaryInput872 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8153 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29221 hH))).trans (reductionSound8153 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput872 (j : Fin 6)))
    144 1440 ![720, 180, 720, 1440, 1440, 180] ![-288, -1152, -288, -144, -144, -1152] (extendRow Arithmetic.row872) ![reductionProjection8127, oldProjection2085, reductionProjection8152, reductionProjection7496, reductionProjection7496, reductionProjection8153]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput895 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![0, -1, 2, -1], ![2, -1, -1, 0]]

theorem rowSound895 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 895) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row895 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row895 H]
  have hshape : boundaryInput895 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput895 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 360, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput895 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection2015, reductionProjection7631, reductionProjection8145, reductionProjection6864, oldProjection3173, reductionProjection7633] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput895 (0 : Fin 6)) = canonicalInput30148.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput895 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection2015 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput895 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection2015 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30148 hH))).trans (oldProjectionSound2015 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput895 (1 : Fin 6)) = canonicalInput31291.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput895 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7631 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput895 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7631 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31291 hH))).trans (reductionSound7631 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput895 (2 : Fin 6)) = canonicalInput31320.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput895 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8145 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput895 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8145 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31320 hH))).trans (reductionSound8145 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput895 (3 : Fin 6)) = canonicalInput31346.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput895 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6864 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput895 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6864 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31346 hH))).trans (reductionSound6864 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput895 (4 : Fin 6)) = canonicalInput31351.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput895 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3173 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput895 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3173 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31351 hH))).trans (oldProjectionSound3173 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput895 (5 : Fin 6)) = canonicalInput31352.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput895 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7633 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput895 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7633 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31352 hH))).trans (reductionSound7633 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput895 (j : Fin 6)))
    1440 1440 ![1440, 1440, 360, 1440, 288, 1440] ![-1440, -1440, -5760, -1440, -7200, -1440] (extendRow Arithmetic.row895) ![oldProjection2015, reductionProjection7631, reductionProjection8145, reductionProjection6864, oldProjection3173, reductionProjection7633]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput976 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![2, -2, 2, -2]]

theorem rowSound976 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 976) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row976 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row976 H]
  have hshape : boundaryInput976 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput976 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 288, 720, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput976 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8124, reductionProjection8124, reductionProjection8138, reductionProjection8138, reductionProjection1584, reductionProjection6078] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput976 (0 : Fin 6)) = canonicalInput27647.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput976 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8124 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput976 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8124 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27647 hH))).trans (reductionSound8124 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput976 (1 : Fin 6)) = canonicalInput28149.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput976 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8124 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput976 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8124 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28149 hH))).trans (reductionSound8124 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput976 (2 : Fin 6)) = canonicalInput28392.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput976 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8138 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput976 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8138 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28392 hH))).trans (reductionSound8138 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput976 (3 : Fin 6)) = canonicalInput28436.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput976 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8138 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput976 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8138 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28436 hH))).trans (reductionSound8138 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput976 (4 : Fin 6)) = canonicalInput28446.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput976 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1584 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput976 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1584 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28446 hH))).trans (reductionSound1584 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput976 (5 : Fin 6)) = canonicalInput28447.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput976 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6078 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput976 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6078 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28447 hH))).trans (reductionSound6078 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput976 (j : Fin 6)))
    288 1440 ![1440, 1440, 288, 288, 720, 288] ![-288, -288, -1440, -1440, -576, -1440] (extendRow Arithmetic.row976) ![reductionProjection8124, reductionProjection8124, reductionProjection8138, reductionProjection8138, reductionProjection1584, reductionProjection6078]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1121 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, 2, 0, -2], ![1, -1, 2, -2]]

theorem rowSound1121 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1121) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1121 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1121 H]
  have hshape : boundaryInput1121 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1121 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 288, 1440, 720, 360] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1121 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7722, reductionProjection7722, reductionProjection7717, reductionProjection5481, reductionProjection8147, reductionProjection7638] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1121 (0 : Fin 6)) = canonicalInput27662.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1121 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7722 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1121 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7722 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27662 hH))).trans (reductionSound7722 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1121 (1 : Fin 6)) = canonicalInput28160.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1121 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7722 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1121 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7722 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28160 hH))).trans (reductionSound7722 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1121 (2 : Fin 6)) = canonicalInput28495.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1121 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7717 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1121 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7717 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28495 hH))).trans (reductionSound7717 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1121 (3 : Fin 6)) = canonicalInput28531.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1121 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5481 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1121 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5481 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28531 hH))).trans (reductionSound5481 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1121 (4 : Fin 6)) = canonicalInput28535.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1121 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8147 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1121 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8147 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28535 hH))).trans (reductionSound8147 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1121 (5 : Fin 6)) = canonicalInput28536.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1121 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7638 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1121 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7638 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28536 hH))).trans (reductionSound7638 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1121 (j : Fin 6)))
    720 1440 ![288, 288, 288, 1440, 720, 360] ![-3600, -3600, -3600, -720, -1440, -2880] (extendRow Arithmetic.row1121) ![reductionProjection7722, reductionProjection7722, reductionProjection7717, reductionProjection5481, reductionProjection8147, reductionProjection7638]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1172 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 0, -1, 2], ![0, 2, 0, -2], ![-1, 0, 3, -2]]

theorem rowSound1172 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1172) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1172 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1172 H]
  have hshape : boundaryInput1172 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1172 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 288, 288, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1172 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7749, reductionProjection7736, reductionProjection7736, reductionProjection7738, reductionProjection8158, reductionProjection7380] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1172 (0 : Fin 6)) = canonicalInput27932.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1172 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7749 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1172 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7749 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27932 hH))).trans (reductionSound7749 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1172 (1 : Fin 6)) = canonicalInput29984.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1172 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7736 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1172 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7736 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29984 hH))).trans (reductionSound7736 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1172 (2 : Fin 6)) = canonicalInput30004.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1172 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7736 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1172 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7736 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30004 hH))).trans (reductionSound7736 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1172 (3 : Fin 6)) = canonicalInput30016.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1172 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7738 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1172 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7738 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30016 hH))).trans (reductionSound7738 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1172 (4 : Fin 6)) = canonicalInput30017.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1172 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8158 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1172 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8158 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30017 hH))).trans (reductionSound8158 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1172 (5 : Fin 6)) = canonicalInput30018.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1172 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7380 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1172 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7380 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30018 hH))).trans (reductionSound7380 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1172 (j : Fin 6)))
    1440 1440 ![720, 288, 288, 1440, 1440, 1440] ![-2880, -7200, -7200, -1440, -1440, -1440] (extendRow Arithmetic.row1172) ![reductionProjection7749, reductionProjection7736, reductionProjection7736, reductionProjection7738, reductionProjection8158, reductionProjection7380]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput389 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![1, -1, -2, 2], ![1, -1, 2, -2]]

theorem rowSound389 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 389) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row389 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row389 H]
  have hshape : boundaryInput389 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput389 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 720, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput389 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5147, reductionProjection8172, reductionProjection8186, reductionProjection7740, reductionProjection8169, reductionProjection8170] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput389 (0 : Fin 6)) = canonicalInput30151.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput389 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5147 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput389 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5147 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30151 hH))).trans (reductionSound5147 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput389 (1 : Fin 6)) = canonicalInput31294.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput389 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8172 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput389 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8172 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31294 hH))).trans (reductionSound8172 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput389 (2 : Fin 6)) = canonicalInput31323.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput389 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8186 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput389 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8186 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31323 hH))).trans (reductionSound8186 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput389 (3 : Fin 6)) = canonicalInput31353.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput389 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7740 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput389 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7740 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31353 hH))).trans (reductionSound7740 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput389 (4 : Fin 6)) = canonicalInput31358.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput389 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8169 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput389 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8169 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31358 hH))).trans (reductionSound8169 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput389 (5 : Fin 6)) = canonicalInput31359.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput389 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8170 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput389 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8170 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31359 hH))).trans (reductionSound8170 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput389 (j : Fin 6)))
    1440 1440 ![720, 720, 1440, 1440, 1440, 1440] ![-2880, -2880, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row389) ![reductionProjection5147, reductionProjection8172, reductionProjection8186, reductionProjection7740, reductionProjection8169, reductionProjection8170]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
