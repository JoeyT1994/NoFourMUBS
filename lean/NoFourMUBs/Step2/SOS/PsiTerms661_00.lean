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
import NoFourMUBs.Step2.SOS.Reductions224
import NoFourMUBs.Step2.SOS.Reductions349
import NoFourMUBs.Step2.SOS.Reductions351
import NoFourMUBs.Step2.SOS.Reductions377

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 20000
set_option maxHeartbeats 4000000

theorem psiChild661_0 {H : CMatrix} (hH : IsHadamard H) :
    (160 : ℝ) * ((psiCoefficient 0 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 0) false - psiInput661) - injectiveMoment H (blockExponent (psiExponent 0) true - psiInput661))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (1 : ℤ) reductionProjection7174) (Integer.Sparse.scale (-10 : ℤ) oldProjection53)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - psiInput661) = canonicalInput34226.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (160 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - psiInput661) =
      Integer.Sparse.eval reductionProjection7174 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (160 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34226 hH))).trans (reductionSound7174 hH)
  have he1 : (blockExponent (psiExponent 0) true - psiInput661) = canonicalInput30767.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) true - psiInput661) =
      Integer.Sparse.eval oldProjection53 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30767 hH))).trans (oldProjectionSound53 hH)
  change (160 : ℝ) * (((1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (1 : ℝ) * hh0 + (-10 : ℝ) * hh1

theorem psiChild661_1 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 1 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 1) false - psiInput661) - injectiveMoment H (blockExponent (psiExponent 1) true - psiInput661))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11175) (Integer.Sparse.scale (180 : ℤ) oldProjection51)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 1) false - psiInput661) = canonicalInput34165.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 1) false - psiInput661) =
      Integer.Sparse.eval reductionProjection11175 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34165 hH))).trans (reductionSound11175 hH)
  have he1 : (blockExponent (psiExponent 1) true - psiInput661) = canonicalInput30766.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 1) true - psiInput661) =
      Integer.Sparse.eval oldProjection51 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30766 hH))).trans (oldProjectionSound51 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (180 : ℝ) * hh1

theorem psiChild661_2 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 2 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 2) false - psiInput661) - injectiveMoment H (blockExponent (psiExponent 2) true - psiInput661))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11175) (Integer.Sparse.scale (2880 : ℤ) oldProjection3)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 2) false - psiInput661) = canonicalInput33750.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 2) false - psiInput661) =
      Integer.Sparse.eval reductionProjection11175 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33750 hH))).trans (reductionSound11175 hH)
  have he1 : (blockExponent (psiExponent 2) true - psiInput661) = canonicalInput30751.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 2) true - psiInput661) =
      Integer.Sparse.eval oldProjection3 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30751 hH))).trans (oldProjectionSound3 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (2880 : ℝ) * hh1

theorem psiChild661_3 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * ((psiCoefficient 3 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 3) false - psiInput661) - injectiveMoment H (blockExponent (psiExponent 3) true - psiInput661))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection12077) (Integer.Sparse.scale (-360 : ℤ) oldProjection10)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - psiInput661) = canonicalInput33563.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - psiInput661) =
      Integer.Sparse.eval reductionProjection12077 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33563 hH))).trans (reductionSound12077 hH)
  have he1 : (blockExponent (psiExponent 3) true - psiInput661) = canonicalInput30747.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (4 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) true - psiInput661) =
      Integer.Sparse.eval oldProjection10 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (4 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30747 hH))).trans (oldProjectionSound10 hH)
  change (480 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-360 : ℝ) * hh1

theorem psiChild661_4 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * ((psiCoefficient 4 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 4) false - psiInput661) - injectiveMoment H (blockExponent (psiExponent 4) true - psiInput661))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection12077) (Integer.Sparse.scale (-360 : ℤ) oldProjection10)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 4) false - psiInput661) = canonicalInput33303.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 4) false - psiInput661) =
      Integer.Sparse.eval reductionProjection12077 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33303 hH))).trans (reductionSound12077 hH)
  have he1 : (blockExponent (psiExponent 4) true - psiInput661) = canonicalInput30741.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (4 : ℝ) * injectiveMoment H (blockExponent (psiExponent 4) true - psiInput661) =
      Integer.Sparse.eval oldProjection10 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (4 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30741 hH))).trans (oldProjectionSound10 hH)
  change (480 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-360 : ℝ) * hh1

theorem psiChild661_5 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 5 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 5) false - psiInput661) - injectiveMoment H (blockExponent (psiExponent 5) true - psiInput661))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11175) (Integer.Sparse.scale (180 : ℤ) oldProjection57)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 5) false - psiInput661) = canonicalInput33118.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 5) false - psiInput661) =
      Integer.Sparse.eval reductionProjection11175 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33118 hH))).trans (reductionSound11175 hH)
  have he1 : (blockExponent (psiExponent 5) true - psiInput661) = canonicalInput30736.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 5) true - psiInput661) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30736 hH))).trans (oldProjectionSound57 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (180 : ℝ) * hh1

theorem psiChild661_6 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 6 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 6) false - psiInput661) - injectiveMoment H (blockExponent (psiExponent 6) true - psiInput661))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11175) (Integer.Sparse.scale (2880 : ℤ) oldProjection40)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - psiInput661) = canonicalInput34104.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - psiInput661) =
      Integer.Sparse.eval reductionProjection11175 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34104 hH))).trans (reductionSound11175 hH)
  have he1 : (blockExponent (psiExponent 6) true - psiInput661) = canonicalInput30765.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) true - psiInput661) =
      Integer.Sparse.eval oldProjection40 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30765 hH))).trans (oldProjectionSound40 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (2880 : ℝ) * hh1

theorem psiChild661_7 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 7 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 7) false - psiInput661) - injectiveMoment H (blockExponent (psiExponent 7) true - psiInput661))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection11239) (Integer.Sparse.scale (180 : ℤ) oldProjection58)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 7) false - psiInput661) = canonicalInput33689.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 7) false - psiInput661) =
      Integer.Sparse.eval reductionProjection11239 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33689 hH))).trans (reductionSound11239 hH)
  have he1 : (blockExponent (psiExponent 7) true - psiInput661) = canonicalInput30750.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 7) true - psiInput661) =
      Integer.Sparse.eval oldProjection58 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30750 hH))).trans (oldProjectionSound58 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (180 : ℝ) * hh1

theorem psiChild661_8 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 8 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 8) false - psiInput661) - injectiveMoment H (blockExponent (psiExponent 8) true - psiInput661))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection11239) (Integer.Sparse.scale (360 : ℤ) oldProjection63)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 8) false - psiInput661) = canonicalInput33502.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 8) false - psiInput661) =
      Integer.Sparse.eval reductionProjection11239 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33502 hH))).trans (reductionSound11239 hH)
  have he1 : (blockExponent (psiExponent 8) true - psiInput661) = canonicalInput30746.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (8 : ℝ) * injectiveMoment H (blockExponent (psiExponent 8) true - psiInput661) =
      Integer.Sparse.eval oldProjection63 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (8 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30746 hH))).trans (oldProjectionSound63 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (360 : ℝ) * hh1

theorem psiChild661_9 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 9 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 9) false - psiInput661) - injectiveMoment H (blockExponent (psiExponent 9) true - psiInput661))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection11239) (Integer.Sparse.scale (360 : ℤ) oldProjection63)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 9) false - psiInput661) = canonicalInput33242.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 9) false - psiInput661) =
      Integer.Sparse.eval reductionProjection11239 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33242 hH))).trans (reductionSound11239 hH)
  have he1 : (blockExponent (psiExponent 9) true - psiInput661) = canonicalInput30740.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (8 : ℝ) * injectiveMoment H (blockExponent (psiExponent 9) true - psiInput661) =
      Integer.Sparse.eval oldProjection63 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (8 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30740 hH))).trans (oldProjectionSound63 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (360 : ℝ) * hh1

end NoFourMUBs.Step2.SOS.Semantics
