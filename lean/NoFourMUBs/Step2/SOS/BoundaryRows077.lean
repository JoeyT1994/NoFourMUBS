import NoFourMUBs.Step2.SOS.Canonical316
import NoFourMUBs.Step2.SOS.Canonical317
import NoFourMUBs.Step2.SOS.Canonical318
import NoFourMUBs.Step2.SOS.Canonical387
import NoFourMUBs.Step2.SOS.Canonical437
import NoFourMUBs.Step2.SOS.Canonical438
import NoFourMUBs.Step2.SOS.Canonical439
import NoFourMUBs.Step2.SOS.Canonical445
import NoFourMUBs.Step2.SOS.Canonical447
import NoFourMUBs.Step2.SOS.Canonical448
import NoFourMUBs.Step2.SOS.Canonical450
import NoFourMUBs.Step2.SOS.Canonical452
import NoFourMUBs.Step2.SOS.Canonical453
import NoFourMUBs.Step2.SOS.Canonical457
import NoFourMUBs.Step2.SOS.Canonical464
import NoFourMUBs.Step2.SOS.Canonical467
import NoFourMUBs.Step2.SOS.Canonical472
import NoFourMUBs.Step2.SOS.Canonical491
import NoFourMUBs.Step2.SOS.Canonical493
import NoFourMUBs.Step2.SOS.Canonical494
import NoFourMUBs.Step2.SOS.Canonical495
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.OldProjections041
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions023
import NoFourMUBs.Step2.SOS.Reductions129
import NoFourMUBs.Step2.SOS.Reductions130
import NoFourMUBs.Step2.SOS.Reductions135
import NoFourMUBs.Step2.SOS.Reductions139
import NoFourMUBs.Step2.SOS.Reductions142
import NoFourMUBs.Step2.SOS.Reductions143
import NoFourMUBs.Step2.SOS.Reductions284
import NoFourMUBs.Step2.SOS.Reductions305
import NoFourMUBs.Step2.SOS.Reductions306
import NoFourMUBs.Step2.SOS.Reductions308
import NoFourMUBs.Step2.SOS.Reductions319
import NoFourMUBs.Step2.SOS.Reductions320
import NoFourMUBs.Step2.SOS.Reductions321

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput1250 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, 0, -1], ![1, 0, 0, -1], ![-1, -2, 3, 0], ![-1, 3, -1, -1]]

theorem rowSound1250 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1250) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1250 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1250 H]
  have hshape : boundaryInput1250 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1250 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 720, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1250 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10269, reductionProjection10269, oldProjection3362, oldProjection3362, reductionProjection9885, oldProjection2996] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1250 (0 : Fin 6)) = canonicalInput24806.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1250 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10269 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1250 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10269 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24806 hH))).trans (reductionSound10269 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1250 (1 : Fin 6)) = canonicalInput28113.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1250 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10269 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1250 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10269 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28113 hH))).trans (reductionSound10269 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1250 (2 : Fin 6)) = canonicalInput28643.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1250 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection3362 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1250 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection3362 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28643 hH))).trans (oldProjectionSound3362 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1250 (3 : Fin 6)) = canonicalInput28684.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1250 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3362 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1250 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3362 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28684 hH))).trans (oldProjectionSound3362 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1250 (4 : Fin 6)) = canonicalInput28688.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1250 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9885 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1250 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9885 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28688 hH))).trans (reductionSound9885 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1250 (5 : Fin 6)) = canonicalInput28689.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1250 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2996 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1250 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2996 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28689 hH))).trans (oldProjectionSound2996 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1250 (j : Fin 6)))
    288 1440 ![720, 720, 1440, 1440, 1440, 1440] ![-576, -576, -288, -288, -288, -288] (extendRow Arithmetic.row1250) ![reductionProjection10269, reductionProjection10269, oldProjection3362, oldProjection3362, reductionProjection9885, oldProjection2996]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1252 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -2, 3, 0], ![-1, 3, 0, -2]]

theorem rowSound1252 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1252) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1252 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1252 H]
  have hshape : boundaryInput1252 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1252 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 360, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1252 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10254, reductionProjection10254, reductionProjection10252, reductionProjection4476, reductionProjection9884, oldProjection2997] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1252 (0 : Fin 6)) = canonicalInput24803.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1252 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10254 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1252 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10254 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24803 hH))).trans (reductionSound10254 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1252 (1 : Fin 6)) = canonicalInput28110.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1252 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10254 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1252 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10254 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28110 hH))).trans (reductionSound10254 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1252 (2 : Fin 6)) = canonicalInput28528.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1252 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10252 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1252 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10252 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28528 hH))).trans (reductionSound10252 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1252 (3 : Fin 6)) = canonicalInput28667.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1252 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4476 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1252 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4476 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28667 hH))).trans (reductionSound4476 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1252 (4 : Fin 6)) = canonicalInput28675.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1252 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9884 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1252 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9884 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28675 hH))).trans (reductionSound9884 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1252 (5 : Fin 6)) = canonicalInput28679.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1252 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2997 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1252 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2997 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28679 hH))).trans (oldProjectionSound2997 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1252 (j : Fin 6)))
    288 1440 ![1440, 1440, 1440, 1440, 360, 1440] ![-288, -288, -288, -288, -1152, -288] (extendRow Arithmetic.row1252) ![reductionProjection10254, reductionProjection10254, reductionProjection10252, reductionProjection4476, reductionProjection9884, oldProjection2997]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1318 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, 0, 2, -1], ![-1, 2, -1, 0], ![1, -3, 0, 2]]

theorem rowSound1318 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1318) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1318 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1318 H]
  have hshape : boundaryInput1318 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1318 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 144, 720, 288, 720, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1318 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1641, reductionProjection4342, reductionProjection10221, oldProjection2973, reductionProjection10241, reductionProjection9789] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1318 (0 : Fin 6)) = canonicalInput30211.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1318 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1641 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1318 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1641 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30211 hH))).trans (oldProjectionSound1641 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1318 (1 : Fin 6)) = canonicalInput31460.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1318 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4342 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1318 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4342 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31460 hH))).trans (reductionSound4342 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1318 (2 : Fin 6)) = canonicalInput31600.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1318 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10221 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1318 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10221 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31600 hH))).trans (reductionSound10221 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1318 (3 : Fin 6)) = canonicalInput31634.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1318 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2973 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1318 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2973 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31634 hH))).trans (oldProjectionSound2973 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1318 (4 : Fin 6)) = canonicalInput31636.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1318 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10241 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1318 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10241 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31636 hH))).trans (reductionSound10241 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1318 (5 : Fin 6)) = canonicalInput31637.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1318 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9789 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1318 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9789 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31637 hH))).trans (reductionSound9789 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1318 (j : Fin 6)))
    288 1440 ![1440, 144, 720, 288, 720, 288] ![-288, -2880, -576, -1440, -576, -1440] (extendRow Arithmetic.row1318) ![oldProjection1641, reductionProjection4342, reductionProjection10221, oldProjection2973, reductionProjection10241, reductionProjection9789]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1328 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, 0, 2], ![0, -1, 2, -1], ![-1, 3, -2, 0]]

theorem rowSound1328 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1328) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1328 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1328 H]
  have hshape : boundaryInput1328 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1328 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 720, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1328 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1647, reductionProjection10248, reductionProjection9090, reductionProjection10235, oldProjection2977, reductionProjection9813] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1328 (0 : Fin 6)) = canonicalInput30228.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1328 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1647 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1328 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1647 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30228 hH))).trans (oldProjectionSound1647 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1328 (1 : Fin 6)) = canonicalInput31684.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1328 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10248 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1328 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10248 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31684 hH))).trans (reductionSound10248 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1328 (2 : Fin 6)) = canonicalInput31701.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1328 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9090 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1328 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9090 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31701 hH))).trans (reductionSound9090 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1328 (3 : Fin 6)) = canonicalInput31709.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1328 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10235 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1328 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10235 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31709 hH))).trans (reductionSound10235 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1328 (4 : Fin 6)) = canonicalInput31712.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1328 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2977 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1328 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2977 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31712 hH))).trans (oldProjectionSound2977 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1328 (5 : Fin 6)) = canonicalInput31713.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1328 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9813 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1328 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9813 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31713 hH))).trans (reductionSound9813 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1328 (j : Fin 6)))
    720 1440 ![1440, 1440, 720, 1440, 288, 1440] ![-720, -720, -1440, -720, -3600, -720] (extendRow Arithmetic.row1328) ![oldProjection1647, reductionProjection10248, reductionProjection9090, reductionProjection10235, oldProjection2977, reductionProjection9813]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput165 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-1, -2, 0, 3], ![2, 0, 2, -4]]

theorem rowSound165 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 165) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row165 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row165 H]
  have hshape : boundaryInput165 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput165 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 720, 1440, 1440, 288, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput165 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4166, oldProjection2963, reductionProjection4586, reductionProjection4586, reductionProjection745, reductionProjection10294] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput165 (0 : Fin 6)) = canonicalInput20271.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput165 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4166 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput165 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4166 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20271 hH))).trans (reductionSound4166 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput165 (1 : Fin 6)) = canonicalInput28004.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput165 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection2963 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput165 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection2963 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28004 hH))).trans (oldProjectionSound2963 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput165 (2 : Fin 6)) = canonicalInput28812.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput165 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4586 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput165 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4586 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28812 hH))).trans (reductionSound4586 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput165 (3 : Fin 6)) = canonicalInput28962.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput165 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4586 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput165 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4586 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28962 hH))).trans (reductionSound4586 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput165 (4 : Fin 6)) = canonicalInput28984.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput165 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection745 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput165 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection745 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28984 hH))).trans (reductionSound745 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput165 (5 : Fin 6)) = canonicalInput28987.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput165 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10294 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput165 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10294 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28987 hH))).trans (reductionSound10294 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput165 (j : Fin 6)))
    1440 1440 ![720, 720, 1440, 1440, 288, 288] ![-2880, -2880, -1440, -1440, -7200, -7200] (extendRow Arithmetic.row165) ![reductionProjection4166, oldProjection2963, reductionProjection4586, reductionProjection4586, reductionProjection745, reductionProjection10294]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput166 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-1, -2, 0, 3], ![1, 1, 2, -4]]

theorem rowSound166 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 166) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row166 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row166 H]
  have hshape : boundaryInput166 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput166 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 720, 720, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput166 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4161, oldProjection2961, reductionProjection4573, reductionProjection10283, reductionProjection749, reductionProjection10297] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput166 (0 : Fin 6)) = canonicalInput20279.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput166 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4161 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput166 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4161 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20279 hH))).trans (reductionSound4161 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput166 (1 : Fin 6)) = canonicalInput28010.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput166 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection2961 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput166 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection2961 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28010 hH))).trans (oldProjectionSound2961 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput166 (2 : Fin 6)) = canonicalInput28818.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput166 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4573 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput166 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4573 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28818 hH))).trans (reductionSound4573 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput166 (3 : Fin 6)) = canonicalInput28981.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput166 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10283 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput166 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10283 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28981 hH))).trans (reductionSound10283 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput166 (4 : Fin 6)) = canonicalInput29013.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput166 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection749 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput166 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection749 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29013 hH))).trans (reductionSound749 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput166 (5 : Fin 6)) = canonicalInput29015.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput166 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10297 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput166 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10297 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29015 hH))).trans (reductionSound10297 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput166 (j : Fin 6)))
    1440 1440 ![720, 720, 720, 1440, 1440, 1440] ![-2880, -2880, -2880, -1440, -1440, -1440] (extendRow Arithmetic.row166) ![reductionProjection4161, oldProjection2961, reductionProjection4573, reductionProjection10283, reductionProjection749, reductionProjection10297]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput169 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -2, 0, 3], ![0, 2, 2, -4]]

theorem rowSound169 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 169) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row169 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row169 H]
  have hshape : boundaryInput169 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput169 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![144, 144, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput169 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4156, oldProjection2960, reductionProjection10286, reductionProjection10286, reductionProjection745, reductionProjection4571] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput169 (0 : Fin 6)) = canonicalInput20292.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput169 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4156 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput169 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4156 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20292 hH))).trans (reductionSound4156 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput169 (1 : Fin 6)) = canonicalInput28020.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput169 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection2960 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput169 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection2960 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28020 hH))).trans (oldProjectionSound2960 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput169 (2 : Fin 6)) = canonicalInput28832.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput169 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10286 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput169 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10286 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28832 hH))).trans (reductionSound10286 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput169 (3 : Fin 6)) = canonicalInput29295.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput169 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10286 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput169 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10286 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29295 hH))).trans (reductionSound10286 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput169 (4 : Fin 6)) = canonicalInput29298.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput169 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection745 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput169 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection745 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29298 hH))).trans (reductionSound745 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput169 (5 : Fin 6)) = canonicalInput29299.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput169 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4571 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput169 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4571 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29299 hH))).trans (reductionSound4571 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput169 (j : Fin 6)))
    720 1440 ![144, 144, 1440, 1440, 288, 1440] ![-7200, -7200, -720, -720, -3600, -720] (extendRow Arithmetic.row169) ![reductionProjection4156, oldProjection2960, reductionProjection10286, reductionProjection10286, reductionProjection745, reductionProjection4571]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput176 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -2, 0, 3], ![0, 1, 3, -4]]

theorem rowSound176 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 176) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row176 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row176 H]
  have hshape : boundaryInput176 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput176 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 720, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput176 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4173, oldProjection2988, reductionProjection10292, reductionProjection10292, reductionProjection759, reductionProjection4597] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput176 (0 : Fin 6)) = canonicalInput20352.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput176 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4173 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput176 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4173 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20352 hH))).trans (reductionSound4173 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput176 (1 : Fin 6)) = canonicalInput28055.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput176 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection2988 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput176 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection2988 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28055 hH))).trans (oldProjectionSound2988 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput176 (2 : Fin 6)) = canonicalInput29744.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput176 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10292 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput176 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10292 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29744 hH))).trans (reductionSound10292 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput176 (3 : Fin 6)) = canonicalInput29929.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput176 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10292 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput176 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10292 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29929 hH))).trans (reductionSound10292 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput176 (4 : Fin 6)) = canonicalInput29936.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput176 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection759 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput176 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection759 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29936 hH))).trans (reductionSound759 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput176 (5 : Fin 6)) = canonicalInput29938.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput176 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4597 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput176 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4597 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29938 hH))).trans (reductionSound4597 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput176 (j : Fin 6)))
    720 1440 ![1440, 1440, 1440, 1440, 720, 288] ![-720, -720, -720, -720, -1440, -3600] (extendRow Arithmetic.row176) ![reductionProjection4173, oldProjection2988, reductionProjection10292, reductionProjection10292, reductionProjection759, reductionProjection4597]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
