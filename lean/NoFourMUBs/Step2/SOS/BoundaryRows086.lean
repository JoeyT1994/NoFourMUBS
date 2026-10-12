import NoFourMUBs.Step2.SOS.Canonical247
import NoFourMUBs.Step2.SOS.Canonical248
import NoFourMUBs.Step2.SOS.Canonical316
import NoFourMUBs.Step2.SOS.Canonical317
import NoFourMUBs.Step2.SOS.Canonical390
import NoFourMUBs.Step2.SOS.Canonical392
import NoFourMUBs.Step2.SOS.Canonical393
import NoFourMUBs.Step2.SOS.Canonical394
import NoFourMUBs.Step2.SOS.Canonical395
import NoFourMUBs.Step2.SOS.Canonical437
import NoFourMUBs.Step2.SOS.Canonical438
import NoFourMUBs.Step2.SOS.Canonical440
import NoFourMUBs.Step2.SOS.Canonical444
import NoFourMUBs.Step2.SOS.Canonical464
import NoFourMUBs.Step2.SOS.Canonical465
import NoFourMUBs.Step2.SOS.Canonical466
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections037
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions063
import NoFourMUBs.Step2.SOS.Reductions064
import NoFourMUBs.Step2.SOS.Reductions065
import NoFourMUBs.Step2.SOS.Reductions066
import NoFourMUBs.Step2.SOS.Reductions067
import NoFourMUBs.Step2.SOS.Reductions080
import NoFourMUBs.Step2.SOS.Reductions095
import NoFourMUBs.Step2.SOS.Reductions102
import NoFourMUBs.Step2.SOS.Reductions156
import NoFourMUBs.Step2.SOS.Reductions157
import NoFourMUBs.Step2.SOS.Reductions158
import NoFourMUBs.Step2.SOS.Reductions160
import NoFourMUBs.Step2.SOS.Reductions162
import NoFourMUBs.Step2.SOS.Reductions225
import NoFourMUBs.Step2.SOS.Reductions276
import NoFourMUBs.Step2.SOS.Reductions334
import NoFourMUBs.Step2.SOS.Reductions336
import NoFourMUBs.Step2.SOS.Reductions337
import NoFourMUBs.Step2.SOS.Reductions338
import NoFourMUBs.Step2.SOS.Reductions339

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput292 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, -1, -2, 1], ![-1, -1, 4, -2]]

theorem rowSound292 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 292) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row292 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row292 H]
  have hshape : boundaryInput292 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput292 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 720, 1440, 1440, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput292 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8859, reductionProjection8859, oldProjection3245, oldProjection3245, reductionProjection10785, oldProjection2925] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput292 (0 : Fin 6)) = canonicalInput20249.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput292 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8859 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput292 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8859 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20249 hH))).trans (reductionSound8859 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput292 (1 : Fin 6)) = canonicalInput27985.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput292 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8859 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput292 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8859 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27985 hH))).trans (reductionSound8859 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput292 (2 : Fin 6)) = canonicalInput28210.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput292 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection3245 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput292 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection3245 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28210 hH))).trans (oldProjectionSound3245 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput292 (3 : Fin 6)) = canonicalInput28429.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput292 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3245 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput292 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3245 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28429 hH))).trans (oldProjectionSound3245 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput292 (4 : Fin 6)) = canonicalInput28452.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput292 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10785 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput292 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10785 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28452 hH))).trans (reductionSound10785 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput292 (5 : Fin 6)) = canonicalInput28454.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput292 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2925 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput292 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2925 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28454 hH))).trans (oldProjectionSound2925 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput292 (j : Fin 6)))
    288 1440 ![720, 720, 1440, 1440, 1440, 720] ![-576, -576, -288, -288, -288, -576] (extendRow Arithmetic.row292) ![reductionProjection8859, reductionProjection8859, oldProjection3245, oldProjection3245, reductionProjection10785, oldProjection2925]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput309 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, -1, -2, 2], ![-1, -1, 4, -2]]

theorem rowSound309 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 309) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row309 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row309 H]
  have hshape : boundaryInput309 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput309 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 288, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput309 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10705, reductionProjection10759, reductionProjection10759, reductionProjection10785, reductionProjection10782, reductionProjection2583] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput309 (0 : Fin 6)) = canonicalInput20341.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput309 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10705 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput309 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10705 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20341 hH))).trans (reductionSound10705 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput309 (1 : Fin 6)) = canonicalInput28047.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput309 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10759 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput309 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10759 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28047 hH))).trans (reductionSound10759 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput309 (2 : Fin 6)) = canonicalInput29735.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput309 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10759 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput309 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10759 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29735 hH))).trans (reductionSound10759 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput309 (3 : Fin 6)) = canonicalInput29812.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput309 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10785 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput309 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10785 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29812 hH))).trans (reductionSound10785 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput309 (4 : Fin 6)) = canonicalInput29838.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput309 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10782 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput309 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10782 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29838 hH))).trans (reductionSound10782 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput309 (5 : Fin 6)) = canonicalInput29839.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput309 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2583 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput309 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2583 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29839 hH))).trans (reductionSound2583 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput309 (j : Fin 6)))
    1440 1440 ![1440, 288, 288, 1440, 1440, 288] ![-1440, -7200, -7200, -1440, -1440, -7200] (extendRow Arithmetic.row309) ![reductionProjection10705, reductionProjection10759, reductionProjection10759, reductionProjection10785, reductionProjection10782, reductionProjection2583]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput310 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -3, 2], ![-1, -1, 4, -2]]

theorem rowSound310 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 310) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row310 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row310 H]
  have hshape : boundaryInput310 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput310 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput310 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10701, reductionProjection10758, reductionProjection10758, reductionProjection10776, reductionProjection10790, oldProjection2936] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput310 (0 : Fin 6)) = canonicalInput20339.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput310 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10701 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput310 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10701 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20339 hH))).trans (reductionSound10701 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput310 (1 : Fin 6)) = canonicalInput28045.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput310 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10758 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput310 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10758 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28045 hH))).trans (reductionSound10758 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput310 (2 : Fin 6)) = canonicalInput29733.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput310 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10758 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput310 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10758 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29733 hH))).trans (reductionSound10758 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput310 (3 : Fin 6)) = canonicalInput29810.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput310 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10776 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput310 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10776 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29810 hH))).trans (reductionSound10776 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput310 (4 : Fin 6)) = canonicalInput29819.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput310 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10790 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput310 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10790 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29819 hH))).trans (reductionSound10790 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput310 (5 : Fin 6)) = canonicalInput29822.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput310 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2936 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput310 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2936 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29822 hH))).trans (oldProjectionSound2936 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput310 (j : Fin 6)))
    720 1440 ![1440, 1440, 1440, 1440, 1440, 288] ![-720, -720, -720, -720, -720, -3600] (extendRow Arithmetic.row310) ![reductionProjection10701, reductionProjection10758, reductionProjection10758, reductionProjection10776, reductionProjection10790, oldProjection2936]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput586 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![0, 0, -1, 2, -1], ![2, -1, 0, 0, -1], ![-1, 2, 1, -1, -1]]

theorem rowSound586 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 586) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row586 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row586 H]
  have hshape : boundaryInput586 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput586 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 2880, 2880, 2880, 576, 576] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput586 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5035, reductionProjection5039, reductionProjection5042, reductionProjection5017, reductionProjection10834, reductionProjection3048] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput586 (0 : Fin 6)) = canonicalInput15862.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput586 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5035 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput586 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5035 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15862 hH))).trans (reductionSound5035 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput586 (1 : Fin 6)) = canonicalInput24967.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput586 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5039 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput586 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5039 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24967 hH))).trans (reductionSound5039 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput586 (2 : Fin 6)) = canonicalInput25137.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput586 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5042 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput586 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5042 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25137 hH))).trans (reductionSound5042 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput586 (3 : Fin 6)) = canonicalInput25216.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput586 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5017 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput586 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5017 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25216 hH))).trans (reductionSound5017 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput586 (4 : Fin 6)) = canonicalInput25233.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput586 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10834 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput586 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10834 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25233 hH))).trans (reductionSound10834 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput586 (5 : Fin 6)) = canonicalInput25235.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput586 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3048 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput586 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3048 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25235 hH))).trans (reductionSound3048 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput586 (j : Fin 6)))
    576 2880 ![1440, 2880, 2880, 2880, 576, 576] ![-1152, -576, -576, -576, -2880, -2880] (extendRow Arithmetic.row586) ![reductionProjection5035, reductionProjection5039, reductionProjection5042, reductionProjection5017, reductionProjection10834, reductionProjection3048]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput588 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![0, -1, 0, 2, -1], ![2, 0, -1, 0, -1], ![-1, 2, 1, -1, -1]]

theorem rowSound588 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 588) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row588 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row588 H]
  have hshape : boundaryInput588 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput588 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![576, 720, 2880, 576, 576, 576] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput588 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5027, reductionProjection5031, reductionProjection5042, reductionProjection5015, reductionProjection10836, reductionProjection3054] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput588 (0 : Fin 6)) = canonicalInput15860.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput588 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5027 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput588 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5027 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15860 hH))).trans (reductionSound5027 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput588 (1 : Fin 6)) = canonicalInput24965.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput588 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5031 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput588 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5031 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24965 hH))).trans (reductionSound5031 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput588 (2 : Fin 6)) = canonicalInput25135.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput588 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5042 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput588 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5042 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25135 hH))).trans (reductionSound5042 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput588 (3 : Fin 6)) = canonicalInput25211.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput588 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5015 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput588 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5015 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25211 hH))).trans (reductionSound5015 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput588 (4 : Fin 6)) = canonicalInput25229.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput588 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10836 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput588 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10836 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25229 hH))).trans (reductionSound10836 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput588 (5 : Fin 6)) = canonicalInput25231.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput588 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3054 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput588 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3054 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25231 hH))).trans (reductionSound3054 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput588 (j : Fin 6)))
    2880 2880 ![576, 720, 2880, 576, 576, 576] ![-14400, -11520, -2880, -14400, -14400, -14400] (extendRow Arithmetic.row588) ![reductionProjection5027, reductionProjection5031, reductionProjection5042, reductionProjection5015, reductionProjection10836, reductionProjection3054]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput621 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, 0, 1, -1], ![0, 0, 2, -1, -1], ![2, -1, 0, 0, -1], ![-1, 2, -1, -1, 1]]

theorem rowSound621 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 621) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row621 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row621 H]
  have hshape : boundaryInput621 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput621 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 2880, 1440, 576, 2880, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput621 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7216, reductionProjection7202, reductionProjection5137, reductionProjection5060, reductionProjection10846, reductionProjection2161] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput621 (0 : Fin 6)) = canonicalInput15896.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput621 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7216 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput621 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7216 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15896 hH))).trans (reductionSound7216 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput621 (1 : Fin 6)) = canonicalInput24993.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput621 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7202 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput621 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7202 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24993 hH))).trans (reductionSound7202 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput621 (2 : Fin 6)) = canonicalInput25292.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput621 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5137 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput621 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5137 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25292 hH))).trans (reductionSound5137 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput621 (3 : Fin 6)) = canonicalInput25314.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput621 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5060 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput621 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5060 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25314 hH))).trans (reductionSound5060 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput621 (4 : Fin 6)) = canonicalInput25323.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput621 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10846 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput621 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10846 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25323 hH))).trans (reductionSound10846 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput621 (5 : Fin 6)) = canonicalInput25324.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput621 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2161 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput621 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2161 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25324 hH))).trans (reductionSound2161 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput621 (j : Fin 6)))
    2880 2880 ![1440, 2880, 1440, 576, 2880, 2880] ![-5760, -2880, -5760, -14400, -2880, -2880] (extendRow Arithmetic.row621) ![reductionProjection7216, reductionProjection7202, reductionProjection5137, reductionProjection5060, reductionProjection10846, reductionProjection2161]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput595 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![0, 2, 0, -1, -1], ![2, 0, -1, 0, -1], ![-1, -1, 1, 2, -1]]

theorem rowSound595 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 595) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row595 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row595 H]
  have hshape : boundaryInput595 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput595 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 2880, 2880, 2880, 2880, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput595 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5201, reductionProjection5199, reductionProjection5195, reductionProjection5191, reductionProjection10848, reductionProjection3268] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput595 (0 : Fin 6)) = canonicalInput15865.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput595 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5201 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput595 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5201 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15865 hH))).trans (reductionSound5201 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput595 (1 : Fin 6)) = canonicalInput24970.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput595 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5199 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput595 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5199 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24970 hH))).trans (reductionSound5199 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput595 (2 : Fin 6)) = canonicalInput25140.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput595 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5195 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput595 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5195 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25140 hH))).trans (reductionSound5195 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput595 (3 : Fin 6)) = canonicalInput25225.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput595 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5191 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput595 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5191 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25225 hH))).trans (reductionSound5191 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput595 (4 : Fin 6)) = canonicalInput25239.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput595 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10848 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput595 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10848 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25239 hH))).trans (reductionSound10848 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput595 (5 : Fin 6)) = canonicalInput25241.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput595 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3268 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput595 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3268 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25241 hH))).trans (reductionSound3268 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput595 (j : Fin 6)))
    1440 2880 ![2880, 2880, 2880, 2880, 2880, 1440] ![-1440, -1440, -1440, -1440, -1440, -2880] (extendRow Arithmetic.row595) ![reductionProjection5201, reductionProjection5199, reductionProjection5195, reductionProjection5191, reductionProjection10848, reductionProjection3268]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput632 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-1, 0, 0, 2, -1], ![0, -1, 1, -1, 1], ![2, 1, 1, -1, -3]]

theorem rowSound632 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 632) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row632 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row632 H]
  have hshape : boundaryInput632 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput632 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 2880, 2880, 2880, 2880, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput632 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection2040, reductionProjection2101, reductionProjection2115, reductionProjection2033, reductionProjection2057, reductionProjection10851] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput632 (0 : Fin 6)) = canonicalInput15874.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput632 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2040 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput632 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2040 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15874 hH))).trans (reductionSound2040 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput632 (1 : Fin 6)) = canonicalInput24977.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput632 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2101 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput632 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2101 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24977 hH))).trans (reductionSound2101 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput632 (2 : Fin 6)) = canonicalInput25147.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput632 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2115 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput632 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2115 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25147 hH))).trans (reductionSound2115 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput632 (3 : Fin 6)) = canonicalInput25248.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput632 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2033 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput632 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2033 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25248 hH))).trans (reductionSound2033 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput632 (4 : Fin 6)) = canonicalInput25267.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput632 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2057 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput632 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2057 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25267 hH))).trans (reductionSound2057 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput632 (5 : Fin 6)) = canonicalInput25269.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput632 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10851 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput632 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10851 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25269 hH))).trans (reductionSound10851 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput632 (j : Fin 6)))
    576 2880 ![2880, 2880, 2880, 2880, 2880, 2880] ![-576, -576, -576, -576, -576, -576] (extendRow Arithmetic.row632) ![reductionProjection2040, reductionProjection2101, reductionProjection2115, reductionProjection2033, reductionProjection2057, reductionProjection10851]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
