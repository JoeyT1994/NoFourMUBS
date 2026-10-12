import NoFourMUBs.Step2.SOS.Canonical342
import NoFourMUBs.Step2.SOS.Canonical343
import NoFourMUBs.Step2.SOS.Canonical344
import NoFourMUBs.Step2.SOS.Canonical345
import NoFourMUBs.Step2.SOS.Canonical346
import NoFourMUBs.Step2.SOS.Canonical359
import NoFourMUBs.Step2.SOS.Canonical360
import NoFourMUBs.Step2.SOS.Canonical361
import NoFourMUBs.Step2.SOS.Canonical362
import NoFourMUBs.Step2.SOS.Canonical368
import NoFourMUBs.Step2.SOS.Canonical479
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.PsiRowInputs
import NoFourMUBs.Step2.SOS.Reductions317
import NoFourMUBs.Step2.SOS.Reductions353
import NoFourMUBs.Step2.SOS.Reductions377

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 20000
set_option maxHeartbeats 4000000

theorem psiChild665_40 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 40 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 40) false - psiInput665) - injectiveMoment H (blockExponent (psiExponent 40) true - psiInput665))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection11305) (Integer.Sparse.scale (2880 : ℤ) oldProjection4)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - psiInput665) = canonicalInput23187.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - psiInput665) =
      Integer.Sparse.eval reductionProjection11305 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23187 hH))).trans (reductionSound11305 hH)
  have he1 : (blockExponent (psiExponent 40) true - psiInput665) = canonicalInput30704.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) true - psiInput665) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30704 hH))).trans (oldProjectionSound4 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (2880 : ℝ) * hh1

theorem psiChild665_41 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 41 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 41) false - psiInput665) - injectiveMoment H (blockExponent (psiExponent 41) true - psiInput665))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection11305) (Integer.Sparse.scale (36 : ℤ) oldProjection62)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 41) false - psiInput665) = canonicalInput23122.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 41) false - psiInput665) =
      Integer.Sparse.eval reductionProjection11305 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23122 hH))).trans (reductionSound11305 hH)
  have he1 : (blockExponent (psiExponent 41) true - psiInput665) = canonicalInput30700.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 41) true - psiInput665) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30700 hH))).trans (oldProjectionSound62 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (36 : ℝ) * hh1

theorem psiChild665_42 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 42 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 42) false - psiInput665) - injectiveMoment H (blockExponent (psiExponent 42) true - psiInput665))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11308) (Integer.Sparse.scale (36 : ℤ) oldProjection56)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 42) false - psiInput665) = canonicalInput22202.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 42) false - psiInput665) =
      Integer.Sparse.eval reductionProjection11308 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22202 hH))).trans (reductionSound11308 hH)
  have he1 : (blockExponent (psiExponent 42) true - psiInput665) = canonicalInput30694.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 42) true - psiInput665) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30694 hH))).trans (oldProjectionSound56 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (36 : ℝ) * hh1

theorem psiChild665_43 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 43 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 43) false - psiInput665) - injectiveMoment H (blockExponent (psiExponent 43) true - psiInput665))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection11305) (Integer.Sparse.scale (36 : ℤ) oldProjection62)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - psiInput665) = canonicalInput22137.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - psiInput665) =
      Integer.Sparse.eval reductionProjection11305 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22137 hH))).trans (reductionSound11305 hH)
  have he1 : (blockExponent (psiExponent 43) true - psiInput665) = canonicalInput30690.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) true - psiInput665) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30690 hH))).trans (oldProjectionSound62 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (36 : ℝ) * hh1

theorem psiChild665_44 {H : CMatrix} (hH : IsHadamard H) :
    (960 : ℝ) * ((psiCoefficient 44 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 44) false - psiInput665) - injectiveMoment H (blockExponent (psiExponent 44) true - psiInput665))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection12073) (Integer.Sparse.scale (-2880 : ℤ) oldProjection44)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - psiInput665) = canonicalInput22011.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (960 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - psiInput665) =
      Integer.Sparse.eval reductionProjection12073 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (960 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22011 hH))).trans (reductionSound12073 hH)
  have he1 : (blockExponent (psiExponent 44) true - psiInput665) = canonicalInput30686.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) true - psiInput665) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30686 hH))).trans (oldProjectionSound44 hH)
  change (960 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-2880 : ℝ) * hh1

theorem psiChild665_45 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * ((psiCoefficient 45 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 45) false - psiInput665) - injectiveMoment H (blockExponent (psiExponent 45) true - psiInput665))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (16 : ℤ) reductionProjection10163) (Integer.Sparse.scale (-1 : ℤ) oldProjection57)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - psiInput665) = canonicalInput23553.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - psiInput665) =
      Integer.Sparse.eval reductionProjection10163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23553 hH))).trans (reductionSound10163 hH)
  have he1 : (blockExponent (psiExponent 45) true - psiInput665) = canonicalInput30710.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) true - psiInput665) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30710 hH))).trans (oldProjectionSound57 hH)
  change (16 : ℝ) * (((1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (16 : ℝ) * hh0 + (-1 : ℝ) * hh1

theorem psiChild665_46 {H : CMatrix} (hH : IsHadamard H) :
    (960 : ℝ) * ((psiCoefficient 46 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 46) false - psiInput665) - injectiveMoment H (blockExponent (psiExponent 46) true - psiInput665))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection12073) (Integer.Sparse.scale (-144 : ℤ) oldProjection11)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 46) false - psiInput665) = canonicalInput23061.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (960 : ℝ) * injectiveMoment H (blockExponent (psiExponent 46) false - psiInput665) =
      Integer.Sparse.eval reductionProjection12073 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (960 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23061 hH))).trans (reductionSound12073 hH)
  have he1 : (blockExponent (psiExponent 46) true - psiInput665) = canonicalInput30699.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 46) true - psiInput665) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30699 hH))).trans (oldProjectionSound11 hH)
  change (960 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-144 : ℝ) * hh1

theorem psiChild665_47 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 47 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 47) false - psiInput665) - injectiveMoment H (blockExponent (psiExponent 47) true - psiInput665))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11308) (Integer.Sparse.scale (36 : ℤ) oldProjection62)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 47) false - psiInput665) = canonicalInput22996.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 47) false - psiInput665) =
      Integer.Sparse.eval reductionProjection11308 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22996 hH))).trans (reductionSound11308 hH)
  have he1 : (blockExponent (psiExponent 47) true - psiInput665) = canonicalInput30696.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 47) true - psiInput665) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30696 hH))).trans (oldProjectionSound62 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (36 : ℝ) * hh1

theorem psiChild665_48 {H : CMatrix} (hH : IsHadamard H) :
    (960 : ℝ) * ((psiCoefficient 48 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 48) false - psiInput665) - injectiveMoment H (blockExponent (psiExponent 48) true - psiInput665))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection12073) (Integer.Sparse.scale (-144 : ℤ) oldProjection11)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 48) false - psiInput665) = canonicalInput22076.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (960 : ℝ) * injectiveMoment H (blockExponent (psiExponent 48) false - psiInput665) =
      Integer.Sparse.eval reductionProjection12073 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (960 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22076 hH))).trans (reductionSound12073 hH)
  have he1 : (blockExponent (psiExponent 48) true - psiInput665) = canonicalInput30689.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 48) true - psiInput665) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30689 hH))).trans (oldProjectionSound11 hH)
  change (960 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-144 : ℝ) * hh1

theorem psiChild665_49 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 49 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 49) false - psiInput665) - injectiveMoment H (blockExponent (psiExponent 49) true - psiInput665))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection11305) (Integer.Sparse.scale (36 : ℤ) oldProjection61)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - psiInput665) = canonicalInput21950.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - psiInput665) =
      Integer.Sparse.eval reductionProjection11305 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21950 hH))).trans (reductionSound11305 hH)
  have he1 : (blockExponent (psiExponent 49) true - psiInput665) = canonicalInput30685.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) true - psiInput665) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30685 hH))).trans (oldProjectionSound61 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (36 : ℝ) * hh1

end NoFourMUBs.Step2.SOS.Semantics
