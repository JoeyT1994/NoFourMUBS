import NoFourMUBs.Step2.SOS.Canonical480
import NoFourMUBs.Step2.SOS.Canonical517
import NoFourMUBs.Step2.SOS.Canonical519
import NoFourMUBs.Step2.SOS.Canonical520
import NoFourMUBs.Step2.SOS.Canonical523
import NoFourMUBs.Step2.SOS.Canonical524
import NoFourMUBs.Step2.SOS.Canonical526
import NoFourMUBs.Step2.SOS.Canonical527
import NoFourMUBs.Step2.SOS.Canonical532
import NoFourMUBs.Step2.SOS.Canonical533
import NoFourMUBs.Step2.SOS.Canonical534
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.PsiRowInputs
import NoFourMUBs.Step2.SOS.Reductions012
import NoFourMUBs.Step2.SOS.Reductions317
import NoFourMUBs.Step2.SOS.Reductions353
import NoFourMUBs.Step2.SOS.Reductions377

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 20000
set_option maxHeartbeats 4000000

theorem psiChild665_0 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * ((psiCoefficient 0 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 0) false - psiInput665) - injectiveMoment H (blockExponent (psiExponent 0) true - psiInput665))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (1 : ℤ) reductionProjection10163) (Integer.Sparse.scale (-1 : ℤ) reductionProjection392)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - psiInput665) = canonicalInput34227.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - psiInput665) =
      Integer.Sparse.eval reductionProjection10163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34227 hH))).trans (reductionSound10163 hH)
  have he1 : (blockExponent (psiExponent 0) true - psiInput665) = canonicalInput30772.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) true - psiInput665) =
      Integer.Sparse.eval reductionProjection392 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30772 hH))).trans (reductionSound392 hH)
  change (1 : ℝ) * (((1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (1 : ℝ) * hh0 + (-1 : ℝ) * hh1

theorem psiChild665_1 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 1 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 1) false - psiInput665) - injectiveMoment H (blockExponent (psiExponent 1) true - psiInput665))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11308) (Integer.Sparse.scale (2880 : ℤ) oldProjection28)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 1) false - psiInput665) = canonicalInput34166.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 1) false - psiInput665) =
      Integer.Sparse.eval reductionProjection11308 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34166 hH))).trans (reductionSound11308 hH)
  have he1 : (blockExponent (psiExponent 1) true - psiInput665) = canonicalInput30771.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 1) true - psiInput665) =
      Integer.Sparse.eval oldProjection28 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30771 hH))).trans (oldProjectionSound28 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (2880 : ℝ) * hh1

theorem psiChild665_2 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 2 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 2) false - psiInput665) - injectiveMoment H (blockExponent (psiExponent 2) true - psiInput665))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11308) (Integer.Sparse.scale (2880 : ℤ) oldProjection42)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 2) false - psiInput665) = canonicalInput33751.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 2) false - psiInput665) =
      Integer.Sparse.eval reductionProjection11308 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33751 hH))).trans (reductionSound11308 hH)
  have he1 : (blockExponent (psiExponent 2) true - psiInput665) = canonicalInput30768.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 2) true - psiInput665) =
      Integer.Sparse.eval oldProjection42 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30768 hH))).trans (oldProjectionSound42 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (2880 : ℝ) * hh1

theorem psiChild665_3 {H : CMatrix} (hH : IsHadamard H) :
    (960 : ℝ) * ((psiCoefficient 3 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 3) false - psiInput665) - injectiveMoment H (blockExponent (psiExponent 3) true - psiInput665))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection12073) (Integer.Sparse.scale (-2880 : ℤ) oldProjection32)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - psiInput665) = canonicalInput33564.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (960 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - psiInput665) =
      Integer.Sparse.eval reductionProjection12073 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (960 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33564 hH))).trans (reductionSound12073 hH)
  have he1 : (blockExponent (psiExponent 3) true - psiInput665) = canonicalInput30763.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) true - psiInput665) =
      Integer.Sparse.eval oldProjection32 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30763 hH))).trans (oldProjectionSound32 hH)
  change (960 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-2880 : ℝ) * hh1

theorem psiChild665_4 {H : CMatrix} (hH : IsHadamard H) :
    (960 : ℝ) * ((psiCoefficient 4 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 4) false - psiInput665) - injectiveMoment H (blockExponent (psiExponent 4) true - psiInput665))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection12073) (Integer.Sparse.scale (-2880 : ℤ) oldProjection32)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 4) false - psiInput665) = canonicalInput33304.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (960 : ℝ) * injectiveMoment H (blockExponent (psiExponent 4) false - psiInput665) =
      Integer.Sparse.eval reductionProjection12073 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (960 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33304 hH))).trans (reductionSound12073 hH)
  have he1 : (blockExponent (psiExponent 4) true - psiInput665) = canonicalInput30760.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 4) true - psiInput665) =
      Integer.Sparse.eval oldProjection32 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30760 hH))).trans (oldProjectionSound32 hH)
  change (960 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-2880 : ℝ) * hh1

theorem psiChild665_5 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 5 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 5) false - psiInput665) - injectiveMoment H (blockExponent (psiExponent 5) true - psiInput665))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11308) (Integer.Sparse.scale (2880 : ℤ) oldProjection20)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 5) false - psiInput665) = canonicalInput33119.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 5) false - psiInput665) =
      Integer.Sparse.eval reductionProjection11308 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33119 hH))).trans (reductionSound11308 hH)
  have he1 : (blockExponent (psiExponent 5) true - psiInput665) = canonicalInput30756.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 5) true - psiInput665) =
      Integer.Sparse.eval oldProjection20 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30756 hH))).trans (oldProjectionSound20 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (2880 : ℝ) * hh1

theorem psiChild665_6 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 6 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 6) false - psiInput665) - injectiveMoment H (blockExponent (psiExponent 6) true - psiInput665))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11308) (Integer.Sparse.scale (2880 : ℤ) oldProjection30)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - psiInput665) = canonicalInput34105.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - psiInput665) =
      Integer.Sparse.eval reductionProjection11308 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34105 hH))).trans (reductionSound11308 hH)
  have he1 : (blockExponent (psiExponent 6) true - psiInput665) = canonicalInput30770.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) true - psiInput665) =
      Integer.Sparse.eval oldProjection30 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30770 hH))).trans (oldProjectionSound30 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (2880 : ℝ) * hh1

theorem psiChild665_7 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 7 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 7) false - psiInput665) - injectiveMoment H (blockExponent (psiExponent 7) true - psiInput665))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection11305) (Integer.Sparse.scale (180 : ℤ) oldProjection53)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 7) false - psiInput665) = canonicalInput33690.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 7) false - psiInput665) =
      Integer.Sparse.eval reductionProjection11305 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33690 hH))).trans (reductionSound11305 hH)
  have he1 : (blockExponent (psiExponent 7) true - psiInput665) = canonicalInput30767.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 7) true - psiInput665) =
      Integer.Sparse.eval oldProjection53 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30767 hH))).trans (oldProjectionSound53 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (180 : ℝ) * hh1

theorem psiChild665_8 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 8 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 8) false - psiInput665) - injectiveMoment H (blockExponent (psiExponent 8) true - psiInput665))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection11305) (Integer.Sparse.scale (180 : ℤ) oldProjection52)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 8) false - psiInput665) = canonicalInput33503.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 8) false - psiInput665) =
      Integer.Sparse.eval reductionProjection11305 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33503 hH))).trans (reductionSound11305 hH)
  have he1 : (blockExponent (psiExponent 8) true - psiInput665) = canonicalInput30762.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 8) true - psiInput665) =
      Integer.Sparse.eval oldProjection52 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30762 hH))).trans (oldProjectionSound52 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (180 : ℝ) * hh1

theorem psiChild665_9 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 9 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 9) false - psiInput665) - injectiveMoment H (blockExponent (psiExponent 9) true - psiInput665))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection11305) (Integer.Sparse.scale (180 : ℤ) oldProjection52)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 9) false - psiInput665) = canonicalInput33243.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 9) false - psiInput665) =
      Integer.Sparse.eval reductionProjection11305 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33243 hH))).trans (reductionSound11305 hH)
  have he1 : (blockExponent (psiExponent 9) true - psiInput665) = canonicalInput30759.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 9) true - psiInput665) =
      Integer.Sparse.eval oldProjection52 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30759 hH))).trans (oldProjectionSound52 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (180 : ℝ) * hh1

end NoFourMUBs.Step2.SOS.Semantics
