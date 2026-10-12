import NoFourMUBs.Step2.SOS.Canonical247
import NoFourMUBs.Step2.SOS.Canonical248
import NoFourMUBs.Step2.SOS.Canonical269
import NoFourMUBs.Step2.SOS.Canonical389
import NoFourMUBs.Step2.SOS.Canonical390
import NoFourMUBs.Step2.SOS.Canonical392
import NoFourMUBs.Step2.SOS.Canonical393
import NoFourMUBs.Step2.SOS.Canonical394
import NoFourMUBs.Step2.SOS.Canonical398
import NoFourMUBs.Step2.SOS.Canonical406
import NoFourMUBs.Step2.SOS.Canonical407
import NoFourMUBs.Step2.SOS.Canonical434
import NoFourMUBs.Step2.SOS.Canonical435
import NoFourMUBs.Step2.SOS.Canonical436
import NoFourMUBs.Step2.SOS.Canonical449
import NoFourMUBs.Step2.SOS.Canonical456
import NoFourMUBs.Step2.SOS.Canonical459
import NoFourMUBs.Step2.SOS.Canonical462
import NoFourMUBs.Step2.SOS.Canonical463
import NoFourMUBs.Step2.SOS.Canonical468
import NoFourMUBs.Step2.SOS.Canonical469
import NoFourMUBs.Step2.SOS.Canonical471
import NoFourMUBs.Step2.SOS.Canonical491
import NoFourMUBs.Step2.SOS.Canonical492
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions102
import NoFourMUBs.Step2.SOS.Reductions113
import NoFourMUBs.Step2.SOS.Reductions118
import NoFourMUBs.Step2.SOS.Reductions152
import NoFourMUBs.Step2.SOS.Reductions153
import NoFourMUBs.Step2.SOS.Reductions161
import NoFourMUBs.Step2.SOS.Reductions166
import NoFourMUBs.Step2.SOS.Reductions169
import NoFourMUBs.Step2.SOS.Reductions185
import NoFourMUBs.Step2.SOS.Reductions309
import NoFourMUBs.Step2.SOS.Reductions339
import NoFourMUBs.Step2.SOS.Reductions342
import NoFourMUBs.Step2.SOS.Reductions343
import NoFourMUBs.Step2.SOS.Reductions346
import NoFourMUBs.Step2.SOS.Reductions356
import NoFourMUBs.Step2.SOS.Reductions357
import NoFourMUBs.Step2.SOS.Reductions358
import NoFourMUBs.Step2.SOS.Reductions360
import NoFourMUBs.Step2.SOS.Reductions364
import NoFourMUBs.Step2.SOS.Reductions365
import NoFourMUBs.Step2.SOS.Reductions366

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput790 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![-1, 1, -1, 1], ![1, 0, 1, -2]]

theorem rowSound790 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 790) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row790 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row790 H]
  have hshape : boundaryInput790 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput790 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 288, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput790 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection3789, reductionProjection11430, reductionProjection11434, reductionProjection10872, reductionProjection5317, reductionProjection11708] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput790 (0 : Fin 6)) = canonicalInput30183.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput790 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3789 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput790 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3789 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30183 hH))).trans (reductionSound3789 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput790 (1 : Fin 6)) = canonicalInput31429.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput790 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11430 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput790 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11430 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31429 hH))).trans (reductionSound11430 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput790 (2 : Fin 6)) = canonicalInput31505.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput790 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11434 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput790 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11434 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31505 hH))).trans (reductionSound11434 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput790 (3 : Fin 6)) = canonicalInput31530.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput790 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10872 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput790 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10872 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31530 hH))).trans (reductionSound10872 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput790 (4 : Fin 6)) = canonicalInput31533.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput790 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5317 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput790 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5317 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31533 hH))).trans (reductionSound5317 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput790 (5 : Fin 6)) = canonicalInput31534.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput790 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11708 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput790 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11708 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31534 hH))).trans (reductionSound11708 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput790 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 288, 288] ![-1440, -1440, -1440, -1440, -7200, -7200] (extendRow Arithmetic.row790) ![reductionProjection3789, reductionProjection11430, reductionProjection11434, reductionProjection10872, reductionProjection5317, reductionProjection11708]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput871 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, 1, 1, -1], ![1, 1, -1, -1]]

theorem rowSound871 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 871) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row871 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row871 H]
  have hshape : boundaryInput871 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput871 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 72, 720, 1440, 360, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput871 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection11680, reductionProjection5155, reductionProjection11679, reductionProjection11532, reductionProjection11694, reductionProjection11532] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput871 (0 : Fin 6)) = canonicalInput27791.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput871 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11680 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput871 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11680 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27791 hH))).trans (reductionSound11680 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput871 (1 : Fin 6)) = canonicalInput28786.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput871 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5155 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput871 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5155 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28786 hH))).trans (reductionSound5155 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput871 (2 : Fin 6)) = canonicalInput29196.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput871 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11679 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput871 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11679 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29196 hH))).trans (reductionSound11679 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput871 (3 : Fin 6)) = canonicalInput29232.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput871 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11532 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput871 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11532 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29232 hH))).trans (reductionSound11532 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput871 (4 : Fin 6)) = canonicalInput29234.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput871 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11694 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput871 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11694 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29234 hH))).trans (reductionSound11694 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput871 (5 : Fin 6)) = canonicalInput29235.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput871 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11532 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput871 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11532 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29235 hH))).trans (reductionSound11532 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput871 (j : Fin 6)))
    144 1440 ![720, 72, 720, 1440, 360, 1440] ![-288, -2880, -288, -144, -576, -144] (extendRow Arithmetic.row871) ![reductionProjection11680, reductionProjection5155, reductionProjection11679, reductionProjection11532, reductionProjection11694, reductionProjection11532]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput877 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, 1, 1, -1], ![1, 0, 1, -2]]

theorem rowSound877 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 877) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row877 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row877 H]
  have hshape : boundaryInput877 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput877 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 288, 144, 360, 720, 120] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput877 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection11689, reductionProjection11686, reductionProjection11683, reductionProjection11475, oldProjection3209, reductionProjection11685] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput877 (0 : Fin 6)) = canonicalInput27860.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput877 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11689 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput877 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11689 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27860 hH))).trans (reductionSound11689 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput877 (1 : Fin 6)) = canonicalInput29381.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput877 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11686 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput877 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11686 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29381 hH))).trans (reductionSound11686 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput877 (2 : Fin 6)) = canonicalInput29569.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput877 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11683 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput877 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11683 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29569 hH))).trans (reductionSound11683 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput877 (3 : Fin 6)) = canonicalInput29627.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput877 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11475 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput877 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11475 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29627 hH))).trans (reductionSound11475 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput877 (4 : Fin 6)) = canonicalInput29638.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput877 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3209 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput877 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3209 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29638 hH))).trans (oldProjectionSound3209 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput877 (5 : Fin 6)) = canonicalInput29639.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((120 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput877 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11685 (Normalization.momentVector H)
      have hh : (120 : ℝ) * injectiveMoment H (mergeFirst boundaryInput877 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11685 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29639 hH))).trans (reductionSound11685 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput877 (j : Fin 6)))
    1440 1440 ![720, 288, 144, 360, 720, 120] ![-2880, -7200, -14400, -5760, -2880, -17280] (extendRow Arithmetic.row877) ![reductionProjection11689, reductionProjection11686, reductionProjection11683, reductionProjection11475, oldProjection3209, reductionProjection11685]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput882 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, 1, 1], ![-1, 1, 1, -1], ![0, 1, 1, -2]]

theorem rowSound882 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 882) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row882 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row882 H]
  have hshape : boundaryInput882 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput882 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![90, 1440, 1440, 720, 720, 360] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput882 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection11688, reductionProjection11682, reductionProjection11684, reductionProjection11412, oldProjection3209, reductionProjection11651] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput882 (0 : Fin 6)) = canonicalInput27941.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((90 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput882 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11688 (Normalization.momentVector H)
      have hh : (90 : ℝ) * injectiveMoment H (mergeFirst boundaryInput882 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11688 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (90 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27941 hH))).trans (reductionSound11688 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput882 (1 : Fin 6)) = canonicalInput29993.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput882 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11682 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput882 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11682 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29993 hH))).trans (reductionSound11682 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput882 (2 : Fin 6)) = canonicalInput30031.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput882 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11684 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput882 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11684 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30031 hH))).trans (reductionSound11684 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput882 (3 : Fin 6)) = canonicalInput30048.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput882 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11412 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput882 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11412 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30048 hH))).trans (reductionSound11412 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput882 (4 : Fin 6)) = canonicalInput30054.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput882 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3209 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput882 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3209 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30054 hH))).trans (oldProjectionSound3209 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput882 (5 : Fin 6)) = canonicalInput30055.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput882 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11651 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput882 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11651 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30055 hH))).trans (reductionSound11651 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput882 (j : Fin 6)))
    1440 1440 ![90, 1440, 1440, 720, 720, 360] ![-23040, -1440, -1440, -2880, -2880, -5760] (extendRow Arithmetic.row882) ![reductionProjection11688, reductionProjection11682, reductionProjection11684, reductionProjection11412, oldProjection3209, reductionProjection11651]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput547 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![0, 2, -3, 1], ![1, 1, 1, -3]]

theorem rowSound547 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 547) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row547 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row547 H]
  have hshape : boundaryInput547 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput547 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput547 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10961, reductionProjection10990, reductionProjection11088, reductionProjection5427, reductionProjection9919, reductionProjection11715] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput547 (0 : Fin 6)) = canonicalInput17270.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput547 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10961 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput547 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10961 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17270 hH))).trans (reductionSound10961 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput547 (1 : Fin 6)) = canonicalInput25492.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput547 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10990 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput547 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10990 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25492 hH))).trans (reductionSound10990 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput547 (2 : Fin 6)) = canonicalInput26014.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput547 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11088 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput547 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11088 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26014 hH))).trans (reductionSound11088 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput547 (3 : Fin 6)) = canonicalInput26048.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput547 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5427 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput547 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5427 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26048 hH))).trans (reductionSound5427 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput547 (4 : Fin 6)) = canonicalInput26055.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput547 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9919 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput547 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9919 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26055 hH))).trans (reductionSound9919 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput547 (5 : Fin 6)) = canonicalInput26056.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput547 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11715 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput547 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11715 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26056 hH))).trans (reductionSound11715 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput547 (j : Fin 6)))
    288 1440 ![1440, 1440, 1440, 1440, 720, 1440] ![-288, -288, -288, -288, -576, -288] (extendRow Arithmetic.row547) ![reductionProjection10961, reductionProjection10990, reductionProjection11088, reductionProjection5427, reductionProjection9919, reductionProjection11715]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput574 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, 1, 1, -2], ![2, -1, 0, -1, 0], ![-1, 2, 1, -1, -1]]

theorem rowSound574 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 574) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row574 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row574 H]
  have hshape : boundaryInput574 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput574 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 2880, 144, 72, 2880, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput574 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4872, reductionProjection4875, reductionProjection4880, reductionProjection4911, reductionProjection11739, reductionProjection3617] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput574 (0 : Fin 6)) = canonicalInput15846.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput574 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4872 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput574 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4872 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15846 hH))).trans (reductionSound4872 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput574 (1 : Fin 6)) = canonicalInput24951.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput574 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4875 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput574 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4875 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24951 hH))).trans (reductionSound4875 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput574 (2 : Fin 6)) = canonicalInput25121.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput574 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4880 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput574 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4880 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25121 hH))).trans (reductionSound4880 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput574 (3 : Fin 6)) = canonicalInput25170.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput574 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4911 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput574 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4911 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25170 hH))).trans (reductionSound4911 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput574 (4 : Fin 6)) = canonicalInput25189.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput574 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11739 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput574 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11739 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25189 hH))).trans (reductionSound11739 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput574 (5 : Fin 6)) = canonicalInput25191.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput574 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3617 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput574 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3617 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25191 hH))).trans (reductionSound3617 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput574 (j : Fin 6)))
    2880 2880 ![2880, 2880, 144, 72, 2880, 720] ![-2880, -2880, -57600, -115200, -2880, -11520] (extendRow Arithmetic.row574) ![reductionProjection4872, reductionProjection4875, reductionProjection4880, reductionProjection4911, reductionProjection11739, reductionProjection3617]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput582 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, 0, 1, -2], ![2, -1, 0, -1, 0], ![-1, 1, 2, -1, -1]]

theorem rowSound582 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 582) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row582 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row582 H]
  have hshape : boundaryInput582 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput582 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![576, 1440, 1440, 1440, 1440, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput582 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4902, reductionProjection4894, reductionProjection4900, reductionProjection4920, reductionProjection11740, reductionProjection3620] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput582 (0 : Fin 6)) = canonicalInput15849.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput582 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4902 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput582 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4902 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15849 hH))).trans (reductionSound4902 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput582 (1 : Fin 6)) = canonicalInput24954.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput582 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4894 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput582 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4894 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24954 hH))).trans (reductionSound4894 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput582 (2 : Fin 6)) = canonicalInput25124.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput582 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4900 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput582 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4900 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25124 hH))).trans (reductionSound4900 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput582 (3 : Fin 6)) = canonicalInput25176.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput582 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4920 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput582 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4920 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25176 hH))).trans (reductionSound4920 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput582 (4 : Fin 6)) = canonicalInput25195.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput582 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11740 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput582 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11740 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25195 hH))).trans (reductionSound11740 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput582 (5 : Fin 6)) = canonicalInput25197.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput582 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3620 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput582 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3620 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25197 hH))).trans (reductionSound3620 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput582 (j : Fin 6)))
    2880 2880 ![576, 1440, 1440, 1440, 1440, 2880] ![-14400, -5760, -5760, -5760, -5760, -2880] (extendRow Arithmetic.row582) ![reductionProjection4902, reductionProjection4894, reductionProjection4900, reductionProjection4920, reductionProjection11740, reductionProjection3620]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput597 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-1, 0, 0, 2, -1], ![0, 1, 1, 0, -2], ![2, -1, 1, -2, 0]]

theorem rowSound597 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 597) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row597 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row597 H]
  have hshape : boundaryInput597 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput597 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 576, 2880, 1440, 576, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput597 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5942, reductionProjection5931, reductionProjection5939, reductionProjection3273, reductionProjection3287, reductionProjection11729] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput597 (0 : Fin 6)) = canonicalInput15875.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput597 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5942 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput597 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5942 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15875 hH))).trans (reductionSound5942 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput597 (1 : Fin 6)) = canonicalInput24978.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput597 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5931 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput597 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5931 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24978 hH))).trans (reductionSound5931 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput597 (2 : Fin 6)) = canonicalInput25148.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput597 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5939 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput597 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5939 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25148 hH))).trans (reductionSound5939 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput597 (3 : Fin 6)) = canonicalInput25249.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput597 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3273 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput597 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3273 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25249 hH))).trans (reductionSound3273 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput597 (4 : Fin 6)) = canonicalInput25268.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput597 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3287 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput597 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3287 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25268 hH))).trans (reductionSound3287 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput597 (5 : Fin 6)) = canonicalInput25271.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput597 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11729 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput597 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11729 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25271 hH))).trans (reductionSound11729 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput597 (j : Fin 6)))
    2880 2880 ![1440, 576, 2880, 1440, 576, 720] ![-5760, -14400, -2880, -5760, -14400, -11520] (extendRow Arithmetic.row597) ![reductionProjection5942, reductionProjection5931, reductionProjection5939, reductionProjection3273, reductionProjection3287, reductionProjection11729]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
