import NoFourMUBs.Step2.SOS.Canonical422
import NoFourMUBs.Step2.SOS.Canonical476
import NoFourMUBs.Step2.SOS.Canonical477
import NoFourMUBs.Step2.SOS.Canonical482
import NoFourMUBs.Step2.SOS.Canonical502
import NoFourMUBs.Step2.SOS.Canonical504
import NoFourMUBs.Step2.SOS.Canonical506
import NoFourMUBs.Step2.SOS.Canonical514
import NoFourMUBs.Step2.SOS.Canonical517
import NoFourMUBs.Step2.SOS.Canonical521
import NoFourMUBs.Step2.SOS.Canonical524
import NoFourMUBs.Step2.SOS.Canonical531
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections036
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

theorem psiChild662_20 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 20 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 20) false - psiInput662) - injectiveMoment H (blockExponent (psiExponent 20) true - psiInput662))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-5 : ℤ) reductionProjection12093) (Integer.Sparse.scale (12 : ℤ) oldProjection283)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 20) false - psiInput662) = canonicalInput27014.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (576 : ℝ) * injectiveMoment H (blockExponent (psiExponent 20) false - psiInput662) =
      Integer.Sparse.eval reductionProjection12093 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27014 hH))).trans (reductionSound12093 hH)
  have he1 : (blockExponent (psiExponent 20) true - psiInput662) = canonicalInput30479.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 20) true - psiInput662) =
      Integer.Sparse.eval oldProjection283 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30479 hH))).trans (oldProjectionSound283 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (12 : ℝ) * hh1

theorem psiChild662_21 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * ((psiCoefficient 21 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 21) false - psiInput662) - injectiveMoment H (blockExponent (psiExponent 21) true - psiInput662))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (1 : ℤ) reductionProjection7170) (Integer.Sparse.scale (-144 : ℤ) oldProjection161)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - psiInput662) = canonicalInput33986.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (144 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - psiInput662) =
      Integer.Sparse.eval reductionProjection7170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33986 hH))).trans (reductionSound7170 hH)
  have he1 : (blockExponent (psiExponent 21) true - psiInput662) = canonicalInput30568.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) true - psiInput662) =
      Integer.Sparse.eval oldProjection161 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30568 hH))).trans (oldProjectionSound161 hH)
  change (144 : ℝ) * (((1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (1 : ℝ) * hh0 + (-144 : ℝ) * hh1

theorem psiChild662_22 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 22 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 22) false - psiInput662) - injectiveMoment H (blockExponent (psiExponent 22) true - psiInput662))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection12075) (Integer.Sparse.scale (-180 : ℤ) oldProjection215)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - psiInput662) = canonicalInput33571.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - psiInput662) =
      Integer.Sparse.eval reductionProjection12075 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33571 hH))).trans (reductionSound12075 hH)
  have he1 : (blockExponent (psiExponent 22) true - psiInput662) = canonicalInput30549.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) true - psiInput662) =
      Integer.Sparse.eval oldProjection215 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30549 hH))).trans (oldProjectionSound215 hH)
  change (1440 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-180 : ℝ) * hh1

theorem psiChild662_23 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * ((psiCoefficient 23 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 23) false - psiInput662) - injectiveMoment H (blockExponent (psiExponent 23) true - psiInput662))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection12093) (Integer.Sparse.scale (576 : ℤ) oldProjection111)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 23) false - psiInput662) = canonicalInput33384.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (576 : ℝ) * injectiveMoment H (blockExponent (psiExponent 23) false - psiInput662) =
      Integer.Sparse.eval reductionProjection12093 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33384 hH))).trans (reductionSound12093 hH)
  have he1 : (blockExponent (psiExponent 23) true - psiInput662) = canonicalInput30545.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 23) true - psiInput662) =
      Integer.Sparse.eval oldProjection111 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30545 hH))).trans (oldProjectionSound111 hH)
  change (576 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (576 : ℝ) * hh1

theorem psiChild662_24 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * ((psiCoefficient 24 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 24) false - psiInput662) - injectiveMoment H (blockExponent (psiExponent 24) true - psiInput662))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection12093) (Integer.Sparse.scale (24 : ℤ) oldProjection187)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 24) false - psiInput662) = canonicalInput33124.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (576 : ℝ) * injectiveMoment H (blockExponent (psiExponent 24) false - psiInput662) =
      Integer.Sparse.eval reductionProjection12093 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33124 hH))).trans (reductionSound12093 hH)
  have he1 : (blockExponent (psiExponent 24) true - psiInput662) = canonicalInput30533.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 24) true - psiInput662) =
      Integer.Sparse.eval oldProjection187 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30533 hH))).trans (oldProjectionSound187 hH)
  change (576 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (24 : ℝ) * hh1

theorem psiChild662_25 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 25 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 25) false - psiInput662) - injectiveMoment H (blockExponent (psiExponent 25) true - psiInput662))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection12075) (Integer.Sparse.scale (-18 : ℤ) oldProjection261)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - psiInput662) = canonicalInput32939.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - psiInput662) =
      Integer.Sparse.eval reductionProjection12075 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32939 hH))).trans (reductionSound12075 hH)
  have he1 : (blockExponent (psiExponent 25) true - psiInput662) = canonicalInput30530.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) true - psiInput662) =
      Integer.Sparse.eval oldProjection261 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30530 hH))).trans (oldProjectionSound261 hH)
  change (1440 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-18 : ℝ) * hh1

theorem psiChild662_26 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 26 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 26) false - psiInput662) - injectiveMoment H (blockExponent (psiExponent 26) true - psiInput662))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection12075) (Integer.Sparse.scale (-1440 : ℤ) oldProjection229)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 26) false - psiInput662) = canonicalInput32386.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 26) false - psiInput662) =
      Integer.Sparse.eval reductionProjection12075 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32386 hH))).trans (reductionSound12075 hH)
  have he1 : (blockExponent (psiExponent 26) true - psiInput662) = canonicalInput30512.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (3 : ℝ) * injectiveMoment H (blockExponent (psiExponent 26) true - psiInput662) =
      Integer.Sparse.eval oldProjection229 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30512 hH))).trans (oldProjectionSound229 hH)
  change (1440 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-1440 : ℝ) * hh1

theorem psiChild662_27 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 27 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 27) false - psiInput662) - injectiveMoment H (blockExponent (psiExponent 27) true - psiInput662))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection11239) (Integer.Sparse.scale (12 : ℤ) oldProjection210)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 27) false - psiInput662) = canonicalInput32260.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 27) false - psiInput662) =
      Integer.Sparse.eval reductionProjection11239 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32260 hH))).trans (reductionSound11239 hH)
  have he1 : (blockExponent (psiExponent 27) true - psiInput662) = canonicalInput30509.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 27) true - psiInput662) =
      Integer.Sparse.eval oldProjection210 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30509 hH))).trans (oldProjectionSound210 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (12 : ℝ) * hh1

theorem psiChild662_28 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 28 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 28) false - psiInput662) - injectiveMoment H (blockExponent (psiExponent 28) true - psiInput662))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) oldProjection2758) (Integer.Sparse.scale (2880 : ℤ) oldProjection36)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - psiInput662) = canonicalInput30899.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - psiInput662) =
      Integer.Sparse.eval oldProjection2758 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30899 hH))).trans (oldProjectionSound2758 hH)
  have he1 : (blockExponent (psiExponent 28) true - psiInput662) = canonicalInput30498.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) true - psiInput662) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30498 hH))).trans (oldProjectionSound36 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (2880 : ℝ) * hh1

theorem psiChild662_29 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * ((psiCoefficient 29 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 29) false - psiInput662) - injectiveMoment H (blockExponent (psiExponent 29) true - psiInput662))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection12093) (Integer.Sparse.scale (576 : ℤ) oldProjection276)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - psiInput662) = canonicalInput32134.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (576 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - psiInput662) =
      Integer.Sparse.eval reductionProjection12093 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32134 hH))).trans (reductionSound12093 hH)
  have he1 : (blockExponent (psiExponent 29) true - psiInput662) = canonicalInput30506.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) true - psiInput662) =
      Integer.Sparse.eval oldProjection276 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30506 hH))).trans (oldProjectionSound276 hH)
  change (576 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (576 : ℝ) * hh1

end NoFourMUBs.Step2.SOS.Semantics
