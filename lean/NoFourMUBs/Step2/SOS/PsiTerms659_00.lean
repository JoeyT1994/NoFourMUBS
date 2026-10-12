import NoFourMUBs.Step2.SOS.Canonical477
import NoFourMUBs.Step2.SOS.Canonical516
import NoFourMUBs.Step2.SOS.Canonical518
import NoFourMUBs.Step2.SOS.Canonical519
import NoFourMUBs.Step2.SOS.Canonical522
import NoFourMUBs.Step2.SOS.Canonical523
import NoFourMUBs.Step2.SOS.Canonical525
import NoFourMUBs.Step2.SOS.Canonical526
import NoFourMUBs.Step2.SOS.Canonical531
import NoFourMUBs.Step2.SOS.Canonical532
import NoFourMUBs.Step2.SOS.Canonical533
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.PsiRowInputs
import NoFourMUBs.Step2.SOS.Reductions230
import NoFourMUBs.Step2.SOS.Reductions361
import NoFourMUBs.Step2.SOS.Reductions381
import NoFourMUBs.Step2.SOS.Reductions383

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 20000
set_option maxHeartbeats 4000000

theorem psiChild659_0 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * ((psiCoefficient 0 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 0) false - psiInput659) - injectiveMoment H (blockExponent (psiExponent 0) true - psiInput659))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (1 : ℤ) reductionProjection7366) (Integer.Sparse.scale (-360 : ℤ) oldProjection134)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - psiInput659) = canonicalInput34168.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - psiInput659) =
      Integer.Sparse.eval reductionProjection7366 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34168 hH))).trans (reductionSound7366 hH)
  have he1 : (blockExponent (psiExponent 0) true - psiInput659) = canonicalInput30567.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) true - psiInput659) =
      Integer.Sparse.eval oldProjection134 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30567 hH))).trans (oldProjectionSound134 hH)
  change (360 : ℝ) * (((1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (1 : ℝ) * hh0 + (-360 : ℝ) * hh1

theorem psiChild659_1 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 1 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 1) false - psiInput659) - injectiveMoment H (blockExponent (psiExponent 1) true - psiInput659))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11564) (Integer.Sparse.scale (6 : ℤ) oldProjection150)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 1) false - psiInput659) = canonicalInput34107.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 1) false - psiInput659) =
      Integer.Sparse.eval reductionProjection11564 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34107 hH))).trans (reductionSound11564 hH)
  have he1 : (blockExponent (psiExponent 1) true - psiInput659) = canonicalInput30566.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 1) true - psiInput659) =
      Integer.Sparse.eval oldProjection150 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30566 hH))).trans (oldProjectionSound150 hH)
  change (1440 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (6 : ℝ) * hh1

theorem psiChild659_2 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 2 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 2) false - psiInput659) - injectiveMoment H (blockExponent (psiExponent 2) true - psiInput659))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection12261) (Integer.Sparse.scale (6 : ℤ) oldProjection261)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 2) false - psiInput659) = canonicalInput33692.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 2) false - psiInput659) =
      Integer.Sparse.eval reductionProjection12261 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33692 hH))).trans (reductionSound12261 hH)
  have he1 : (blockExponent (psiExponent 2) true - psiInput659) = canonicalInput30548.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 2) true - psiInput659) =
      Integer.Sparse.eval oldProjection261 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30548 hH))).trans (oldProjectionSound261 hH)
  change (1440 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (6 : ℝ) * hh1

theorem psiChild659_3 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * ((psiCoefficient 3 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 3) false - psiInput659) - injectiveMoment H (blockExponent (psiExponent 3) true - psiInput659))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (30 : ℤ) reductionProjection12219) (Integer.Sparse.scale (-9 : ℤ) oldProjection181)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - psiInput659) = canonicalInput33505.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (72 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - psiInput659) =
      Integer.Sparse.eval reductionProjection12219 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33505 hH))).trans (reductionSound12219 hH)
  have he1 : (blockExponent (psiExponent 3) true - psiInput659) = canonicalInput30544.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) true - psiInput659) =
      Integer.Sparse.eval oldProjection181 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30544 hH))).trans (oldProjectionSound181 hH)
  change (720 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-9 : ℝ) * hh1

theorem psiChild659_4 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * ((psiCoefficient 4 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 4) false - psiInput659) - injectiveMoment H (blockExponent (psiExponent 4) true - psiInput659))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (30 : ℤ) reductionProjection12219) (Integer.Sparse.scale (-9 : ℤ) oldProjection181)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 4) false - psiInput659) = canonicalInput33245.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (72 : ℝ) * injectiveMoment H (blockExponent (psiExponent 4) false - psiInput659) =
      Integer.Sparse.eval reductionProjection12219 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33245 hH))).trans (reductionSound12219 hH)
  have he1 : (blockExponent (psiExponent 4) true - psiInput659) = canonicalInput30532.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 4) true - psiInput659) =
      Integer.Sparse.eval oldProjection181 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30532 hH))).trans (oldProjectionSound181 hH)
  change (720 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-9 : ℝ) * hh1

theorem psiChild659_5 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 5 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 5) false - psiInput659) - injectiveMoment H (blockExponent (psiExponent 5) true - psiInput659))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection12261) (Integer.Sparse.scale (6 : ℤ) oldProjection261)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 5) false - psiInput659) = canonicalInput33060.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 5) false - psiInput659) =
      Integer.Sparse.eval reductionProjection12261 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33060 hH))).trans (reductionSound12261 hH)
  have he1 : (blockExponent (psiExponent 5) true - psiInput659) = canonicalInput30529.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 5) true - psiInput659) =
      Integer.Sparse.eval oldProjection261 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30529 hH))).trans (oldProjectionSound261 hH)
  change (1440 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (6 : ℝ) * hh1

theorem psiChild659_6 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 6 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 6) false - psiInput659) - injectiveMoment H (blockExponent (psiExponent 6) true - psiInput659))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11564) (Integer.Sparse.scale (6 : ℤ) oldProjection150)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - psiInput659) = canonicalInput34046.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - psiInput659) =
      Integer.Sparse.eval reductionProjection11564 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34046 hH))).trans (reductionSound11564 hH)
  have he1 : (blockExponent (psiExponent 6) true - psiInput659) = canonicalInput30565.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) true - psiInput659) =
      Integer.Sparse.eval oldProjection150 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30565 hH))).trans (oldProjectionSound150 hH)
  change (1440 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (6 : ℝ) * hh1

theorem psiChild659_7 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * ((psiCoefficient 7 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 7) false - psiInput659) - injectiveMoment H (blockExponent (psiExponent 7) true - psiInput659))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) oldProjection1291) (Integer.Sparse.scale (6 : ℤ) oldProjection56)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 7) false - psiInput659) = canonicalInput33631.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 7) false - psiInput659) =
      Integer.Sparse.eval oldProjection1291 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33631 hH))).trans (oldProjectionSound1291 hH)
  have he1 : (blockExponent (psiExponent 7) true - psiInput659) = canonicalInput30547.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 7) true - psiInput659) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30547 hH))).trans (oldProjectionSound56 hH)
  change (240 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (6 : ℝ) * hh1

theorem psiChild659_8 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * ((psiCoefficient 8 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 8) false - psiInput659) - injectiveMoment H (blockExponent (psiExponent 8) true - psiInput659))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) oldProjection1291) (Integer.Sparse.scale (6 : ℤ) oldProjection56)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 8) false - psiInput659) = canonicalInput33444.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 8) false - psiInput659) =
      Integer.Sparse.eval oldProjection1291 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33444 hH))).trans (oldProjectionSound1291 hH)
  have he1 : (blockExponent (psiExponent 8) true - psiInput659) = canonicalInput30543.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 8) true - psiInput659) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30543 hH))).trans (oldProjectionSound56 hH)
  change (240 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (6 : ℝ) * hh1

theorem psiChild659_9 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * ((psiCoefficient 9 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 9) false - psiInput659) - injectiveMoment H (blockExponent (psiExponent 9) true - psiInput659))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) oldProjection1291) (Integer.Sparse.scale (6 : ℤ) oldProjection56)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 9) false - psiInput659) = canonicalInput33184.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 9) false - psiInput659) =
      Integer.Sparse.eval oldProjection1291 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33184 hH))).trans (oldProjectionSound1291 hH)
  have he1 : (blockExponent (psiExponent 9) true - psiInput659) = canonicalInput30531.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 9) true - psiInput659) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30531 hH))).trans (oldProjectionSound56 hH)
  change (240 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (6 : ℝ) * hh1

end NoFourMUBs.Step2.SOS.Semantics
