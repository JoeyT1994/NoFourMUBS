import NoFourMUBs.Step2.SOS.Canonical267
import NoFourMUBs.Step2.SOS.Canonical316
import NoFourMUBs.Step2.SOS.Canonical317
import NoFourMUBs.Step2.SOS.Canonical387
import NoFourMUBs.Step2.SOS.Canonical396
import NoFourMUBs.Step2.SOS.Canonical397
import NoFourMUBs.Step2.SOS.Canonical399
import NoFourMUBs.Step2.SOS.Canonical401
import NoFourMUBs.Step2.SOS.Canonical437
import NoFourMUBs.Step2.SOS.Canonical438
import NoFourMUBs.Step2.SOS.Canonical439
import NoFourMUBs.Step2.SOS.Canonical441
import NoFourMUBs.Step2.SOS.Canonical442
import NoFourMUBs.Step2.SOS.Canonical444
import NoFourMUBs.Step2.SOS.Canonical445
import NoFourMUBs.Step2.SOS.Canonical447
import NoFourMUBs.Step2.SOS.Canonical448
import NoFourMUBs.Step2.SOS.Canonical459
import NoFourMUBs.Step2.SOS.Canonical463
import NoFourMUBs.Step2.SOS.Canonical464
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions039
import NoFourMUBs.Step2.SOS.Reductions049
import NoFourMUBs.Step2.SOS.Reductions166
import NoFourMUBs.Step2.SOS.Reductions168
import NoFourMUBs.Step2.SOS.Reductions169
import NoFourMUBs.Step2.SOS.Reductions173
import NoFourMUBs.Step2.SOS.Reductions175
import NoFourMUBs.Step2.SOS.Reductions178
import NoFourMUBs.Step2.SOS.Reductions180
import NoFourMUBs.Step2.SOS.Reductions182
import NoFourMUBs.Step2.SOS.Reductions188
import NoFourMUBs.Step2.SOS.Reductions189
import NoFourMUBs.Step2.SOS.Reductions190
import NoFourMUBs.Step2.SOS.Reductions315
import NoFourMUBs.Step2.SOS.Reductions316
import NoFourMUBs.Step2.SOS.Reductions317
import NoFourMUBs.Step2.SOS.Reductions327

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput297 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -2, 2, 1], ![0, 2, 2, -4]]

theorem rowSound297 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 297) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row297 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row297 H]
  have hshape : boundaryInput297 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput297 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 720, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput297 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5623, reductionProjection5623, reductionProjection10482, reductionProjection10482, reductionProjection1570, reductionProjection5831] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput297 (0 : Fin 6)) = canonicalInput20260.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput297 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5623 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput297 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5623 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20260 hH))).trans (reductionSound5623 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput297 (1 : Fin 6)) = canonicalInput27993.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput297 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5623 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput297 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5623 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27993 hH))).trans (reductionSound5623 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput297 (2 : Fin 6)) = canonicalInput28290.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput297 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10482 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput297 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10482 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28290 hH))).trans (reductionSound10482 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput297 (3 : Fin 6)) = canonicalInput28661.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput297 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10482 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput297 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10482 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28661 hH))).trans (reductionSound10482 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput297 (4 : Fin 6)) = canonicalInput28669.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput297 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1570 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput297 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1570 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28669 hH))).trans (reductionSound1570 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput297 (5 : Fin 6)) = canonicalInput28670.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput297 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5831 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput297 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5831 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28670 hH))).trans (reductionSound5831 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput297 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 720, 288] ![-1440, -1440, -1440, -1440, -2880, -7200] (extendRow Arithmetic.row297) ![reductionProjection5623, reductionProjection5623, reductionProjection10482, reductionProjection10482, reductionProjection1570, reductionProjection5831]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput317 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -2, 1, 2], ![0, 1, 3, -4]]

theorem rowSound317 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 317) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row317 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row317 H]
  have hshape : boundaryInput317 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput317 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 288, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput317 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5331, reductionProjection5770, reductionProjection10469, reductionProjection10469, reductionProjection1266, reductionProjection6103] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput317 (0 : Fin 6)) = canonicalInput20333.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput317 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5331 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput317 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5331 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20333 hH))).trans (reductionSound5331 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput317 (1 : Fin 6)) = canonicalInput28040.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput317 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5770 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput317 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5770 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28040 hH))).trans (reductionSound5770 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput317 (2 : Fin 6)) = canonicalInput29408.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput317 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10469 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput317 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10469 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29408 hH))).trans (reductionSound10469 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput317 (3 : Fin 6)) = canonicalInput29695.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput317 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10469 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput317 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10469 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29695 hH))).trans (reductionSound10469 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput317 (4 : Fin 6)) = canonicalInput29706.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput317 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1266 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput317 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1266 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29706 hH))).trans (reductionSound1266 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput317 (5 : Fin 6)) = canonicalInput29707.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput317 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6103 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput317 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6103 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29707 hH))).trans (reductionSound6103 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput317 (j : Fin 6)))
    1440 1440 ![1440, 1440, 288, 288, 720, 1440] ![-1440, -1440, -7200, -7200, -2880, -1440] (extendRow Arithmetic.row317) ![reductionProjection5331, reductionProjection5770, reductionProjection10469, reductionProjection10469, reductionProjection1266, reductionProjection6103]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput461 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![1, 0, -1, 0], ![-1, 2, -2, 1], ![1, 1, 2, -4]]

theorem rowSound461 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 461) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row461 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row461 H]
  have hshape : boundaryInput461 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput461 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 720, 1440, 288, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput461 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10116, reductionProjection10116, reductionProjection10118, reductionProjection10135, reductionProjection1579, reductionProjection10494] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput461 (0 : Fin 6)) = canonicalInput17094.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput461 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10116 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput461 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10116 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17094 hH))).trans (reductionSound10116 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput461 (1 : Fin 6)) = canonicalInput25385.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput461 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10116 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput461 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10116 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25385 hH))).trans (reductionSound10116 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput461 (2 : Fin 6)) = canonicalInput25566.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput461 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10118 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput461 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10118 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25566 hH))).trans (reductionSound10118 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput461 (3 : Fin 6)) = canonicalInput25594.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput461 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10135 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput461 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10135 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25594 hH))).trans (reductionSound10135 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput461 (4 : Fin 6)) = canonicalInput25598.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput461 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1579 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput461 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1579 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25598 hH))).trans (reductionSound1579 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput461 (5 : Fin 6)) = canonicalInput25599.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput461 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10494 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput461 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10494 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25599 hH))).trans (reductionSound10494 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput461 (j : Fin 6)))
    1440 1440 ![720, 720, 1440, 288, 288, 1440] ![-2880, -2880, -1440, -7200, -7200, -1440] (extendRow Arithmetic.row461) ![reductionProjection10116, reductionProjection10116, reductionProjection10118, reductionProjection10135, reductionProjection1579, reductionProjection10494]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput465 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![0, -1, 1, 0], ![1, 0, -1, 0], ![-1, 1, -2, 2], ![1, 2, 1, -4]]

theorem rowSound465 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 465) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row465 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row465 H]
  have hshape : boundaryInput465 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput465 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput465 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10094, reductionProjection10097, reductionProjection10097, reductionProjection10156, reductionProjection1259, reductionProjection10476] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput465 (0 : Fin 6)) = canonicalInput17125.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput465 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10094 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput465 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10094 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17125 hH))).trans (reductionSound10094 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput465 (1 : Fin 6)) = canonicalInput25413.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput465 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10097 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput465 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10097 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25413 hH))).trans (reductionSound10097 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput465 (2 : Fin 6)) = canonicalInput25694.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput465 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10097 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput465 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10097 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25694 hH))).trans (reductionSound10097 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput465 (3 : Fin 6)) = canonicalInput25714.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput465 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10156 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput465 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10156 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25714 hH))).trans (reductionSound10156 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput465 (4 : Fin 6)) = canonicalInput25719.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput465 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1259 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput465 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1259 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25719 hH))).trans (reductionSound1259 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput465 (5 : Fin 6)) = canonicalInput25720.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput465 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10476 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput465 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10476 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25720 hH))).trans (reductionSound10476 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput465 (j : Fin 6)))
    1440 1440 ![288, 1440, 1440, 1440, 1440, 1440] ![-7200, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row465) ![reductionProjection10094, reductionProjection10097, reductionProjection10097, reductionProjection10156, reductionProjection1259, reductionProjection10476]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1110 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, -1, 2, 1], ![2, 1, -1, -2]]

theorem rowSound1110 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1110) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1110 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1110 H]
  have hshape : boundaryInput1110 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1110 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 360, 720, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1110 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5396, reductionProjection5396, reductionProjection5416, reductionProjection5394, reductionProjection1568, reductionProjection10473] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1110 (0 : Fin 6)) = canonicalInput24768.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1110 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5396 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1110 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5396 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24768 hH))).trans (reductionSound5396 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1110 (1 : Fin 6)) = canonicalInput28077.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1110 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5396 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1110 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5396 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28077 hH))).trans (reductionSound5396 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1110 (2 : Fin 6)) = canonicalInput28229.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1110 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5416 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1110 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5416 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28229 hH))).trans (reductionSound5416 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1110 (3 : Fin 6)) = canonicalInput28315.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1110 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5394 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1110 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5394 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28315 hH))).trans (reductionSound5394 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1110 (4 : Fin 6)) = canonicalInput28332.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1110 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1568 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1110 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1568 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28332 hH))).trans (reductionSound1568 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1110 (5 : Fin 6)) = canonicalInput28333.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1110 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10473 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1110 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10473 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28333 hH))).trans (reductionSound10473 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1110 (j : Fin 6)))
    288 1440 ![288, 288, 360, 720, 288, 1440] ![-1440, -1440, -1152, -576, -1440, -288] (extendRow Arithmetic.row1110) ![reductionProjection5396, reductionProjection5396, reductionProjection5416, reductionProjection5394, reductionProjection1568, reductionProjection10473]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1111 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-2, -1, 2, 1], ![1, 2, -1, -2]]

theorem rowSound1111 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1111) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1111 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1111 H]
  have hshape : boundaryInput1111 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1111 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 720, 144, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1111 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5405, reductionProjection5405, reductionProjection5421, reductionProjection5719, reductionProjection1568, reductionProjection10472] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1111 (0 : Fin 6)) = canonicalInput24771.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1111 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5405 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1111 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5405 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24771 hH))).trans (reductionSound5405 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1111 (1 : Fin 6)) = canonicalInput28080.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1111 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5405 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1111 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5405 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28080 hH))).trans (reductionSound5405 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1111 (2 : Fin 6)) = canonicalInput28232.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1111 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5421 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1111 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5421 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28232 hH))).trans (reductionSound5421 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1111 (3 : Fin 6)) = canonicalInput28344.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1111 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5719 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1111 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5719 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28344 hH))).trans (reductionSound5719 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1111 (4 : Fin 6)) = canonicalInput28348.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1111 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1568 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1111 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1568 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28348 hH))).trans (reductionSound1568 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1111 (5 : Fin 6)) = canonicalInput28349.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1111 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10472 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1111 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10472 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28349 hH))).trans (reductionSound10472 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1111 (j : Fin 6)))
    1440 1440 ![1440, 1440, 720, 144, 288, 1440] ![-1440, -1440, -2880, -14400, -7200, -1440] (extendRow Arithmetic.row1111) ![reductionProjection5405, reductionProjection5405, reductionProjection5421, reductionProjection5719, reductionProjection1568, reductionProjection10472]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1112 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, -1, 2, 1], ![1, 1, 1, -3]]

theorem rowSound1112 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1112) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1112 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1112 H]
  have hshape : boundaryInput1112 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1112 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1112 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6027, reductionProjection6027, reductionProjection5563, reductionProjection6079, reductionProjection1583, reductionProjection10487] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1112 (0 : Fin 6)) = canonicalInput24785.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1112 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6027 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1112 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6027 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24785 hH))).trans (reductionSound6027 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1112 (1 : Fin 6)) = canonicalInput28094.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1112 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6027 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1112 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6027 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28094 hH))).trans (reductionSound6027 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1112 (2 : Fin 6)) = canonicalInput28305.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1112 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5563 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1112 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5563 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28305 hH))).trans (reductionSound5563 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1112 (3 : Fin 6)) = canonicalInput28460.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1112 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6079 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1112 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6079 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28460 hH))).trans (reductionSound6079 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1112 (4 : Fin 6)) = canonicalInput28468.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1112 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1583 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1112 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1583 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28468 hH))).trans (reductionSound1583 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1112 (5 : Fin 6)) = canonicalInput28469.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1112 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10487 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1112 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10487 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28469 hH))).trans (reductionSound10487 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1112 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 288] ![-1440, -1440, -1440, -1440, -1440, -7200] (extendRow Arithmetic.row1112) ![reductionProjection6027, reductionProjection6027, reductionProjection5563, reductionProjection6079, reductionProjection1583, reductionProjection10487]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1114 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-2, -1, 2, 1], ![0, 2, 1, -3]]

theorem rowSound1114 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1114) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1114 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1114 H]
  have hshape : boundaryInput1114 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1114 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 144, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1114 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6029, reductionProjection6029, reductionProjection6086, reductionProjection5846, reductionProjection1572, reductionProjection10488] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1114 (0 : Fin 6)) = canonicalInput24801.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1114 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6029 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1114 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6029 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24801 hH))).trans (reductionSound6029 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1114 (1 : Fin 6)) = canonicalInput28108.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1114 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6029 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1114 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6029 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28108 hH))).trans (reductionSound6029 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1114 (2 : Fin 6)) = canonicalInput28524.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1114 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6086 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1114 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6086 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28524 hH))).trans (reductionSound6086 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1114 (3 : Fin 6)) = canonicalInput28665.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1114 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5846 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1114 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5846 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28665 hH))).trans (reductionSound5846 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1114 (4 : Fin 6)) = canonicalInput28672.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1114 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1572 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1114 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1572 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28672 hH))).trans (reductionSound1572 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1114 (5 : Fin 6)) = canonicalInput28673.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1114 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10488 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1114 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10488 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28673 hH))).trans (reductionSound10488 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1114 (j : Fin 6)))
    1440 1440 ![1440, 1440, 144, 1440, 1440, 1440] ![-1440, -1440, -14400, -1440, -1440, -1440] (extendRow Arithmetic.row1114) ![reductionProjection6029, reductionProjection6029, reductionProjection6086, reductionProjection5846, reductionProjection1572, reductionProjection10488]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
