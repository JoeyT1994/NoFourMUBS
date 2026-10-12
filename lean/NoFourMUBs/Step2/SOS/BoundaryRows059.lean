import NoFourMUBs.Step2.SOS.Canonical379
import NoFourMUBs.Step2.SOS.Canonical417
import NoFourMUBs.Step2.SOS.Canonical418
import NoFourMUBs.Step2.SOS.Canonical419
import NoFourMUBs.Step2.SOS.Canonical433
import NoFourMUBs.Step2.SOS.Canonical436
import NoFourMUBs.Step2.SOS.Canonical449
import NoFourMUBs.Step2.SOS.Canonical452
import NoFourMUBs.Step2.SOS.Canonical454
import NoFourMUBs.Step2.SOS.Canonical468
import NoFourMUBs.Step2.SOS.Canonical469
import NoFourMUBs.Step2.SOS.Canonical472
import NoFourMUBs.Step2.SOS.Canonical495
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions169
import NoFourMUBs.Step2.SOS.Reductions170
import NoFourMUBs.Step2.SOS.Reductions215
import NoFourMUBs.Step2.SOS.Reductions235
import NoFourMUBs.Step2.SOS.Reductions236
import NoFourMUBs.Step2.SOS.Reductions244
import NoFourMUBs.Step2.SOS.Reductions245
import NoFourMUBs.Step2.SOS.Reductions251
import NoFourMUBs.Step2.SOS.Reductions252
import NoFourMUBs.Step2.SOS.Reductions253
import NoFourMUBs.Step2.SOS.Reductions256
import NoFourMUBs.Step2.SOS.Reductions257
import NoFourMUBs.Step2.SOS.Reductions273
import NoFourMUBs.Step2.SOS.Reductions283
import NoFourMUBs.Step2.SOS.Reductions285
import NoFourMUBs.Step2.SOS.Reductions286
import NoFourMUBs.Step2.SOS.Reductions287

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput506 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 0, -1, 2], ![2, -1, 0, -1], ![-1, 2, 2, -3]]

theorem rowSound506 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 506) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row506 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row506 H]
  have hshape : boundaryInput506 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput506 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 72, 288, 288, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput506 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8106, reductionProjection8104, reductionProjection8743, reductionProjection8101, reductionProjection7523, reductionProjection9201] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput506 (0 : Fin 6)) = canonicalInput24285.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput506 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8106 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput506 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8106 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24285 hH))).trans (reductionSound8106 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput506 (1 : Fin 6)) = canonicalInput26717.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput506 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8104 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput506 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8104 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26717 hH))).trans (reductionSound8104 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput506 (2 : Fin 6)) = canonicalInput26792.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput506 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8743 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput506 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8743 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26792 hH))).trans (reductionSound8743 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput506 (3 : Fin 6)) = canonicalInput26807.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput506 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8101 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput506 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8101 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26807 hH))).trans (reductionSound8101 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput506 (4 : Fin 6)) = canonicalInput26810.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput506 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7523 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput506 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7523 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26810 hH))).trans (reductionSound7523 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput506 (5 : Fin 6)) = canonicalInput26811.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput506 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9201 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput506 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9201 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26811 hH))).trans (reductionSound9201 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput506 (j : Fin 6)))
    720 1440 ![288, 72, 288, 288, 1440, 1440] ![-3600, -14400, -3600, -3600, -720, -720] (extendRow Arithmetic.row506) ![reductionProjection8106, reductionProjection8104, reductionProjection8743, reductionProjection8101, reductionProjection7523, reductionProjection9201]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput542 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![0, 1, -3, 2], ![1, 1, 1, -3]]

theorem rowSound542 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 542) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row542 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row542 H]
  have hshape : boundaryInput542 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput542 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![18, 1440, 18, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput542 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7825, reductionProjection7826, reductionProjection7830, reductionProjection7563, reductionProjection9170, reductionProjection9200] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput542 (0 : Fin 6)) = canonicalInput24298.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput542 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7825 (Normalization.momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst boundaryInput542 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7825 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24298 hH))).trans (reductionSound7825 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput542 (1 : Fin 6)) = canonicalInput26744.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput542 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7826 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput542 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7826 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26744 hH))).trans (reductionSound7826 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput542 (2 : Fin 6)) = canonicalInput26839.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput542 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7830 (Normalization.momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst boundaryInput542 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7830 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26839 hH))).trans (reductionSound7830 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput542 (3 : Fin 6)) = canonicalInput26843.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput542 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7563 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput542 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7563 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26843 hH))).trans (reductionSound7563 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput542 (4 : Fin 6)) = canonicalInput26845.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput542 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9170 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput542 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9170 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26845 hH))).trans (reductionSound9170 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput542 (5 : Fin 6)) = canonicalInput26846.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput542 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9200 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput542 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9200 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26846 hH))).trans (reductionSound9200 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput542 (j : Fin 6)))
    720 1440 ![18, 1440, 18, 1440, 1440, 1440] ![-57600, -720, -57600, -720, -720, -720] (extendRow Arithmetic.row542) ![reductionProjection7825, reductionProjection7826, reductionProjection7830, reductionProjection7563, reductionProjection9170, reductionProjection9200]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput543 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![0, 2, 1, -3], ![1, 0, -3, 2]]

theorem rowSound543 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 543) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row543 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row543 H]
  have hshape : boundaryInput543 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput543 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 1440, 288, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput543 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8217, reductionProjection8210, reductionProjection8231, reductionProjection6883, reductionProjection9205, reductionProjection8229] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput543 (0 : Fin 6)) = canonicalInput24299.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput543 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8217 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput543 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8217 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24299 hH))).trans (reductionSound8217 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput543 (1 : Fin 6)) = canonicalInput26745.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput543 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8210 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput543 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8210 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26745 hH))).trans (reductionSound8210 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput543 (2 : Fin 6)) = canonicalInput26840.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput543 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8231 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput543 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8231 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26840 hH))).trans (reductionSound8231 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput543 (3 : Fin 6)) = canonicalInput26844.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput543 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6883 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput543 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6883 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26844 hH))).trans (reductionSound6883 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput543 (4 : Fin 6)) = canonicalInput26847.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput543 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9205 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput543 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9205 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26847 hH))).trans (reductionSound9205 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput543 (5 : Fin 6)) = canonicalInput26848.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput543 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8229 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput543 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8229 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26848 hH))).trans (reductionSound8229 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput543 (j : Fin 6)))
    720 1440 ![1440, 288, 1440, 288, 1440, 1440] ![-720, -3600, -720, -3600, -720, -720] (extendRow Arithmetic.row543) ![reductionProjection8217, reductionProjection8210, reductionProjection8231, reductionProjection6883, reductionProjection9205, reductionProjection8229]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1165 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 0, -1, 2], ![-1, 2, 0, -1], ![0, -1, 3, -2]]

theorem rowSound1165 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1165) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1165 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1165 H]
  have hshape : boundaryInput1165 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1165 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1165 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9140, reductionProjection9133, reductionProjection9205, reductionProjection9135, reductionProjection9190, reductionProjection8034] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1165 (0 : Fin 6)) = canonicalInput27946.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1165 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9140 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1165 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9140 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27946 hH))).trans (reductionSound9140 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1165 (1 : Fin 6)) = canonicalInput29999.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1165 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9133 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1165 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9133 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29999 hH))).trans (reductionSound9133 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1165 (2 : Fin 6)) = canonicalInput30056.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1165 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9205 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1165 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9205 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30056 hH))).trans (reductionSound9205 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1165 (3 : Fin 6)) = canonicalInput30070.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1165 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9135 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1165 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9135 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30070 hH))).trans (reductionSound9135 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1165 (4 : Fin 6)) = canonicalInput30072.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1165 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9190 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1165 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9190 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30072 hH))).trans (reductionSound9190 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1165 (5 : Fin 6)) = canonicalInput30073.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1165 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8034 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1165 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8034 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30073 hH))).trans (reductionSound8034 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1165 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-1440, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row1165) ![reductionProjection9140, reductionProjection9133, reductionProjection9205, reductionProjection9135, reductionProjection9190, reductionProjection8034]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1191 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 2, 0, -1], ![0, -1, 2, -1], ![-1, 0, -2, 3]]

theorem rowSound1191 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1191) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1191 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1191 H]
  have hshape : boundaryInput1191 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1191 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1191 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1647, reductionProjection9125, reductionProjection9196, reductionProjection9200, oldProjection2977, reductionProjection9126] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1191 (0 : Fin 6)) = canonicalInput30230.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1191 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1647 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1191 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1647 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30230 hH))).trans (oldProjectionSound1647 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1191 (1 : Fin 6)) = canonicalInput31688.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1191 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9125 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1191 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9125 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31688 hH))).trans (reductionSound9125 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1191 (2 : Fin 6)) = canonicalInput31703.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1191 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9196 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1191 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9196 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31703 hH))).trans (reductionSound9196 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1191 (3 : Fin 6)) = canonicalInput31723.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1191 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9200 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1191 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9200 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31723 hH))).trans (reductionSound9200 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1191 (4 : Fin 6)) = canonicalInput31724.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1191 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2977 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1191 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2977 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31724 hH))).trans (oldProjectionSound2977 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1191 (5 : Fin 6)) = canonicalInput31725.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1191 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9126 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1191 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9126 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31725 hH))).trans (reductionSound9126 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1191 (j : Fin 6)))
    1440 1440 ![1440, 1440, 288, 1440, 288, 1440] ![-1440, -1440, -7200, -1440, -7200, -1440] (extendRow Arithmetic.row1191) ![oldProjection1647, reductionProjection9125, reductionProjection9196, reductionProjection9200, oldProjection2977, reductionProjection9126]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1270 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![1, 1, -1, -1], ![1, -3, 2, 0]]

theorem rowSound1270 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1270) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1270 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1270 H]
  have hshape : boundaryInput1270 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1270 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![144, 288, 144, 1440, 720, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1270 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7842, oldProjection1690, reductionProjection9194, reductionProjection5423, reductionProjection9087, reductionProjection8075] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1270 (0 : Fin 6)) = canonicalInput27742.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1270 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7842 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1270 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7842 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27742 hH))).trans (reductionSound7842 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1270 (1 : Fin 6)) = canonicalInput28736.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1270 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1690 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1270 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1690 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28736 hH))).trans (oldProjectionSound1690 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1270 (2 : Fin 6)) = canonicalInput28944.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1270 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9194 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1270 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9194 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28944 hH))).trans (reductionSound9194 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1270 (3 : Fin 6)) = canonicalInput29057.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1270 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5423 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1270 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5423 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29057 hH))).trans (reductionSound5423 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1270 (4 : Fin 6)) = canonicalInput29066.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1270 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9087 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1270 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9087 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29066 hH))).trans (reductionSound9087 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1270 (5 : Fin 6)) = canonicalInput29067.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1270 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8075 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1270 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8075 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29067 hH))).trans (reductionSound8075 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1270 (j : Fin 6)))
    1440 1440 ![144, 288, 144, 1440, 720, 720] ![-14400, -7200, -14400, -1440, -2880, -2880] (extendRow Arithmetic.row1270) ![reductionProjection7842, oldProjection1690, reductionProjection9194, reductionProjection5423, reductionProjection9087, reductionProjection8075]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1271 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, 1, 0], ![1, 1, -1, -1], ![1, -3, 1, 1]]

theorem rowSound1271 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1271) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1271 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1271 H]
  have hshape : boundaryInput1271 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1271 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 720, 720, 288, 144] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1271 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8044, oldProjection2070, reductionProjection8075, reductionProjection8075, reductionProjection8035, reductionProjection9194] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1271 (0 : Fin 6)) = canonicalInput27746.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1271 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8044 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1271 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8044 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27746 hH))).trans (reductionSound8044 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1271 (1 : Fin 6)) = canonicalInput28740.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1271 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection2070 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1271 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection2070 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28740 hH))).trans (oldProjectionSound2070 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1271 (2 : Fin 6)) = canonicalInput28948.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1271 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8075 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1271 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8075 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28948 hH))).trans (reductionSound8075 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1271 (3 : Fin 6)) = canonicalInput29067.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1271 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8075 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1271 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8075 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29067 hH))).trans (reductionSound8075 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1271 (4 : Fin 6)) = canonicalInput29073.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1271 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8035 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1271 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8035 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29073 hH))).trans (reductionSound8035 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1271 (5 : Fin 6)) = canonicalInput29074.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1271 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9194 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1271 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9194 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29074 hH))).trans (reductionSound9194 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1271 (j : Fin 6)))
    720 1440 ![1440, 1440, 720, 720, 288, 144] ![-720, -720, -1440, -1440, -3600, -7200] (extendRow Arithmetic.row1271) ![reductionProjection8044, oldProjection2070, reductionProjection8075, reductionProjection8075, reductionProjection8035, reductionProjection9194]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1273 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, 2, 0, -1], ![2, -1, -1, 0], ![-1, -2, 2, 1]]

theorem rowSound1273 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1273) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1273 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1273 H]
  have hshape : boundaryInput1273 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1273 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 720, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1273 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7848, oldProjection1831, reductionProjection8061, reductionProjection8088, reductionProjection5453, reductionProjection9201] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1273 (0 : Fin 6)) = canonicalInput27757.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1273 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7848 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1273 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7848 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27757 hH))).trans (reductionSound7848 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1273 (1 : Fin 6)) = canonicalInput28754.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1273 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1831 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1273 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1831 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28754 hH))).trans (oldProjectionSound1831 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1273 (2 : Fin 6)) = canonicalInput28967.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1273 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8061 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1273 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8061 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28967 hH))).trans (reductionSound8061 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1273 (3 : Fin 6)) = canonicalInput29104.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1273 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8088 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1273 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8088 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29104 hH))).trans (reductionSound8088 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1273 (4 : Fin 6)) = canonicalInput29106.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1273 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5453 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1273 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5453 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29106 hH))).trans (reductionSound5453 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1273 (5 : Fin 6)) = canonicalInput29107.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1273 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9201 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1273 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9201 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29107 hH))).trans (reductionSound9201 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1273 (j : Fin 6)))
    144 1440 ![1440, 1440, 720, 1440, 1440, 1440] ![-144, -144, -288, -144, -144, -144] (extendRow Arithmetic.row1273) ![reductionProjection7848, oldProjection1831, reductionProjection8061, reductionProjection8088, reductionProjection5453, reductionProjection9201]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
