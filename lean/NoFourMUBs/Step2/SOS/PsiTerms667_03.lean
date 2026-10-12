import NoFourMUBs.Step2.SOS.Canonical363
import NoFourMUBs.Step2.SOS.Canonical364
import NoFourMUBs.Step2.SOS.Canonical369
import NoFourMUBs.Step2.SOS.Canonical370
import NoFourMUBs.Step2.SOS.Canonical371
import NoFourMUBs.Step2.SOS.Canonical422
import NoFourMUBs.Step2.SOS.Canonical423
import NoFourMUBs.Step2.SOS.Canonical425
import NoFourMUBs.Step2.SOS.Canonical473
import NoFourMUBs.Step2.SOS.Canonical475
import NoFourMUBs.Step2.SOS.Canonical478
import NoFourMUBs.Step2.SOS.Canonical479
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.PsiRowInputs
import NoFourMUBs.Step2.SOS.Reductions223
import NoFourMUBs.Step2.SOS.Reductions383

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 20000
set_option maxHeartbeats 4000000

theorem psiChild667_30 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * ((psiCoefficient 30 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 30) false - psiInput667) - injectiveMoment H (blockExponent (psiExponent 30) true - psiInput667))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection7144) (Integer.Sparse.scale (12 : ℤ) oldProjection61)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 30) false - psiInput667) = canonicalInput30432.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 30) false - psiInput667) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30432 hH))).trans (reductionSound7144 hH)
  have he1 : (blockExponent (psiExponent 30) true - psiInput667) = canonicalInput30685.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 30) true - psiInput667) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30685 hH))).trans (oldProjectionSound61 hH)
  change (480 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (12 : ℝ) * hh1

theorem psiChild667_31 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * ((psiCoefficient 31 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 31) false - psiInput667) - injectiveMoment H (blockExponent (psiExponent 31) true - psiInput667))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection7144) (Integer.Sparse.scale (12 : ℤ) oldProjection62)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 31) false - psiInput667) = canonicalInput30305.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 31) false - psiInput667) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30305 hH))).trans (reductionSound7144 hH)
  have he1 : (blockExponent (psiExponent 31) true - psiInput667) = canonicalInput30681.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 31) true - psiInput667) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30681 hH))).trans (oldProjectionSound62 hH)
  change (480 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (12 : ℝ) * hh1

theorem psiChild667_32 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * ((psiCoefficient 32 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 32) false - psiInput667) - injectiveMoment H (blockExponent (psiExponent 32) true - psiInput667))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection7146) (Integer.Sparse.scale (1 : ℤ) oldProjection62)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - psiInput667) = canonicalInput27259.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - psiInput667) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27259 hH))).trans (reductionSound7146 hH)
  have he1 : (blockExponent (psiExponent 32) true - psiInput667) = canonicalInput30677.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) true - psiInput667) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30677 hH))).trans (oldProjectionSound62 hH)
  change (80 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (1 : ℝ) * hh1

theorem psiChild667_33 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * ((psiCoefficient 33 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 33) false - psiInput667) - injectiveMoment H (blockExponent (psiExponent 33) true - psiInput667))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection7144) (Integer.Sparse.scale (12 : ℤ) oldProjection62)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 33) false - psiInput667) = canonicalInput27134.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 33) false - psiInput667) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27134 hH))).trans (reductionSound7144 hH)
  have he1 : (blockExponent (psiExponent 33) true - psiInput667) = canonicalInput30674.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 33) true - psiInput667) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30674 hH))).trans (oldProjectionSound62 hH)
  change (480 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (12 : ℝ) * hh1

theorem psiChild667_34 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * ((psiCoefficient 34 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 34) false - psiInput667) - injectiveMoment H (blockExponent (psiExponent 34) true - psiInput667))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection12281) (Integer.Sparse.scale (-90 : ℤ) oldProjection57)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - psiInput667) = canonicalInput27009.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - psiInput667) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27009 hH))).trans (reductionSound12281 hH)
  have he1 : (blockExponent (psiExponent 34) true - psiInput667) = canonicalInput30671.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) true - psiInput667) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30671 hH))).trans (oldProjectionSound57 hH)
  change (480 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-90 : ℝ) * hh1

theorem psiChild667_35 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * ((psiCoefficient 35 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 35) false - psiInput667) - injectiveMoment H (blockExponent (psiExponent 35) true - psiInput667))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (1 : ℤ) reductionProjection7148) (Integer.Sparse.scale (-240 : ℤ) oldProjection35)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - psiInput667) = canonicalInput23752.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - psiInput667) =
      Integer.Sparse.eval reductionProjection7148 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23752 hH))).trans (reductionSound7148 hH)
  have he1 : (blockExponent (psiExponent 35) true - psiInput667) = canonicalInput30664.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) true - psiInput667) =
      Integer.Sparse.eval oldProjection35 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30664 hH))).trans (oldProjectionSound35 hH)
  change (240 : ℝ) * (((1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (1 : ℝ) * hh0 + (-240 : ℝ) * hh1

theorem psiChild667_36 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * ((psiCoefficient 36 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 36) false - psiInput667) - injectiveMoment H (blockExponent (psiExponent 36) true - psiInput667))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection7146) (Integer.Sparse.scale (1 : ℤ) oldProjection56)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 36) false - psiInput667) = canonicalInput23685.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 36) false - psiInput667) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23685 hH))).trans (reductionSound7146 hH)
  have he1 : (blockExponent (psiExponent 36) true - psiInput667) = canonicalInput30660.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 36) true - psiInput667) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30660 hH))).trans (oldProjectionSound56 hH)
  change (80 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (1 : ℝ) * hh1

theorem psiChild667_37 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * ((psiCoefficient 37 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 37) false - psiInput667) - injectiveMoment H (blockExponent (psiExponent 37) true - psiInput667))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection7146) (Integer.Sparse.scale (1 : ℤ) oldProjection56)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 37) false - psiInput667) = canonicalInput23311.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 37) false - psiInput667) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23311 hH))).trans (reductionSound7146 hH)
  have he1 : (blockExponent (psiExponent 37) true - psiInput667) = canonicalInput30650.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 37) true - psiInput667) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30650 hH))).trans (oldProjectionSound56 hH)
  change (80 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (1 : ℝ) * hh1

theorem psiChild667_38 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * ((psiCoefficient 38 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 38) false - psiInput667) - injectiveMoment H (blockExponent (psiExponent 38) true - psiInput667))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection12281) (Integer.Sparse.scale (-90 : ℤ) oldProjection57)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 38) false - psiInput667) = canonicalInput23246.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 38) false - psiInput667) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23246 hH))).trans (reductionSound12281 hH)
  have he1 : (blockExponent (psiExponent 38) true - psiInput667) = canonicalInput30646.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 38) true - psiInput667) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30646 hH))).trans (oldProjectionSound57 hH)
  change (480 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-90 : ℝ) * hh1

theorem psiChild667_39 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * ((psiCoefficient 39 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 39) false - psiInput667) - injectiveMoment H (blockExponent (psiExponent 39) true - psiInput667))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection7146) (Integer.Sparse.scale (1 : ℤ) oldProjection62)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 39) false - psiInput667) = canonicalInput23616.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 39) false - psiInput667) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23616 hH))).trans (reductionSound7146 hH)
  have he1 : (blockExponent (psiExponent 39) true - psiInput667) = canonicalInput30656.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 39) true - psiInput667) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30656 hH))).trans (oldProjectionSound62 hH)
  change (80 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (1 : ℝ) * hh1

end NoFourMUBs.Step2.SOS.Semantics
