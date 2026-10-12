import NoFourMUBs.Step2.SOS.Canonical116
import NoFourMUBs.Step2.SOS.Canonical247
import NoFourMUBs.Step2.SOS.Canonical248
import NoFourMUBs.Step2.SOS.Canonical317
import NoFourMUBs.Step2.SOS.Canonical323
import NoFourMUBs.Step2.SOS.Canonical325
import NoFourMUBs.Step2.SOS.Canonical326
import NoFourMUBs.Step2.SOS.Canonical389
import NoFourMUBs.Step2.SOS.Canonical390
import NoFourMUBs.Step2.SOS.Canonical392
import NoFourMUBs.Step2.SOS.Canonical393
import NoFourMUBs.Step2.SOS.Canonical394
import NoFourMUBs.Step2.SOS.Canonical395
import NoFourMUBs.Step2.SOS.Canonical438
import NoFourMUBs.Step2.SOS.Canonical464
import NoFourMUBs.Step2.SOS.Canonical465
import NoFourMUBs.Step2.SOS.Canonical466
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections037
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions020
import NoFourMUBs.Step2.SOS.Reductions021
import NoFourMUBs.Step2.SOS.Reductions026
import NoFourMUBs.Step2.SOS.Reductions030
import NoFourMUBs.Step2.SOS.Reductions031
import NoFourMUBs.Step2.SOS.Reductions075
import NoFourMUBs.Step2.SOS.Reductions076
import NoFourMUBs.Step2.SOS.Reductions102
import NoFourMUBs.Step2.SOS.Reductions103
import NoFourMUBs.Step2.SOS.Reductions105
import NoFourMUBs.Step2.SOS.Reductions106
import NoFourMUBs.Step2.SOS.Reductions107
import NoFourMUBs.Step2.SOS.Reductions108
import NoFourMUBs.Step2.SOS.Reductions111
import NoFourMUBs.Step2.SOS.Reductions112
import NoFourMUBs.Step2.SOS.Reductions118
import NoFourMUBs.Step2.SOS.Reductions184
import NoFourMUBs.Step2.SOS.Reductions186
import NoFourMUBs.Step2.SOS.Reductions187
import NoFourMUBs.Step2.SOS.Reductions317
import NoFourMUBs.Step2.SOS.Reductions318

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput121 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 0, 1], ![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 0, -2, 2], ![2, 2, 1, -5]]

theorem rowSound121 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 121) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row121 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row121 H]
  have hshape : boundaryInput121 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput121 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![18, 288, 288, 720, 360, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput121 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection669, reductionProjection674, reductionProjection674, reductionProjection691, reductionProjection680, reductionProjection10154] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput121 (0 : Fin 6)) = canonicalInput7428.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput121 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection669 (Normalization.momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst boundaryInput121 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection669 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7428 hH))).trans (reductionSound669 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput121 (1 : Fin 6)) = canonicalInput20720.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput121 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection674 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput121 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection674 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20720 hH))).trans (reductionSound674 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput121 (2 : Fin 6)) = canonicalInput20863.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput121 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection674 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput121 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection674 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20863 hH))).trans (reductionSound674 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput121 (3 : Fin 6)) = canonicalInput20872.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput121 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection691 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput121 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection691 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20872 hH))).trans (reductionSound691 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput121 (4 : Fin 6)) = canonicalInput20875.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput121 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection680 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput121 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection680 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20875 hH))).trans (reductionSound680 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput121 (5 : Fin 6)) = canonicalInput20876.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput121 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10154 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput121 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10154 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20876 hH))).trans (reductionSound10154 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput121 (j : Fin 6)))
    1440 1440 ![18, 288, 288, 720, 360, 1440] ![-115200, -7200, -7200, -2880, -5760, -1440] (extendRow Arithmetic.row121) ![reductionProjection669, reductionProjection674, reductionProjection674, reductionProjection691, reductionProjection680, reductionProjection10154]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput308 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, -3, 2], ![-1, -2, 4, -1]]

theorem rowSound308 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 308) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row308 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row308 H]
  have hshape : boundaryInput308 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput308 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 720, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput308 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection2452, oldProjection2937, oldProjection2937, reductionProjection2412, reductionProjection10155, reductionProjection842] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput308 (0 : Fin 6)) = canonicalInput20343.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput308 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2452 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput308 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2452 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20343 hH))).trans (reductionSound2452 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput308 (1 : Fin 6)) = canonicalInput28049.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput308 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection2937 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput308 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection2937 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28049 hH))).trans (oldProjectionSound2937 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput308 (2 : Fin 6)) = canonicalInput29737.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput308 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection2937 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput308 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection2937 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29737 hH))).trans (oldProjectionSound2937 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput308 (3 : Fin 6)) = canonicalInput29814.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput308 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2412 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput308 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2412 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29814 hH))).trans (reductionSound2412 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput308 (4 : Fin 6)) = canonicalInput29845.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput308 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10155 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput308 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10155 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29845 hH))).trans (reductionSound10155 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput308 (5 : Fin 6)) = canonicalInput29848.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput308 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection842 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput308 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection842 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29848 hH))).trans (reductionSound842 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput308 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 720, 720] ![-1440, -1440, -1440, -1440, -2880, -2880] (extendRow Arithmetic.row308) ![reductionProjection2452, oldProjection2937, oldProjection2937, reductionProjection2412, reductionProjection10155, reductionProjection842]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput573 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, 1, 1, -2], ![2, -1, 0, 0, -1], ![-1, 2, 1, -2, 0]]

theorem rowSound573 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 573) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row573 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row573 H]
  have hshape : boundaryInput573 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput573 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 2880, 2880, 576, 2880, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput573 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5956, reductionProjection5908, reductionProjection5968, reductionProjection3594, reductionProjection10201, reductionProjection993] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput573 (0 : Fin 6)) = canonicalInput15847.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput573 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5956 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput573 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5956 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15847 hH))).trans (reductionSound5956 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput573 (1 : Fin 6)) = canonicalInput24952.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput573 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5908 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput573 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5908 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24952 hH))).trans (reductionSound5908 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput573 (2 : Fin 6)) = canonicalInput25122.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput573 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5968 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput573 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5968 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25122 hH))).trans (reductionSound5968 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput573 (3 : Fin 6)) = canonicalInput25171.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput573 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3594 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput573 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3594 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25171 hH))).trans (reductionSound3594 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput573 (4 : Fin 6)) = canonicalInput25190.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput573 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10201 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput573 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10201 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25190 hH))).trans (reductionSound10201 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput573 (5 : Fin 6)) = canonicalInput25192.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput573 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection993 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput573 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection993 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25192 hH))).trans (reductionSound993 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput573 (j : Fin 6)))
    576 2880 ![2880, 2880, 2880, 576, 2880, 720] ![-576, -576, -576, -2880, -576, -2304] (extendRow Arithmetic.row573) ![reductionProjection5956, reductionProjection5908, reductionProjection5968, reductionProjection3594, reductionProjection10201, reductionProjection993]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput575 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![0, -1, 1, 1, -1], ![2, 0, 0, 0, -2], ![-1, 2, 1, -2, 0]]

theorem rowSound575 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 575) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row575 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row575 H]
  have hshape : boundaryInput575 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput575 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 720, 2880, 1440, 2880, 576] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput575 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5958, reductionProjection5912, reductionProjection5985, reductionProjection3802, reductionProjection10205, reductionProjection982] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput575 (0 : Fin 6)) = canonicalInput15842.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput575 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5958 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput575 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5958 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15842 hH))).trans (reductionSound5958 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput575 (1 : Fin 6)) = canonicalInput24947.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput575 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5912 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput575 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5912 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24947 hH))).trans (reductionSound5912 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput575 (2 : Fin 6)) = canonicalInput25117.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput575 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5985 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput575 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5985 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25117 hH))).trans (reductionSound5985 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput575 (3 : Fin 6)) = canonicalInput25165.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput575 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3802 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput575 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3802 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25165 hH))).trans (reductionSound3802 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput575 (4 : Fin 6)) = canonicalInput25181.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput575 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10205 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput575 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10205 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25181 hH))).trans (reductionSound10205 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput575 (5 : Fin 6)) = canonicalInput25182.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput575 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection982 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput575 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection982 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25182 hH))).trans (reductionSound982 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput575 (j : Fin 6)))
    1440 2880 ![2880, 720, 2880, 1440, 2880, 576] ![-1440, -5760, -1440, -2880, -1440, -7200] (extendRow Arithmetic.row575) ![reductionProjection5958, reductionProjection5912, reductionProjection5985, reductionProjection3802, reductionProjection10205, reductionProjection982]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput579 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, 2, -2, 0], ![2, -1, 0, 0, -1], ![-1, 2, 0, 1, -2]]

theorem rowSound579 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 579) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row579 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row579 H]
  have hshape : boundaryInput579 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput579 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 2880, 576, 2880, 2880, 576] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput579 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection3421, reductionProjection3480, reductionProjection3569, reductionProjection3429, reductionProjection10177, reductionProjection3323] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput579 (0 : Fin 6)) = canonicalInput15848.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput579 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3421 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput579 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3421 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15848 hH))).trans (reductionSound3421 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput579 (1 : Fin 6)) = canonicalInput24953.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput579 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3480 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput579 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3480 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24953 hH))).trans (reductionSound3480 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput579 (2 : Fin 6)) = canonicalInput25123.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput579 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3569 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput579 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3569 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25123 hH))).trans (reductionSound3569 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput579 (3 : Fin 6)) = canonicalInput25172.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput579 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3429 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput579 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3429 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25172 hH))).trans (reductionSound3429 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput579 (4 : Fin 6)) = canonicalInput25193.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput579 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10177 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput579 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10177 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25193 hH))).trans (reductionSound10177 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput579 (5 : Fin 6)) = canonicalInput25194.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput579 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3323 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput579 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3323 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25194 hH))).trans (reductionSound3323 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput579 (j : Fin 6)))
    2880 2880 ![1440, 2880, 576, 2880, 2880, 576] ![-5760, -2880, -14400, -2880, -2880, -14400] (extendRow Arithmetic.row579) ![reductionProjection3421, reductionProjection3480, reductionProjection3569, reductionProjection3429, reductionProjection10177, reductionProjection3323]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput580 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![0, -1, 2, -1, 0], ![2, 0, 0, -1, -1], ![-1, 2, 0, 1, -2]]

theorem rowSound580 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 580) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row580 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row580 H]
  have hshape : boundaryInput580 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput580 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 288, 720, 2880, 2880, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput580 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection3393, reductionProjection3471, reductionProjection3556, reductionProjection3387, reductionProjection10183, reductionProjection3318] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput580 (0 : Fin 6)) = canonicalInput15843.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput580 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3393 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput580 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3393 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15843 hH))).trans (reductionSound3393 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput580 (1 : Fin 6)) = canonicalInput24948.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput580 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3471 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput580 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3471 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24948 hH))).trans (reductionSound3471 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput580 (2 : Fin 6)) = canonicalInput25118.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput580 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3556 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput580 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3556 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25118 hH))).trans (reductionSound3556 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput580 (3 : Fin 6)) = canonicalInput25166.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput580 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3387 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput580 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3387 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25166 hH))).trans (reductionSound3387 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput580 (4 : Fin 6)) = canonicalInput25183.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput580 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10183 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput580 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10183 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25183 hH))).trans (reductionSound10183 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput580 (5 : Fin 6)) = canonicalInput25184.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput580 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3318 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput580 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3318 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25184 hH))).trans (reductionSound3318 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput580 (j : Fin 6)))
    2880 2880 ![720, 288, 720, 2880, 2880, 2880] ![-11520, -28800, -11520, -2880, -2880, -2880] (extendRow Arithmetic.row580) ![reductionProjection3393, reductionProjection3471, reductionProjection3556, reductionProjection3387, reductionProjection10183, reductionProjection3318]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput581 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, 0, 1, -2], ![2, -1, 0, 0, -1], ![-1, 1, 2, -2, 0]]

theorem rowSound581 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 581) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row581 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row581 H]
  have hshape : boundaryInput581 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput581 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 288, 360, 2880, 2880, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput581 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5905, reductionProjection5954, reductionProjection5960, reductionProjection3599, reductionProjection10202, reductionProjection1004] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput581 (0 : Fin 6)) = canonicalInput15850.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput581 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5905 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput581 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5905 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15850 hH))).trans (reductionSound5905 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput581 (1 : Fin 6)) = canonicalInput24955.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput581 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5954 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput581 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5954 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24955 hH))).trans (reductionSound5954 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput581 (2 : Fin 6)) = canonicalInput25125.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput581 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5960 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput581 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5960 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25125 hH))).trans (reductionSound5960 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput581 (3 : Fin 6)) = canonicalInput25177.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput581 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3599 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput581 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3599 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25177 hH))).trans (reductionSound3599 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput581 (4 : Fin 6)) = canonicalInput25196.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput581 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10202 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput581 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10202 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25196 hH))).trans (reductionSound10202 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput581 (5 : Fin 6)) = canonicalInput25198.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput581 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1004 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput581 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1004 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25198 hH))).trans (reductionSound1004 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput581 (j : Fin 6)))
    576 2880 ![2880, 288, 360, 2880, 2880, 2880] ![-576, -5760, -4608, -576, -576, -576] (extendRow Arithmetic.row581) ![reductionProjection5905, reductionProjection5954, reductionProjection5960, reductionProjection3599, reductionProjection10202, reductionProjection1004]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput606 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![0, 0, 2, -2, 0], ![2, -1, 0, 0, -1], ![-1, 1, 0, 2, -2]]

theorem rowSound606 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 606) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row606 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row606 H]
  have hshape : boundaryInput606 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput606 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![576, 2880, 1440, 2880, 2880, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput606 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection3378, reductionProjection3463, reductionProjection3552, reductionProjection3366, reductionProjection10187, reductionProjection3295] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput606 (0 : Fin 6)) = canonicalInput15881.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput606 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3378 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput606 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3378 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15881 hH))).trans (reductionSound3378 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput606 (1 : Fin 6)) = canonicalInput24984.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput606 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3463 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput606 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3463 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24984 hH))).trans (reductionSound3463 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput606 (2 : Fin 6)) = canonicalInput25154.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput606 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3552 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput606 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3552 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25154 hH))).trans (reductionSound3552 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput606 (3 : Fin 6)) = canonicalInput25275.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput606 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3366 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput606 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3366 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25275 hH))).trans (reductionSound3366 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput606 (4 : Fin 6)) = canonicalInput25282.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput606 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10187 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput606 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10187 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25282 hH))).trans (reductionSound10187 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput606 (5 : Fin 6)) = canonicalInput25283.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput606 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3295 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput606 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3295 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25283 hH))).trans (reductionSound3295 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput606 (j : Fin 6)))
    2880 2880 ![576, 2880, 1440, 2880, 2880, 2880] ![-14400, -2880, -5760, -2880, -2880, -2880] (extendRow Arithmetic.row606) ![reductionProjection3378, reductionProjection3463, reductionProjection3552, reductionProjection3366, reductionProjection10187, reductionProjection3295]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
