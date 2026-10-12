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
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections037
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.PsiRowInputs
import NoFourMUBs.Step2.SOS.Reductions230
import NoFourMUBs.Step2.SOS.Reductions381
import NoFourMUBs.Step2.SOS.Reductions383

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 20000
set_option maxHeartbeats 4000000

theorem psiChild659_20 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 20 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 20) false - psiInput659) - injectiveMoment H (blockExponent (psiExponent 20) true - psiInput659))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection12261) (Integer.Sparse.scale (12 : ℤ) oldProjection288)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 20) false - psiInput659) = canonicalInput27013.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 20) false - psiInput659) =
      Integer.Sparse.eval reductionProjection12261 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27013 hH))).trans (reductionSound12261 hH)
  have he1 : (blockExponent (psiExponent 20) true - psiInput659) = canonicalInput30477.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 20) true - psiInput659) =
      Integer.Sparse.eval oldProjection288 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30477 hH))).trans (oldProjectionSound288 hH)
  change (1440 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (12 : ℝ) * hh1

theorem psiChild659_21 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * ((psiCoefficient 21 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 21) false - psiInput659) - injectiveMoment H (blockExponent (psiExponent 21) true - psiInput659))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (1 : ℤ) reductionProjection7366) (Integer.Sparse.scale (-360 : ℤ) oldProjection134)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - psiInput659) = canonicalInput33985.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - psiInput659) =
      Integer.Sparse.eval reductionProjection7366 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33985 hH))).trans (reductionSound7366 hH)
  have he1 : (blockExponent (psiExponent 21) true - psiInput659) = canonicalInput30564.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) true - psiInput659) =
      Integer.Sparse.eval oldProjection134 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30564 hH))).trans (oldProjectionSound134 hH)
  change (360 : ℝ) * (((1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (1 : ℝ) * hh0 + (-360 : ℝ) * hh1

theorem psiChild659_22 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * ((psiCoefficient 22 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 22) false - psiInput659) - injectiveMoment H (blockExponent (psiExponent 22) true - psiInput659))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (30 : ℤ) reductionProjection12219) (Integer.Sparse.scale (-9 : ℤ) oldProjection181)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - psiInput659) = canonicalInput33570.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (72 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - psiInput659) =
      Integer.Sparse.eval reductionProjection12219 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33570 hH))).trans (reductionSound12219 hH)
  have he1 : (blockExponent (psiExponent 22) true - psiInput659) = canonicalInput30546.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) true - psiInput659) =
      Integer.Sparse.eval oldProjection181 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30546 hH))).trans (oldProjectionSound181 hH)
  change (720 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-9 : ℝ) * hh1

theorem psiChild659_23 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 23 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 23) false - psiInput659) - injectiveMoment H (blockExponent (psiExponent 23) true - psiInput659))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection12261) (Integer.Sparse.scale (6 : ℤ) oldProjection261)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 23) false - psiInput659) = canonicalInput33383.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 23) false - psiInput659) =
      Integer.Sparse.eval reductionProjection12261 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33383 hH))).trans (reductionSound12261 hH)
  have he1 : (blockExponent (psiExponent 23) true - psiInput659) = canonicalInput30542.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 23) true - psiInput659) =
      Integer.Sparse.eval oldProjection261 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30542 hH))).trans (oldProjectionSound261 hH)
  change (1440 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (6 : ℝ) * hh1

theorem psiChild659_24 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 24 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 24) false - psiInput659) - injectiveMoment H (blockExponent (psiExponent 24) true - psiInput659))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection12261) (Integer.Sparse.scale (6 : ℤ) oldProjection261)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 24) false - psiInput659) = canonicalInput33123.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 24) false - psiInput659) =
      Integer.Sparse.eval reductionProjection12261 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33123 hH))).trans (reductionSound12261 hH)
  have he1 : (blockExponent (psiExponent 24) true - psiInput659) = canonicalInput30530.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 24) true - psiInput659) =
      Integer.Sparse.eval oldProjection261 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30530 hH))).trans (oldProjectionSound261 hH)
  change (1440 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (6 : ℝ) * hh1

theorem psiChild659_25 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * ((psiCoefficient 25 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 25) false - psiInput659) - injectiveMoment H (blockExponent (psiExponent 25) true - psiInput659))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (30 : ℤ) reductionProjection12219) (Integer.Sparse.scale (-9 : ℤ) oldProjection181)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - psiInput659) = canonicalInput32938.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (72 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - psiInput659) =
      Integer.Sparse.eval reductionProjection12219 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32938 hH))).trans (reductionSound12219 hH)
  have he1 : (blockExponent (psiExponent 25) true - psiInput659) = canonicalInput30527.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) true - psiInput659) =
      Integer.Sparse.eval oldProjection181 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30527 hH))).trans (oldProjectionSound181 hH)
  change (720 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-9 : ℝ) * hh1

theorem psiChild659_26 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * ((psiCoefficient 26 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 26) false - psiInput659) - injectiveMoment H (blockExponent (psiExponent 26) true - psiInput659))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (30 : ℤ) reductionProjection12219) (Integer.Sparse.scale (-9 : ℤ) oldProjection284)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 26) false - psiInput659) = canonicalInput32385.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (72 : ℝ) * injectiveMoment H (blockExponent (psiExponent 26) false - psiInput659) =
      Integer.Sparse.eval reductionProjection12219 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32385 hH))).trans (reductionSound12219 hH)
  have he1 : (blockExponent (psiExponent 26) true - psiInput659) = canonicalInput30510.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 26) true - psiInput659) =
      Integer.Sparse.eval oldProjection284 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30510 hH))).trans (oldProjectionSound284 hH)
  change (720 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-9 : ℝ) * hh1

theorem psiChild659_27 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * ((psiCoefficient 27 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 27) false - psiInput659) - injectiveMoment H (blockExponent (psiExponent 27) true - psiInput659))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-4 : ℤ) oldProjection2851) (Integer.Sparse.scale (6 : ℤ) oldProjection283)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 27) false - psiInput659) = canonicalInput32259.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 27) false - psiInput659) =
      Integer.Sparse.eval oldProjection2851 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32259 hH))).trans (oldProjectionSound2851 hH)
  have he1 : (blockExponent (psiExponent 27) true - psiInput659) = canonicalInput30507.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 27) true - psiInput659) =
      Integer.Sparse.eval oldProjection283 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30507 hH))).trans (oldProjectionSound283 hH)
  change (720 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-4 : ℝ) * hh0 + (6 : ℝ) * hh1

theorem psiChild659_28 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * ((psiCoefficient 28 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 28) false - psiInput659) - injectiveMoment H (blockExponent (psiExponent 28) true - psiInput659))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) oldProjection1291) (Integer.Sparse.scale (6 : ℤ) oldProjection62)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - psiInput659) = canonicalInput30898.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - psiInput659) =
      Integer.Sparse.eval oldProjection1291 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30898 hH))).trans (oldProjectionSound1291 hH)
  have he1 : (blockExponent (psiExponent 28) true - psiInput659) = canonicalInput30496.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) true - psiInput659) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30496 hH))).trans (oldProjectionSound62 hH)
  change (240 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (6 : ℝ) * hh1

theorem psiChild659_29 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 29 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 29) false - psiInput659) - injectiveMoment H (blockExponent (psiExponent 29) true - psiInput659))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection12261) (Integer.Sparse.scale (12 : ℤ) oldProjection288)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - psiInput659) = canonicalInput32133.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - psiInput659) =
      Integer.Sparse.eval reductionProjection12261 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32133 hH))).trans (reductionSound12261 hH)
  have he1 : (blockExponent (psiExponent 29) true - psiInput659) = canonicalInput30504.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) true - psiInput659) =
      Integer.Sparse.eval oldProjection288 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30504 hH))).trans (oldProjectionSound288 hH)
  change (1440 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (12 : ℝ) * hh1

end NoFourMUBs.Step2.SOS.Semantics
