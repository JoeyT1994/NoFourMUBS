import NoFourMUBs.Step2.SOS.Canonical293
import NoFourMUBs.Step2.SOS.Canonical294
import NoFourMUBs.Step2.SOS.Canonical296
import NoFourMUBs.Step2.SOS.Canonical297
import NoFourMUBs.Step2.SOS.Canonical341
import NoFourMUBs.Step2.SOS.Canonical475
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.PsiRowInputs
import NoFourMUBs.Step2.SOS.Reductions230
import NoFourMUBs.Step2.SOS.Reductions361
import NoFourMUBs.Step2.SOS.Reductions383

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 20000
set_option maxHeartbeats 4000000

theorem psiChild659_50 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 50 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 50) false - psiInput659) - injectiveMoment H (blockExponent (psiExponent 50) true - psiInput659))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11564) (Integer.Sparse.scale (12 : ℤ) oldProjection230)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 50) false - psiInput659) = canonicalInput21826.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 50) false - psiInput659) =
      Integer.Sparse.eval reductionProjection11564 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21826 hH))).trans (reductionSound11564 hH)
  have he1 : (blockExponent (psiExponent 50) true - psiInput659) = canonicalInput30441.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 50) true - psiInput659) =
      Integer.Sparse.eval oldProjection230 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30441 hH))).trans (oldProjectionSound230 hH)
  change (1440 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (12 : ℝ) * hh1

theorem psiChild659_51 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * ((psiCoefficient 51 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 51) false - psiInput659) - injectiveMoment H (blockExponent (psiExponent 51) true - psiInput659))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (1 : ℤ) reductionProjection7366) (Integer.Sparse.scale (-360 : ℤ) oldProjection276)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 51) false - psiInput659) = canonicalInput19012.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 51) false - psiInput659) =
      Integer.Sparse.eval reductionProjection7366 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound19012 hH))).trans (reductionSound7366 hH)
  have he1 : (blockExponent (psiExponent 51) true - psiInput659) = canonicalInput30439.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 51) true - psiInput659) =
      Integer.Sparse.eval oldProjection276 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30439 hH))).trans (oldProjectionSound276 hH)
  change (360 : ℝ) * (((1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (1 : ℝ) * hh0 + (-360 : ℝ) * hh1

theorem psiChild659_52 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 52 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 52) false - psiInput659) - injectiveMoment H (blockExponent (psiExponent 52) true - psiInput659))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection12261) (Integer.Sparse.scale (6 : ℤ) oldProjection283)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - psiInput659) = canonicalInput18948.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - psiInput659) =
      Integer.Sparse.eval reductionProjection12261 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18948 hH))).trans (reductionSound12261 hH)
  have he1 : (blockExponent (psiExponent 52) true - psiInput659) = canonicalInput30438.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) true - psiInput659) =
      Integer.Sparse.eval oldProjection283 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30438 hH))).trans (oldProjectionSound283 hH)
  change (1440 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (6 : ℝ) * hh1

theorem psiChild659_53 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 53 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 53) false - psiInput659) - injectiveMoment H (blockExponent (psiExponent 53) true - psiInput659))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection12261) (Integer.Sparse.scale (6 : ℤ) oldProjection283)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - psiInput659) = canonicalInput18879.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - psiInput659) =
      Integer.Sparse.eval reductionProjection12261 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18879 hH))).trans (reductionSound12261 hH)
  have he1 : (blockExponent (psiExponent 53) true - psiInput659) = canonicalInput30437.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) true - psiInput659) =
      Integer.Sparse.eval oldProjection283 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30437 hH))).trans (oldProjectionSound283 hH)
  change (1440 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (6 : ℝ) * hh1

theorem psiChild659_54 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * ((psiCoefficient 54 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 54) false - psiInput659) - injectiveMoment H (blockExponent (psiExponent 54) true - psiInput659))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (1 : ℤ) reductionProjection7366) (Integer.Sparse.scale (-360 : ℤ) oldProjection276)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - psiInput659) = canonicalInput18815.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - psiInput659) =
      Integer.Sparse.eval reductionProjection7366 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18815 hH))).trans (reductionSound7366 hH)
  have he1 : (blockExponent (psiExponent 54) true - psiInput659) = canonicalInput30436.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) true - psiInput659) =
      Integer.Sparse.eval oldProjection276 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30436 hH))).trans (oldProjectionSound276 hH)
  change (360 : ℝ) * (((1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (1 : ℝ) * hh0 + (-360 : ℝ) * hh1

end NoFourMUBs.Step2.SOS.Semantics
