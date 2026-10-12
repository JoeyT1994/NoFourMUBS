import NoFourMUBs.Step2.SOS.Canonical387
import NoFourMUBs.Step2.SOS.Canonical388
import NoFourMUBs.Step2.SOS.Canonical431
import NoFourMUBs.Step2.SOS.Canonical432
import NoFourMUBs.Step2.SOS.Canonical438
import NoFourMUBs.Step2.SOS.Canonical439
import NoFourMUBs.Step2.SOS.Canonical440
import NoFourMUBs.Step2.SOS.Canonical441
import NoFourMUBs.Step2.SOS.Canonical442
import NoFourMUBs.Step2.SOS.Canonical443
import NoFourMUBs.Step2.SOS.Canonical444
import NoFourMUBs.Step2.SOS.Canonical445
import NoFourMUBs.Step2.SOS.Canonical446
import NoFourMUBs.Step2.SOS.Canonical459
import NoFourMUBs.Step2.SOS.Canonical460
import NoFourMUBs.Step2.SOS.Canonical471
import NoFourMUBs.Step2.SOS.Canonical491
import NoFourMUBs.Step2.SOS.Canonical493
import NoFourMUBs.Step2.SOS.Canonical494
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections029
import NoFourMUBs.Step2.SOS.OldProjections030
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.OldProjections041
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions238
import NoFourMUBs.Step2.SOS.Reductions240
import NoFourMUBs.Step2.SOS.Reductions247
import NoFourMUBs.Step2.SOS.Reductions248
import NoFourMUBs.Step2.SOS.Reductions250
import NoFourMUBs.Step2.SOS.Reductions255
import NoFourMUBs.Step2.SOS.Reductions273
import NoFourMUBs.Step2.SOS.Reductions280
import NoFourMUBs.Step2.SOS.Reductions283
import NoFourMUBs.Step2.SOS.Reductions284
import NoFourMUBs.Step2.SOS.Reductions288
import NoFourMUBs.Step2.SOS.Reductions289
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical289
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical290
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical291

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput978 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 1, 0, 1], ![1, -2, 3, -2]]

theorem rowSound978 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 978) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row978 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row978 H]
  have hshape : boundaryInput978 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput978 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 288, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput978 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9246, reductionProjection9246, reductionProjection8736, oldProjection3243, reductionProjection8965, oldProjection3094] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput978 (0 : Fin 6)) = canonicalInput27654.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput978 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9246 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput978 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9246 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27654 hH))).trans (reductionSound9246 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput978 (1 : Fin 6)) = canonicalInput28156.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput978 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9246 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput978 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9246 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28156 hH))).trans (reductionSound9246 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput978 (2 : Fin 6)) = canonicalInput28418.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput978 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8736 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput978 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8736 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28418 hH))).trans (reductionSound8736 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput978 (3 : Fin 6)) = canonicalInput28471.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput978 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3243 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput978 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3243 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28471 hH))).trans (oldProjectionSound3243 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput978 (4 : Fin 6)) = canonicalInput28475.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput978 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8965 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput978 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8965 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28475 hH))).trans (reductionSound8965 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput978 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9343 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput978 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3094 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput978 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3094 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9343 hH))).trans (oldProjectionSound3094 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput978 (j : Fin 6)))
    1440 1440 ![1440, 1440, 288, 288, 288, 1440] ![-1440, -1440, -7200, -7200, -7200, -1440] (extendRow Arithmetic.row978) ![reductionProjection9246, reductionProjection9246, reductionProjection8736, oldProjection3243, reductionProjection8965, oldProjection3094]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1123 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![0, -1, 2, -1], ![1, 1, 1, -3]]

theorem rowSound1123 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1123) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1123 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1123 H]
  have hshape : boundaryInput1123 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1123 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 288, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1123 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9220, reductionProjection9220, reductionProjection9225, oldProjection3249, oldProjection3197, reductionProjection7939] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1123 (0 : Fin 6)) = canonicalInput27665.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1123 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9220 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1123 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9220 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27665 hH))).trans (reductionSound9220 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1123 (1 : Fin 6)) = canonicalInput28163.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1123 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9220 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1123 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9220 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28163 hH))).trans (reductionSound9220 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1123 (2 : Fin 6)) = canonicalInput28498.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1123 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9225 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1123 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9225 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28498 hH))).trans (reductionSound9225 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1123 (3 : Fin 6)) = canonicalInput28541.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1123 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3249 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1123 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3249 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28541 hH))).trans (oldProjectionSound3249 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1123 (4 : Fin 6)) = canonicalInput28544.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1123 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3197 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1123 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3197 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28544 hH))).trans (oldProjectionSound3197 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1123 (5 : Fin 6)) = canonicalInput28545.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1123 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7939 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1123 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7939 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28545 hH))).trans (reductionSound7939 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1123 (j : Fin 6)))
    1440 1440 ![1440, 1440, 288, 288, 1440, 1440] ![-1440, -1440, -7200, -7200, -1440, -1440] (extendRow Arithmetic.row1123) ![reductionProjection9220, reductionProjection9220, reductionProjection9225, oldProjection3249, oldProjection3197, reductionProjection7939]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1316 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, 2, -1, -1], ![1, -3, 1, 1]]

theorem rowSound1316 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1316) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1316 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1316 H]
  have hshape : boundaryInput1316 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1316 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1316 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection2315, reductionProjection9099, reductionProjection8177, reductionProjection7635, reductionProjection9082, reductionProjection9232] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1316 (0 : Fin 6)) = canonicalInput30205.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1316 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection2315 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1316 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection2315 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30205 hH))).trans (oldProjectionSound2315 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1316 (1 : Fin 6)) = canonicalInput31454.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1316 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9099 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1316 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9099 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31454 hH))).trans (reductionSound9099 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1316 (2 : Fin 6)) = canonicalInput31594.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1316 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8177 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1316 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8177 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31594 hH))).trans (reductionSound8177 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1316 (3 : Fin 6)) = canonicalInput31615.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1316 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7635 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1316 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7635 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31615 hH))).trans (reductionSound7635 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1316 (4 : Fin 6)) = canonicalInput31618.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1316 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9082 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1316 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9082 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31618 hH))).trans (reductionSound9082 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1316 (5 : Fin 6)) = canonicalInput31619.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1316 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9232 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1316 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9232 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31619 hH))).trans (reductionSound9232 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1316 (j : Fin 6)))
    288 1440 ![1440, 1440, 1440, 1440, 1440, 288] ![-288, -288, -288, -288, -288, -1440] (extendRow Arithmetic.row1316) ![oldProjection2315, reductionProjection9099, reductionProjection8177, reductionProjection7635, reductionProjection9082, reductionProjection9232]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput371 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![-1, 0, 2, -1], ![-1, 2, 1, -2], ![2, -2, -1, 1]]

theorem rowSound371 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 371) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row371 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row371 H]
  have hshape : boundaryInput371 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput371 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 288, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput371 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8977, reductionProjection8977, oldProjection2232, oldProjection3257, reductionProjection9272, reductionProjection8974] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput371 (0 : Fin 6)) = canonicalInput27632.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput371 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8977 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput371 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8977 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27632 hH))).trans (reductionSound8977 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput371 (1 : Fin 6)) = canonicalInput28134.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput371 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8977 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput371 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8977 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28134 hH))).trans (reductionSound8977 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput371 (2 : Fin 6)) = canonicalInput28294.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput371 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection2232 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput371 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection2232 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28294 hH))).trans (oldProjectionSound2232 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput371 (3 : Fin 6)) = canonicalInput28311.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput371 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3257 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput371 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3257 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28311 hH))).trans (oldProjectionSound3257 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput371 (4 : Fin 6)) = canonicalInput28312.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput371 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9272 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput371 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9272 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28312 hH))).trans (reductionSound9272 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput371 (5 : Fin 6)) = canonicalInput28313.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput371 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8974 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput371 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8974 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28313 hH))).trans (reductionSound8974 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput371 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 288, 288] ![-1440, -1440, -1440, -1440, -7200, -7200] (extendRow Arithmetic.row371) ![reductionProjection8977, reductionProjection8977, oldProjection2232, oldProjection3257, reductionProjection9272, reductionProjection8974]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput486 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-2, 1, 0, 1], ![1, -2, 1, 0], ![1, 1, 2, -4]]

theorem rowSound486 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 486) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row486 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row486 H]
  have hshape : boundaryInput486 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput486 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 1440, 1440, 18, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput486 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7920, reductionProjection7920, oldProjection3287, oldProjection3179, reductionProjection8004, reductionProjection9265] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput486 (0 : Fin 6)) = canonicalInput24774.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput486 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7920 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput486 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7920 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24774 hH))).trans (reductionSound7920 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput486 (1 : Fin 6)) = canonicalInput28083.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput486 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7920 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput486 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7920 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28083 hH))).trans (reductionSound7920 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput486 (2 : Fin 6)) = canonicalInput28236.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput486 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection3287 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput486 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection3287 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28236 hH))).trans (oldProjectionSound3287 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput486 (3 : Fin 6)) = canonicalInput28360.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput486 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3179 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput486 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3179 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28360 hH))).trans (oldProjectionSound3179 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput486 (4 : Fin 6)) = canonicalInput28363.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput486 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8004 (Normalization.momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst boundaryInput486 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8004 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28363 hH))).trans (reductionSound8004 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput486 (5 : Fin 6)) = canonicalInput28364.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput486 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9265 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput486 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9265 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28364 hH))).trans (reductionSound9265 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput486 (j : Fin 6)))
    1440 1440 ![288, 288, 1440, 1440, 18, 1440] ![-7200, -7200, -1440, -1440, -115200, -1440] (extendRow Arithmetic.row486) ![reductionProjection7920, reductionProjection7920, oldProjection3287, oldProjection3179, reductionProjection8004, reductionProjection9265]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput497 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![1, -1, -1, 1], ![1, -1, 3, -3]]

theorem rowSound497 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 497) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row497 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row497 H]
  have hshape : boundaryInput497 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput497 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 1440, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput497 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7928, reductionProjection9267, oldProjection2285, reductionProjection7698, reductionProjection8030, reductionProjection8023] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput497 (0 : Fin 6)) = canonicalInput24847.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput497 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7928 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput497 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7928 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24847 hH))).trans (reductionSound7928 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput497 (1 : Fin 6)) = canonicalInput28422.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput497 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9267 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput497 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9267 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28422 hH))).trans (reductionSound9267 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput497 (2 : Fin 6)) = canonicalInput29411.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput497 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection2285 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput497 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection2285 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29411 hH))).trans (oldProjectionSound2285 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput497 (3 : Fin 6)) = canonicalInput29460.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput497 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7698 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput497 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7698 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29460 hH))).trans (reductionSound7698 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput497 (4 : Fin 6)) = canonicalInput29471.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput497 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8030 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput497 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8030 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29471 hH))).trans (reductionSound8030 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput497 (5 : Fin 6)) = canonicalInput29472.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput497 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8023 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput497 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8023 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29472 hH))).trans (reductionSound8023 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput497 (j : Fin 6)))
    720 1440 ![1440, 1440, 288, 1440, 1440, 720] ![-720, -720, -3600, -720, -720, -1440] (extendRow Arithmetic.row497) ![reductionProjection7928, reductionProjection9267, oldProjection2285, reductionProjection7698, reductionProjection8030, reductionProjection8023]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput795 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, 1, 0], ![2, -2, 1, -1]]

theorem rowSound795 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 795) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row795 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row795 H]
  have hshape : boundaryInput795 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput795 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput795 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9273, reductionProjection9273, oldProjection1785, oldProjection3097, oldProjection3092, oldProjection3166] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput795 (0 : Fin 6)) = canonicalInput27637.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput795 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9273 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput795 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9273 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27637 hH))).trans (reductionSound9273 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput795 (1 : Fin 6)) = canonicalInput28139.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput795 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9273 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput795 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9273 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28139 hH))).trans (reductionSound9273 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput795 (2 : Fin 6)) = canonicalInput28299.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput795 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection1785 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput795 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection1785 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28299 hH))).trans (oldProjectionSound1785 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput795 (3 : Fin 6)) = canonicalInput28327.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput795 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3097 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput795 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3097 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28327 hH))).trans (oldProjectionSound3097 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput795 (4 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9298 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput795 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3092 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput795 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3092 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9298 hH))).trans (oldProjectionSound3092 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput795 (5 : Fin 6)) = canonicalInput28334.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput795 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3166 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput795 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3166 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28334 hH))).trans (oldProjectionSound3166 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput795 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 720] ![-1440, -1440, -1440, -1440, -1440, -2880] (extendRow Arithmetic.row795) ![reductionProjection9273, reductionProjection9273, oldProjection1785, oldProjection3097, oldProjection3092, oldProjection3166]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput853 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 1, 1, 0], ![1, 0, 2, -3]]

theorem rowSound853 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 853) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row853 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row853 H]
  have hshape : boundaryInput853 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput853 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 1440, 1440, 144, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput853 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9232, reductionProjection9232, oldProjection3467, reductionProjection9270, oldProjection3447, oldProjection3042] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput853 (0 : Fin 6)) = canonicalInput24783.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput853 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9232 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput853 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9232 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24783 hH))).trans (reductionSound9232 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput853 (1 : Fin 6)) = canonicalInput28092.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput853 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9232 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput853 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9232 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28092 hH))).trans (reductionSound9232 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput853 (2 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9275 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput853 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection3467 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput853 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection3467 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9275 hH))).trans (oldProjectionSound3467 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput853 (3 : Fin 6)) = canonicalInput28408.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput853 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9270 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput853 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9270 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28408 hH))).trans (reductionSound9270 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput853 (4 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9322 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput853 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3447 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput853 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3447 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9322 hH))).trans (oldProjectionSound3447 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput853 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9324 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput853 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3042 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput853 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3042 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9324 hH))).trans (oldProjectionSound3042 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput853 (j : Fin 6)))
    1440 1440 ![288, 288, 1440, 1440, 144, 720] ![-7200, -7200, -1440, -1440, -14400, -2880] (extendRow Arithmetic.row853) ![reductionProjection9232, reductionProjection9232, oldProjection3467, reductionProjection9270, oldProjection3447, oldProjection3042]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
