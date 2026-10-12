import NoFourMUBs.Step2.SOS.Canonical424
import NoFourMUBs.Step2.SOS.Canonical426
import NoFourMUBs.Step2.SOS.Canonical474
import NoFourMUBs.Step2.SOS.Canonical479
import NoFourMUBs.Step2.SOS.Canonical480
import NoFourMUBs.Step2.SOS.Canonical482
import NoFourMUBs.Step2.SOS.Canonical484
import NoFourMUBs.Step2.SOS.Canonical503
import NoFourMUBs.Step2.SOS.Canonical505
import NoFourMUBs.Step2.SOS.Canonical507
import NoFourMUBs.Step2.SOS.Canonical516
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

theorem psiChild667_10 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * ((psiCoefficient 10 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 10) false - psiInput667) - injectiveMoment H (blockExponent (psiExponent 10) true - psiInput667))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection7144) (Integer.Sparse.scale (960 : ℤ) oldProjection43)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - psiInput667) = canonicalInput33056.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - psiInput667) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33056 hH))).trans (reductionSound7144 hH)
  have he1 : (blockExponent (psiExponent 10) true - psiInput667) = canonicalInput30722.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) true - psiInput667) =
      Integer.Sparse.eval oldProjection43 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30722 hH))).trans (oldProjectionSound43 hH)
  change (480 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (960 : ℝ) * hh1

theorem psiChild667_11 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * ((psiCoefficient 11 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 11) false - psiInput667) - injectiveMoment H (blockExponent (psiExponent 11) true - psiInput667))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection7146) (Integer.Sparse.scale (80 : ℤ) oldProjection31)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 11) false - psiInput667) = canonicalInput32503.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 11) false - psiInput667) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32503 hH))).trans (reductionSound7146 hH)
  have he1 : (blockExponent (psiExponent 11) true - psiInput667) = canonicalInput30706.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 11) true - psiInput667) =
      Integer.Sparse.eval oldProjection31 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30706 hH))).trans (oldProjectionSound31 hH)
  change (80 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (80 : ℝ) * hh1

theorem psiChild667_12 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * ((psiCoefficient 12 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 12) false - psiInput667) - injectiveMoment H (blockExponent (psiExponent 12) true - psiInput667))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection7144) (Integer.Sparse.scale (960 : ℤ) oldProjection36)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 12) false - psiInput667) = canonicalInput32377.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 12) false - psiInput667) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32377 hH))).trans (reductionSound7144 hH)
  have he1 : (blockExponent (psiExponent 12) true - psiInput667) = canonicalInput30701.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 12) true - psiInput667) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30701 hH))).trans (oldProjectionSound36 hH)
  change (480 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (960 : ℝ) * hh1

theorem psiChild667_13 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * ((psiCoefficient 13 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 13) false - psiInput667) - injectiveMoment H (blockExponent (psiExponent 13) true - psiInput667))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection7144) (Integer.Sparse.scale (960 : ℤ) oldProjection36)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 13) false - psiInput667) = canonicalInput31016.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 13) false - psiInput667) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound31016 hH))).trans (reductionSound7144 hH)
  have he1 : (blockExponent (psiExponent 13) true - psiInput667) = canonicalInput30691.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 13) true - psiInput667) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30691 hH))).trans (oldProjectionSound36 hH)
  change (480 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (960 : ℝ) * hh1

theorem psiChild667_14 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * ((psiCoefficient 14 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 14) false - psiInput667) - injectiveMoment H (blockExponent (psiExponent 14) true - psiInput667))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection7144) (Integer.Sparse.scale (960 : ℤ) oldProjection43)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 14) false - psiInput667) = canonicalInput30886.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 14) false - psiInput667) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30886 hH))).trans (reductionSound7144 hH)
  have he1 : (blockExponent (psiExponent 14) true - psiInput667) = canonicalInput30687.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 14) true - psiInput667) =
      Integer.Sparse.eval oldProjection43 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30687 hH))).trans (oldProjectionSound43 hH)
  change (480 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (960 : ℝ) * hh1

theorem psiChild667_15 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * ((psiCoefficient 15 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 15) false - psiInput667) - injectiveMoment H (blockExponent (psiExponent 15) true - psiInput667))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection12281) (Integer.Sparse.scale (-1440 : ℤ) oldProjection41)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 15) false - psiInput667) = canonicalInput32251.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 15) false - psiInput667) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32251 hH))).trans (reductionSound12281 hH)
  have he1 : (blockExponent (psiExponent 15) true - psiInput667) = canonicalInput30697.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 15) true - psiInput667) =
      Integer.Sparse.eval oldProjection41 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30697 hH))).trans (oldProjectionSound41 hH)
  change (480 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-1440 : ℝ) * hh1

theorem psiChild667_16 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * ((psiCoefficient 16 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 16) false - psiInput667) - injectiveMoment H (blockExponent (psiExponent 16) true - psiInput667))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (12 : ℤ) oldProjection44) (Integer.Sparse.scale (-12 : ℤ) oldProjection44)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - psiInput667) = canonicalInput30686.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - psiInput667) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30686 hH))).trans (oldProjectionSound44 hH)
  have he1 : (blockExponent (psiExponent 16) true - psiInput667) = canonicalInput30686.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) true - psiInput667) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30686 hH))).trans (oldProjectionSound44 hH)
  change (1 : ℝ) * (((12 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (12 : ℝ) * hh0 + (-12 : ℝ) * hh1

theorem psiChild667_17 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * ((psiCoefficient 17 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 17) false - psiInput667) - injectiveMoment H (blockExponent (psiExponent 17) true - psiInput667))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection7144) (Integer.Sparse.scale (960 : ℤ) oldProjection36)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 17) false - psiInput667) = canonicalInput30366.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 17) false - psiInput667) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30366 hH))).trans (reductionSound7144 hH)
  have he1 : (blockExponent (psiExponent 17) true - psiInput667) = canonicalInput30682.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 17) true - psiInput667) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30682 hH))).trans (oldProjectionSound36 hH)
  change (480 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (960 : ℝ) * hh1

theorem psiChild667_18 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * ((psiCoefficient 18 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 18) false - psiInput667) - injectiveMoment H (blockExponent (psiExponent 18) true - psiInput667))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection12281) (Integer.Sparse.scale (-1440 : ℤ) oldProjection41)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 18) false - psiInput667) = canonicalInput27320.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 18) false - psiInput667) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27320 hH))).trans (reductionSound12281 hH)
  have he1 : (blockExponent (psiExponent 18) true - psiInput667) = canonicalInput30678.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 18) true - psiInput667) =
      Integer.Sparse.eval oldProjection41 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30678 hH))).trans (oldProjectionSound41 hH)
  change (480 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-1440 : ℝ) * hh1

theorem psiChild667_19 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * ((psiCoefficient 19 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 19) false - psiInput667) - injectiveMoment H (blockExponent (psiExponent 19) true - psiInput667))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection7144) (Integer.Sparse.scale (960 : ℤ) oldProjection36)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 19) false - psiInput667) = canonicalInput27195.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 19) false - psiInput667) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27195 hH))).trans (reductionSound7144 hH)
  have he1 : (blockExponent (psiExponent 19) true - psiInput667) = canonicalInput30675.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 19) true - psiInput667) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30675 hH))).trans (oldProjectionSound36 hH)
  change (480 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (960 : ℝ) * hh1

end NoFourMUBs.Step2.SOS.Semantics
