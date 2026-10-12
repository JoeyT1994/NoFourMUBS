import NoFourMUBs.Step2.SOS.Canonical432
import NoFourMUBs.Step2.SOS.Canonical433
import NoFourMUBs.Step2.SOS.Canonical434
import NoFourMUBs.Step2.SOS.Canonical440
import NoFourMUBs.Step2.SOS.Canonical445
import NoFourMUBs.Step2.SOS.Canonical449
import NoFourMUBs.Step2.SOS.Canonical450
import NoFourMUBs.Step2.SOS.Canonical452
import NoFourMUBs.Step2.SOS.Canonical453
import NoFourMUBs.Step2.SOS.Canonical454
import NoFourMUBs.Step2.SOS.Canonical455
import NoFourMUBs.Step2.SOS.Canonical457
import NoFourMUBs.Step2.SOS.Canonical458
import NoFourMUBs.Step2.SOS.Canonical459
import NoFourMUBs.Step2.SOS.Canonical460
import NoFourMUBs.Step2.SOS.Canonical472
import NoFourMUBs.Step2.SOS.Canonical495
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections027
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions046
import NoFourMUBs.Step2.SOS.Reductions146
import NoFourMUBs.Step2.SOS.Reductions163
import NoFourMUBs.Step2.SOS.Reductions172
import NoFourMUBs.Step2.SOS.Reductions174
import NoFourMUBs.Step2.SOS.Reductions179
import NoFourMUBs.Step2.SOS.Reductions213
import NoFourMUBs.Step2.SOS.Reductions214
import NoFourMUBs.Step2.SOS.Reductions217
import NoFourMUBs.Step2.SOS.Reductions230
import NoFourMUBs.Step2.SOS.Reductions231
import NoFourMUBs.Step2.SOS.Reductions233
import NoFourMUBs.Step2.SOS.Reductions236
import NoFourMUBs.Step2.SOS.Reductions237
import NoFourMUBs.Step2.SOS.Reductions238

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput899 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 2, -2, 0]]

theorem rowSound899 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 899) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row899 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row899 H]
  have hshape : boundaryInput899 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput899 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 720, 144, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput899 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1999, reductionProjection7577, reductionProjection7393, reductionProjection6868, reductionProjection7404, reductionProjection6827] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput899 (0 : Fin 6)) = canonicalInput30225.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput899 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1999 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput899 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1999 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30225 hH))).trans (oldProjectionSound1999 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput899 (1 : Fin 6)) = canonicalInput31682.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput899 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7577 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput899 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7577 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31682 hH))).trans (reductionSound7577 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput899 (2 : Fin 6)) = canonicalInput31699.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput899 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7393 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput899 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7393 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31699 hH))).trans (reductionSound7393 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput899 (3 : Fin 6)) = canonicalInput31705.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput899 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6868 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput899 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6868 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31705 hH))).trans (reductionSound6868 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput899 (4 : Fin 6)) = canonicalInput31706.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput899 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7404 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput899 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7404 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31706 hH))).trans (reductionSound7404 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput899 (5 : Fin 6)) = canonicalInput31707.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput899 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6827 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput899 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6827 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31707 hH))).trans (reductionSound6827 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput899 (j : Fin 6)))
    1440 1440 ![1440, 720, 144, 1440, 1440, 1440] ![-1440, -2880, -14400, -1440, -1440, -1440] (extendRow Arithmetic.row899) ![oldProjection1999, reductionProjection7577, reductionProjection7393, reductionProjection6868, reductionProjection7404, reductionProjection6827]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1267 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, -1, 2, -1], ![2, -2, 0, 0], ![-2, 2, -1, 1]]

theorem rowSound1267 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1267) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1267 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1267 H]
  have hshape : boundaryInput1267 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1267 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 144, 288, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1267 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5242, oldProjection1742, reductionProjection7566, reductionProjection5511, reductionProjection5513, reductionProjection1474] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1267 (0 : Fin 6)) = canonicalInput27761.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1267 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5242 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1267 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5242 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27761 hH))).trans (reductionSound5242 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1267 (1 : Fin 6)) = canonicalInput28758.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1267 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1742 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1267 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1742 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28758 hH))).trans (oldProjectionSound1742 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1267 (2 : Fin 6)) = canonicalInput28980.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1267 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7566 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1267 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7566 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28980 hH))).trans (reductionSound7566 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1267 (3 : Fin 6)) = canonicalInput29117.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1267 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5511 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1267 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5511 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29117 hH))).trans (reductionSound5511 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1267 (4 : Fin 6)) = canonicalInput29118.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1267 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5513 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1267 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5513 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29118 hH))).trans (reductionSound5513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1267 (5 : Fin 6)) = canonicalInput29119.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1267 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1474 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1267 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1474 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29119 hH))).trans (reductionSound1474 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1267 (j : Fin 6)))
    1440 1440 ![1440, 1440, 144, 288, 720, 1440] ![-1440, -1440, -14400, -7200, -2880, -1440] (extendRow Arithmetic.row1267) ![reductionProjection5242, oldProjection1742, reductionProjection7566, reductionProjection5511, reductionProjection5513, reductionProjection1474]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1275 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 2, 0, 0], ![2, 0, -1, -1], ![0, -3, 2, 1]]

theorem rowSound1275 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1275) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1275 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1275 H]
  have hshape : boundaryInput1275 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1275 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1275 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7387, oldProjection1701, reductionProjection7557, reductionProjection5516, reductionProjection7485, reductionProjection7557] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1275 (0 : Fin 6)) = canonicalInput27747.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1275 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7387 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1275 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7387 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27747 hH))).trans (reductionSound7387 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1275 (1 : Fin 6)) = canonicalInput28741.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1275 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1701 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1275 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1701 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28741 hH))).trans (oldProjectionSound1701 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1275 (2 : Fin 6)) = canonicalInput28949.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1275 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7557 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1275 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7557 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28949 hH))).trans (reductionSound7557 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1275 (3 : Fin 6)) = canonicalInput29075.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1275 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5516 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1275 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5516 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29075 hH))).trans (reductionSound5516 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1275 (4 : Fin 6)) = canonicalInput29076.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1275 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7485 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1275 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7485 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29076 hH))).trans (reductionSound7485 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1275 (5 : Fin 6)) = canonicalInput29077.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1275 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7557 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1275 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7557 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29077 hH))).trans (reductionSound7557 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1275 (j : Fin 6)))
    720 1440 ![288, 288, 1440, 1440, 1440, 1440] ![-3600, -3600, -720, -720, -720, -720] (extendRow Arithmetic.row1275) ![reductionProjection7387, oldProjection1701, reductionProjection7557, reductionProjection5516, reductionProjection7485, reductionProjection7557]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1272 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 2, -1, -1], ![2, -2, 0, 0], ![-2, -1, 2, 1]]

theorem rowSound1272 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1272) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1272 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1272 H]
  have hshape : boundaryInput1272 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1272 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1272 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5741, oldProjection1844, reductionProjection7570, reductionProjection7586, reductionProjection5590, reductionProjection7570] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1272 (0 : Fin 6)) = canonicalInput27763.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1272 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5741 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1272 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5741 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27763 hH))).trans (reductionSound5741 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1272 (1 : Fin 6)) = canonicalInput28760.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1272 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1844 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1272 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1844 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28760 hH))).trans (oldProjectionSound1844 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1272 (2 : Fin 6)) = canonicalInput28996.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1272 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7570 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1272 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7570 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28996 hH))).trans (reductionSound7570 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1272 (3 : Fin 6)) = canonicalInput29127.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1272 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7586 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1272 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7586 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29127 hH))).trans (reductionSound7586 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1272 (4 : Fin 6)) = canonicalInput29128.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1272 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5590 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1272 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5590 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29128 hH))).trans (reductionSound5590 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1272 (5 : Fin 6)) = canonicalInput29129.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1272 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7570 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1272 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7570 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29129 hH))).trans (reductionSound7570 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1272 (j : Fin 6)))
    720 1440 ![1440, 1440, 1440, 1440, 288, 1440] ![-720, -720, -720, -720, -3600, -720] (extendRow Arithmetic.row1272) ![reductionProjection5741, oldProjection1844, reductionProjection7570, reductionProjection7586, reductionProjection5590, reductionProjection7570]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1281 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-2, 2, 0, 0], ![1, 1, -1, -1], ![0, -3, 2, 1]]

theorem rowSound1281 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1281) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1281 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1281 H]
  have hshape : boundaryInput1281 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1281 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![144, 144, 1440, 288, 360, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1281 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7407, oldProjection1698, reductionProjection7604, reductionProjection5596, reductionProjection7606, reductionProjection7604] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1281 (0 : Fin 6)) = canonicalInput27806.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1281 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7407 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1281 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7407 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27806 hH))).trans (reductionSound7407 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1281 (1 : Fin 6)) = canonicalInput28803.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1281 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1698 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1281 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1698 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28803 hH))).trans (oldProjectionSound1698 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1281 (2 : Fin 6)) = canonicalInput29288.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1281 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7604 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1281 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7604 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29288 hH))).trans (reductionSound7604 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1281 (3 : Fin 6)) = canonicalInput29307.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1281 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5596 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1281 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5596 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29307 hH))).trans (reductionSound5596 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1281 (4 : Fin 6)) = canonicalInput29308.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1281 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7606 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1281 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7606 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29308 hH))).trans (reductionSound7606 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1281 (5 : Fin 6)) = canonicalInput29309.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1281 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7604 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1281 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7604 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29309 hH))).trans (reductionSound7604 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1281 (j : Fin 6)))
    288 1440 ![144, 144, 1440, 288, 360, 1440] ![-2880, -2880, -288, -1440, -1152, -288] (extendRow Arithmetic.row1281) ![reductionProjection7407, oldProjection1698, reductionProjection7604, reductionProjection5596, reductionProjection7606, reductionProjection7604]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1122 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![1, -1, 1, -1], ![0, 2, 1, -3]]

theorem rowSound1122 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1122) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1122 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1122 H]
  have hshape : boundaryInput1122 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1122 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 144, 1440, 720, 360] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1122 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6972, reductionProjection6972, reductionProjection6969, reductionProjection4692, oldProjection2979, reductionProjection7638] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1122 (0 : Fin 6)) = canonicalInput27663.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1122 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6972 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1122 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6972 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27663 hH))).trans (reductionSound6972 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1122 (1 : Fin 6)) = canonicalInput28161.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1122 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6972 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1122 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6972 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28161 hH))).trans (reductionSound6972 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1122 (2 : Fin 6)) = canonicalInput28496.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1122 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6969 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1122 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6969 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28496 hH))).trans (reductionSound6969 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1122 (3 : Fin 6)) = canonicalInput28532.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1122 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4692 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1122 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4692 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28532 hH))).trans (reductionSound4692 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1122 (4 : Fin 6)) = canonicalInput28537.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1122 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2979 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1122 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2979 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28537 hH))).trans (oldProjectionSound2979 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1122 (5 : Fin 6)) = canonicalInput28538.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1122 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7638 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1122 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7638 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28538 hH))).trans (reductionSound7638 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1122 (j : Fin 6)))
    1440 1440 ![1440, 1440, 144, 1440, 720, 360] ![-1440, -1440, -14400, -1440, -2880, -5760] (extendRow Arithmetic.row1122) ![reductionProjection6972, reductionProjection6972, reductionProjection6969, reductionProjection4692, oldProjection2979, reductionProjection7638]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1156 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![0, -1, 2, -1], ![2, -1, 1, -2]]

theorem rowSound1156 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1156) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1156 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1156 H]
  have hshape : boundaryInput1156 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1156 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 1440, 288, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1156 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7627, reductionProjection7628, reductionProjection7629, reductionProjection6858, reductionProjection5511, reductionProjection7477] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1156 (0 : Fin 6)) = canonicalInput27823.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1156 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7627 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1156 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7627 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27823 hH))).trans (reductionSound7627 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1156 (1 : Fin 6)) = canonicalInput29344.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1156 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7628 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1156 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7628 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29344 hH))).trans (reductionSound7628 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1156 (2 : Fin 6)) = canonicalInput29425.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1156 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7629 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1156 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7629 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29425 hH))).trans (reductionSound7629 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1156 (3 : Fin 6)) = canonicalInput29455.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1156 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6858 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1156 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6858 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29455 hH))).trans (reductionSound6858 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1156 (4 : Fin 6)) = canonicalInput29458.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1156 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5511 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1156 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5511 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29458 hH))).trans (reductionSound5511 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1156 (5 : Fin 6)) = canonicalInput29459.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1156 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7477 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1156 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7477 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29459 hH))).trans (reductionSound7477 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1156 (j : Fin 6)))
    1440 1440 ![288, 1440, 1440, 288, 288, 1440] ![-7200, -1440, -1440, -7200, -7200, -1440] (extendRow Arithmetic.row1156) ![reductionProjection7627, reductionProjection7628, reductionProjection7629, reductionProjection6858, reductionProjection5511, reductionProjection7477]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1157 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![2, -1, 0, -1], ![0, -1, 3, -2]]

theorem rowSound1157 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1157) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1157 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1157 H]
  have hshape : boundaryInput1157 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1157 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1157 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7642, reductionProjection7645, reductionProjection7646, reductionProjection6872, reductionProjection7647, reductionProjection7477] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1157 (0 : Fin 6)) = canonicalInput27824.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1157 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7642 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1157 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7642 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27824 hH))).trans (reductionSound7642 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1157 (1 : Fin 6)) = canonicalInput29345.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1157 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7645 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1157 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7645 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29345 hH))).trans (reductionSound7645 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1157 (2 : Fin 6)) = canonicalInput29426.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1157 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7646 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1157 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7646 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29426 hH))).trans (reductionSound7646 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1157 (3 : Fin 6)) = canonicalInput29456.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1157 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6872 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1157 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6872 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29456 hH))).trans (reductionSound6872 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1157 (4 : Fin 6)) = canonicalInput29461.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1157 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7647 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1157 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7647 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29461 hH))).trans (reductionSound7647 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1157 (5 : Fin 6)) = canonicalInput29462.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1157 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7477 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1157 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7477 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29462 hH))).trans (reductionSound7477 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1157 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-1440, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row1157) ![reductionProjection7642, reductionProjection7645, reductionProjection7646, reductionProjection6872, reductionProjection7647, reductionProjection7477]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
