import NoFourMUBs.Step2.SOS.Canonical294
import NoFourMUBs.Step2.SOS.Canonical295
import NoFourMUBs.Step2.SOS.Canonical296
import NoFourMUBs.Step2.SOS.Canonical297
import NoFourMUBs.Step2.SOS.Canonical341
import NoFourMUBs.Step2.SOS.Canonical476
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.PsiRowInputs
import NoFourMUBs.Step2.SOS.Reductions353
import NoFourMUBs.Step2.SOS.Reductions377
import NoFourMUBs.Step2.SOS.Reductions382

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 20000
set_option maxHeartbeats 4000000

theorem psiChild666_50 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 50 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 50) false - psiInput666) - injectiveMoment H (blockExponent (psiExponent 50) true - psiInput666))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11297) (Integer.Sparse.scale (6 : ℤ) oldProjection203)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 50) false - psiInput666) = canonicalInput21828.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 50) false - psiInput666) =
      Integer.Sparse.eval reductionProjection11297 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21828 hH))).trans (reductionSound11297 hH)
  have he1 : (blockExponent (psiExponent 50) true - psiInput666) = canonicalInput30470.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 50) true - psiInput666) =
      Integer.Sparse.eval oldProjection203 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30470 hH))).trans (oldProjectionSound203 hH)
  change (1440 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (6 : ℝ) * hh1

theorem psiChild666_51 {H : CMatrix} (hH : IsHadamard H) :
    (24 : ℝ) * ((psiCoefficient 51 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 51) false - psiInput666) - injectiveMoment H (blockExponent (psiExponent 51) true - psiInput666))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (12 : ℤ) reductionProjection12242) (Integer.Sparse.scale (-1 : ℤ) oldProjection274)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 51) false - psiInput666) = canonicalInput19014.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2 : ℝ) * injectiveMoment H (blockExponent (psiExponent 51) false - psiInput666) =
      Integer.Sparse.eval reductionProjection12242 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound19014 hH))).trans (reductionSound12242 hH)
  have he1 : (blockExponent (psiExponent 51) true - psiInput666) = canonicalInput30469.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 51) true - psiInput666) =
      Integer.Sparse.eval oldProjection274 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30469 hH))).trans (oldProjectionSound274 hH)
  change (24 : ℝ) * (((1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (12 : ℝ) * hh0 + (-1 : ℝ) * hh1

theorem psiChild666_52 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 52 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 52) false - psiInput666) - injectiveMoment H (blockExponent (psiExponent 52) true - psiInput666))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection12064) (Integer.Sparse.scale (12 : ℤ) oldProjection279)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - psiInput666) = canonicalInput18950.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - psiInput666) =
      Integer.Sparse.eval reductionProjection12064 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18950 hH))).trans (reductionSound12064 hH)
  have he1 : (blockExponent (psiExponent 52) true - psiInput666) = canonicalInput30468.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) true - psiInput666) =
      Integer.Sparse.eval oldProjection279 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30468 hH))).trans (oldProjectionSound279 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (12 : ℝ) * hh1

theorem psiChild666_53 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 53 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 53) false - psiInput666) - injectiveMoment H (blockExponent (psiExponent 53) true - psiInput666))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection12064) (Integer.Sparse.scale (2880 : ℤ) oldProjection202)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - psiInput666) = canonicalInput18881.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - psiInput666) =
      Integer.Sparse.eval reductionProjection12064 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18881 hH))).trans (reductionSound12064 hH)
  have he1 : (blockExponent (psiExponent 53) true - psiInput666) = canonicalInput30467.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) true - psiInput666) =
      Integer.Sparse.eval oldProjection202 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30467 hH))).trans (oldProjectionSound202 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (2880 : ℝ) * hh1

theorem psiChild666_54 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * ((psiCoefficient 54 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 54) false - psiInput666) - injectiveMoment H (blockExponent (psiExponent 54) true - psiInput666))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (1 : ℤ) reductionProjection12242) (Integer.Sparse.scale (-2 : ℤ) oldProjection212)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - psiInput666) = canonicalInput18817.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - psiInput666) =
      Integer.Sparse.eval reductionProjection12242 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18817 hH))).trans (reductionSound12242 hH)
  have he1 : (blockExponent (psiExponent 54) true - psiInput666) = canonicalInput30466.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) true - psiInput666) =
      Integer.Sparse.eval oldProjection212 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30466 hH))).trans (oldProjectionSound212 hH)
  change (2 : ℝ) * (((1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (1 : ℝ) * hh0 + (-2 : ℝ) * hh1

end NoFourMUBs.Step2.SOS.Semantics
