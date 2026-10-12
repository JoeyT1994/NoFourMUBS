import NoFourMUBs.Step2.SOS.Canonical294
import NoFourMUBs.Step2.SOS.Canonical295
import NoFourMUBs.Step2.SOS.Canonical297
import NoFourMUBs.Step2.SOS.Canonical298
import NoFourMUBs.Step2.SOS.Canonical341
import NoFourMUBs.Step2.SOS.Canonical480
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.PsiRowInputs
import NoFourMUBs.Step2.SOS.Reductions351
import NoFourMUBs.Step2.SOS.Reductions352
import NoFourMUBs.Step2.SOS.Reductions374

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 20000
set_option maxHeartbeats 4000000

theorem psiChild663_50 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 50 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 50) false - psiInput663) - injectiveMoment H (blockExponent (psiExponent 50) true - psiInput663))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11268) (Integer.Sparse.scale (480 : ℤ) oldProjection177)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 50) false - psiInput663) = canonicalInput21886.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 50) false - psiInput663) =
      Integer.Sparse.eval reductionProjection11268 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21886 hH))).trans (reductionSound11268 hH)
  have he1 : (blockExponent (psiExponent 50) true - psiInput663) = canonicalInput30777.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (3 : ℝ) * injectiveMoment H (blockExponent (psiExponent 50) true - psiInput663) =
      Integer.Sparse.eval oldProjection177 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30777 hH))).trans (oldProjectionSound177 hH)
  change (1440 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (480 : ℝ) * hh1

theorem psiChild663_51 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * ((psiCoefficient 51 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 51) false - psiInput663) - injectiveMoment H (blockExponent (psiExponent 51) true - psiInput663))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (1 : ℤ) reductionProjection11236) (Integer.Sparse.scale (-10 : ℤ) oldProjection280)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 51) false - psiInput663) = canonicalInput19072.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 51) false - psiInput663) =
      Integer.Sparse.eval reductionProjection11236 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound19072 hH))).trans (reductionSound11236 hH)
  have he1 : (blockExponent (psiExponent 51) true - psiInput663) = canonicalInput30776.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (48 : ℝ) * injectiveMoment H (blockExponent (psiExponent 51) true - psiInput663) =
      Integer.Sparse.eval oldProjection280 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30776 hH))).trans (oldProjectionSound280 hH)
  change (480 : ℝ) * (((1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (1 : ℝ) * hh0 + (-10 : ℝ) * hh1

theorem psiChild663_52 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * ((psiCoefficient 52 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 52) false - psiInput663) - injectiveMoment H (blockExponent (psiExponent 52) true - psiInput663))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11989) (Integer.Sparse.scale (3 : ℤ) oldProjection268)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - psiInput663) = canonicalInput19008.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (720 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - psiInput663) =
      Integer.Sparse.eval reductionProjection11989 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound19008 hH))).trans (reductionSound11989 hH)
  have he1 : (blockExponent (psiExponent 52) true - psiInput663) = canonicalInput30775.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) true - psiInput663) =
      Integer.Sparse.eval oldProjection268 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30775 hH))).trans (oldProjectionSound268 hH)
  change (720 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (3 : ℝ) * hh1

theorem psiChild663_53 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * ((psiCoefficient 53 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 53) false - psiInput663) - injectiveMoment H (blockExponent (psiExponent 53) true - psiInput663))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11989) (Integer.Sparse.scale (720 : ℤ) oldProjection184)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - psiInput663) = canonicalInput18939.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (720 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - psiInput663) =
      Integer.Sparse.eval reductionProjection11989 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18939 hH))).trans (reductionSound11989 hH)
  have he1 : (blockExponent (psiExponent 53) true - psiInput663) = canonicalInput30774.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) true - psiInput663) =
      Integer.Sparse.eval oldProjection184 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30774 hH))).trans (oldProjectionSound184 hH)
  change (720 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (720 : ℝ) * hh1

theorem psiChild663_54 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * ((psiCoefficient 54 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 54) false - psiInput663) - injectiveMoment H (blockExponent (psiExponent 54) true - psiInput663))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (1 : ℤ) reductionProjection11236) (Integer.Sparse.scale (-480 : ℤ) oldProjection97)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - psiInput663) = canonicalInput18875.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - psiInput663) =
      Integer.Sparse.eval reductionProjection11236 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18875 hH))).trans (reductionSound11236 hH)
  have he1 : (blockExponent (psiExponent 54) true - psiInput663) = canonicalInput30773.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) true - psiInput663) =
      Integer.Sparse.eval oldProjection97 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30773 hH))).trans (oldProjectionSound97 hH)
  change (480 : ℝ) * (((1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (1 : ℝ) * hh0 + (-480 : ℝ) * hh1

end NoFourMUBs.Step2.SOS.Semantics
