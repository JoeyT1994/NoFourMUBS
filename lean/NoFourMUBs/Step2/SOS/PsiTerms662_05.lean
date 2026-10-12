import NoFourMUBs.Step2.SOS.Canonical294
import NoFourMUBs.Step2.SOS.Canonical295
import NoFourMUBs.Step2.SOS.Canonical296
import NoFourMUBs.Step2.SOS.Canonical297
import NoFourMUBs.Step2.SOS.Canonical341
import NoFourMUBs.Step2.SOS.Canonical475
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.PsiRowInputs
import NoFourMUBs.Step2.SOS.Reductions224
import NoFourMUBs.Step2.SOS.Reductions351
import NoFourMUBs.Step2.SOS.Reductions377

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 20000
set_option maxHeartbeats 4000000

theorem psiChild662_50 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 50 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 50) false - psiInput662) - injectiveMoment H (blockExponent (psiExponent 50) true - psiInput662))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-5 : ℤ) reductionProjection11262) (Integer.Sparse.scale (36 : ℤ) oldProjection61)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 50) false - psiInput662) = canonicalInput21827.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (576 : ℝ) * injectiveMoment H (blockExponent (psiExponent 50) false - psiInput662) =
      Integer.Sparse.eval reductionProjection11262 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21827 hH))).trans (reductionSound11262 hH)
  have he1 : (blockExponent (psiExponent 50) true - psiInput662) = canonicalInput30442.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 50) true - psiInput662) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30442 hH))).trans (oldProjectionSound61 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (36 : ℝ) * hh1

theorem psiChild662_51 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * ((psiCoefficient 51 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 51) false - psiInput662) - injectiveMoment H (blockExponent (psiExponent 51) true - psiInput662))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (1 : ℤ) reductionProjection7170) (Integer.Sparse.scale (-144 : ℤ) oldProjection159)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 51) false - psiInput662) = canonicalInput19013.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (144 : ℝ) * injectiveMoment H (blockExponent (psiExponent 51) false - psiInput662) =
      Integer.Sparse.eval reductionProjection7170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound19013 hH))).trans (reductionSound7170 hH)
  have he1 : (blockExponent (psiExponent 51) true - psiInput662) = canonicalInput30440.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 51) true - psiInput662) =
      Integer.Sparse.eval oldProjection159 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30440 hH))).trans (oldProjectionSound159 hH)
  change (144 : ℝ) * (((1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (1 : ℝ) * hh0 + (-144 : ℝ) * hh1

theorem psiChild662_52 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * ((psiCoefficient 52 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 52) false - psiInput662) - injectiveMoment H (blockExponent (psiExponent 52) true - psiInput662))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection12093) (Integer.Sparse.scale (576 : ℤ) oldProjection276)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - psiInput662) = canonicalInput18949.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (576 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - psiInput662) =
      Integer.Sparse.eval reductionProjection12093 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18949 hH))).trans (reductionSound12093 hH)
  have he1 : (blockExponent (psiExponent 52) true - psiInput662) = canonicalInput30439.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) true - psiInput662) =
      Integer.Sparse.eval oldProjection276 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30439 hH))).trans (oldProjectionSound276 hH)
  change (576 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (576 : ℝ) * hh1

theorem psiChild662_53 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 53 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 53) false - psiInput662) - injectiveMoment H (blockExponent (psiExponent 53) true - psiInput662))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-5 : ℤ) reductionProjection12093) (Integer.Sparse.scale (12 : ℤ) oldProjection283)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - psiInput662) = canonicalInput18880.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (576 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - psiInput662) =
      Integer.Sparse.eval reductionProjection12093 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18880 hH))).trans (reductionSound12093 hH)
  have he1 : (blockExponent (psiExponent 53) true - psiInput662) = canonicalInput30438.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) true - psiInput662) =
      Integer.Sparse.eval oldProjection283 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30438 hH))).trans (oldProjectionSound283 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (12 : ℝ) * hh1

theorem psiChild662_54 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * ((psiCoefficient 54 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 54) false - psiInput662) - injectiveMoment H (blockExponent (psiExponent 54) true - psiInput662))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (5 : ℤ) reductionProjection7170) (Integer.Sparse.scale (-3 : ℤ) oldProjection283)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - psiInput662) = canonicalInput18816.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (144 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - psiInput662) =
      Integer.Sparse.eval reductionProjection7170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18816 hH))).trans (reductionSound7170 hH)
  have he1 : (blockExponent (psiExponent 54) true - psiInput662) = canonicalInput30437.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) true - psiInput662) =
      Integer.Sparse.eval oldProjection283 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30437 hH))).trans (oldProjectionSound283 hH)
  change (720 : ℝ) * (((1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (5 : ℝ) * hh0 + (-3 : ℝ) * hh1

end NoFourMUBs.Step2.SOS.Semantics
