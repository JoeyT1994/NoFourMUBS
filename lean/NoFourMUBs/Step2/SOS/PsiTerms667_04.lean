import NoFourMUBs.Step2.SOS.Canonical342
import NoFourMUBs.Step2.SOS.Canonical343
import NoFourMUBs.Step2.SOS.Canonical344
import NoFourMUBs.Step2.SOS.Canonical345
import NoFourMUBs.Step2.SOS.Canonical346
import NoFourMUBs.Step2.SOS.Canonical359
import NoFourMUBs.Step2.SOS.Canonical360
import NoFourMUBs.Step2.SOS.Canonical361
import NoFourMUBs.Step2.SOS.Canonical362
import NoFourMUBs.Step2.SOS.Canonical367
import NoFourMUBs.Step2.SOS.Canonical478
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

theorem psiChild667_40 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * ((psiCoefficient 40 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 40) false - psiInput667) - injectiveMoment H (blockExponent (psiExponent 40) true - psiInput667))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection7144) (Integer.Sparse.scale (12 : ℤ) oldProjection61)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - psiInput667) = canonicalInput23185.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - psiInput667) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23185 hH))).trans (reductionSound7144 hH)
  have he1 : (blockExponent (psiExponent 40) true - psiInput667) = canonicalInput30645.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) true - psiInput667) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30645 hH))).trans (oldProjectionSound61 hH)
  change (480 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (12 : ℝ) * hh1

theorem psiChild667_41 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * ((psiCoefficient 41 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 41) false - psiInput667) - injectiveMoment H (blockExponent (psiExponent 41) true - psiInput667))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection7144) (Integer.Sparse.scale (12 : ℤ) oldProjection62)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 41) false - psiInput667) = canonicalInput23120.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 41) false - psiInput667) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23120 hH))).trans (reductionSound7144 hH)
  have he1 : (blockExponent (psiExponent 41) true - psiInput667) = canonicalInput30642.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 41) true - psiInput667) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30642 hH))).trans (oldProjectionSound62 hH)
  change (480 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (12 : ℝ) * hh1

theorem psiChild667_42 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * ((psiCoefficient 42 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 42) false - psiInput667) - injectiveMoment H (blockExponent (psiExponent 42) true - psiInput667))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection7146) (Integer.Sparse.scale (1 : ℤ) oldProjection62)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 42) false - psiInput667) = canonicalInput22200.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 42) false - psiInput667) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22200 hH))).trans (reductionSound7146 hH)
  have he1 : (blockExponent (psiExponent 42) true - psiInput667) = canonicalInput30635.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 42) true - psiInput667) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30635 hH))).trans (oldProjectionSound62 hH)
  change (80 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (1 : ℝ) * hh1

theorem psiChild667_43 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * ((psiCoefficient 43 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 43) false - psiInput667) - injectiveMoment H (blockExponent (psiExponent 43) true - psiInput667))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection7144) (Integer.Sparse.scale (12 : ℤ) oldProjection62)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - psiInput667) = canonicalInput22135.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - psiInput667) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22135 hH))).trans (reductionSound7144 hH)
  have he1 : (blockExponent (psiExponent 43) true - psiInput667) = canonicalInput30632.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) true - psiInput667) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30632 hH))).trans (oldProjectionSound62 hH)
  change (480 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (12 : ℝ) * hh1

theorem psiChild667_44 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * ((psiCoefficient 44 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 44) false - psiInput667) - injectiveMoment H (blockExponent (psiExponent 44) true - psiInput667))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection12281) (Integer.Sparse.scale (-90 : ℤ) oldProjection57)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - psiInput667) = canonicalInput22009.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - psiInput667) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22009 hH))).trans (reductionSound12281 hH)
  have he1 : (blockExponent (psiExponent 44) true - psiInput667) = canonicalInput30628.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) true - psiInput667) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30628 hH))).trans (oldProjectionSound57 hH)
  change (480 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-90 : ℝ) * hh1

theorem psiChild667_45 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * ((psiCoefficient 45 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 45) false - psiInput667) - injectiveMoment H (blockExponent (psiExponent 45) true - psiInput667))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (1 : ℤ) reductionProjection7148) (Integer.Sparse.scale (-240 : ℤ) oldProjection44)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - psiInput667) = canonicalInput23551.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - psiInput667) =
      Integer.Sparse.eval reductionProjection7148 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23551 hH))).trans (reductionSound7148 hH)
  have he1 : (blockExponent (psiExponent 45) true - psiInput667) = canonicalInput30653.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) true - psiInput667) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30653 hH))).trans (oldProjectionSound44 hH)
  change (240 : ℝ) * (((1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (1 : ℝ) * hh0 + (-240 : ℝ) * hh1

theorem psiChild667_46 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * ((psiCoefficient 46 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 46) false - psiInput667) - injectiveMoment H (blockExponent (psiExponent 46) true - psiInput667))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection12281) (Integer.Sparse.scale (-144 : ℤ) oldProjection64)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 46) false - psiInput667) = canonicalInput23059.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 46) false - psiInput667) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23059 hH))).trans (reductionSound12281 hH)
  have he1 : (blockExponent (psiExponent 46) true - psiInput667) = canonicalInput30641.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 46) true - psiInput667) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30641 hH))).trans (oldProjectionSound64 hH)
  change (480 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-144 : ℝ) * hh1

theorem psiChild667_47 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * ((psiCoefficient 47 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 47) false - psiInput667) - injectiveMoment H (blockExponent (psiExponent 47) true - psiInput667))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection7146) (Integer.Sparse.scale (1 : ℤ) oldProjection62)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 47) false - psiInput667) = canonicalInput22994.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 47) false - psiInput667) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22994 hH))).trans (reductionSound7146 hH)
  have he1 : (blockExponent (psiExponent 47) true - psiInput667) = canonicalInput30638.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 47) true - psiInput667) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30638 hH))).trans (oldProjectionSound62 hH)
  change (80 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (1 : ℝ) * hh1

theorem psiChild667_48 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * ((psiCoefficient 48 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 48) false - psiInput667) - injectiveMoment H (blockExponent (psiExponent 48) true - psiInput667))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection12281) (Integer.Sparse.scale (-144 : ℤ) oldProjection64)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 48) false - psiInput667) = canonicalInput22074.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 48) false - psiInput667) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22074 hH))).trans (reductionSound12281 hH)
  have he1 : (blockExponent (psiExponent 48) true - psiInput667) = canonicalInput30631.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 48) true - psiInput667) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30631 hH))).trans (oldProjectionSound64 hH)
  change (480 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-144 : ℝ) * hh1

theorem psiChild667_49 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * ((psiCoefficient 49 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 49) false - psiInput667) - injectiveMoment H (blockExponent (psiExponent 49) true - psiInput667))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection7144) (Integer.Sparse.scale (12 : ℤ) oldProjection61)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - psiInput667) = canonicalInput21948.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - psiInput667) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21948 hH))).trans (reductionSound7144 hH)
  have he1 : (blockExponent (psiExponent 49) true - psiInput667) = canonicalInput30627.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) true - psiInput667) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30627 hH))).trans (oldProjectionSound61 hH)
  change (480 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (12 : ℝ) * hh1

end NoFourMUBs.Step2.SOS.Semantics
