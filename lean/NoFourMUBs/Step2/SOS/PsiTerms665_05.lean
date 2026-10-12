import NoFourMUBs.Step2.SOS.Canonical294
import NoFourMUBs.Step2.SOS.Canonical295
import NoFourMUBs.Step2.SOS.Canonical296
import NoFourMUBs.Step2.SOS.Canonical297
import NoFourMUBs.Step2.SOS.Canonical341
import NoFourMUBs.Step2.SOS.Canonical479
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.PsiRowInputs
import NoFourMUBs.Step2.SOS.Reductions317
import NoFourMUBs.Step2.SOS.Reductions353

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 20000
set_option maxHeartbeats 4000000

theorem psiChild665_50 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 50 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 50) false - psiInput665) - injectiveMoment H (blockExponent (psiExponent 50) true - psiInput665))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11308) (Integer.Sparse.scale (36 : ℤ) oldProjection62)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 50) false - psiInput665) = canonicalInput21885.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 50) false - psiInput665) =
      Integer.Sparse.eval reductionProjection11308 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21885 hH))).trans (reductionSound11308 hH)
  have he1 : (blockExponent (psiExponent 50) true - psiInput665) = canonicalInput30681.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 50) true - psiInput665) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30681 hH))).trans (oldProjectionSound62 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (36 : ℝ) * hh1

theorem psiChild665_51 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * ((psiCoefficient 51 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 51) false - psiInput665) - injectiveMoment H (blockExponent (psiExponent 51) true - psiInput665))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (16 : ℤ) reductionProjection10163) (Integer.Sparse.scale (-1 : ℤ) oldProjection57)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 51) false - psiInput665) = canonicalInput19071.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 51) false - psiInput665) =
      Integer.Sparse.eval reductionProjection10163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound19071 hH))).trans (reductionSound10163 hH)
  have he1 : (blockExponent (psiExponent 51) true - psiInput665) = canonicalInput30679.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 51) true - psiInput665) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30679 hH))).trans (oldProjectionSound57 hH)
  change (16 : ℝ) * (((1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (16 : ℝ) * hh0 + (-1 : ℝ) * hh1

theorem psiChild665_52 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 52 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 52) false - psiInput665) - injectiveMoment H (blockExponent (psiExponent 52) true - psiInput665))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11308) (Integer.Sparse.scale (36 : ℤ) oldProjection62)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - psiInput665) = canonicalInput19007.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - psiInput665) =
      Integer.Sparse.eval reductionProjection11308 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound19007 hH))).trans (reductionSound11308 hH)
  have he1 : (blockExponent (psiExponent 52) true - psiInput665) = canonicalInput30677.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) true - psiInput665) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30677 hH))).trans (oldProjectionSound62 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (36 : ℝ) * hh1

theorem psiChild665_53 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 53 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 53) false - psiInput665) - injectiveMoment H (blockExponent (psiExponent 53) true - psiInput665))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11308) (Integer.Sparse.scale (36 : ℤ) oldProjection62)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - psiInput665) = canonicalInput18938.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - psiInput665) =
      Integer.Sparse.eval reductionProjection11308 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18938 hH))).trans (reductionSound11308 hH)
  have he1 : (blockExponent (psiExponent 53) true - psiInput665) = canonicalInput30674.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) true - psiInput665) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30674 hH))).trans (oldProjectionSound62 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (36 : ℝ) * hh1

theorem psiChild665_54 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * ((psiCoefficient 54 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 54) false - psiInput665) - injectiveMoment H (blockExponent (psiExponent 54) true - psiInput665))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (16 : ℤ) reductionProjection10163) (Integer.Sparse.scale (-1 : ℤ) oldProjection57)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - psiInput665) = canonicalInput18874.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - psiInput665) =
      Integer.Sparse.eval reductionProjection10163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18874 hH))).trans (reductionSound10163 hH)
  have he1 : (blockExponent (psiExponent 54) true - psiInput665) = canonicalInput30671.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) true - psiInput665) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30671 hH))).trans (oldProjectionSound57 hH)
  change (16 : ℝ) * (((1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (16 : ℝ) * hh0 + (-1 : ℝ) * hh1

end NoFourMUBs.Step2.SOS.Semantics
