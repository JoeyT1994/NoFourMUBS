import NoFourMUBs.Step2.SOS.Canonical424
import NoFourMUBs.Step2.SOS.Canonical425
import NoFourMUBs.Step2.SOS.Canonical473
import NoFourMUBs.Step2.SOS.Canonical476
import NoFourMUBs.Step2.SOS.Canonical477
import NoFourMUBs.Step2.SOS.Canonical481
import NoFourMUBs.Step2.SOS.Canonical483
import NoFourMUBs.Step2.SOS.Canonical503
import NoFourMUBs.Step2.SOS.Canonical505
import NoFourMUBs.Step2.SOS.Canonical506
import NoFourMUBs.Step2.SOS.Canonical515
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections037
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.PsiRowInputs
import NoFourMUBs.Step2.SOS.Reductions381
import NoFourMUBs.Step2.SOS.Reductions383

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 20000
set_option maxHeartbeats 4000000

theorem psiChild659_10 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * ((psiCoefficient 10 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 10) false - psiInput659) - injectiveMoment H (blockExponent (psiExponent 10) true - psiInput659))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) oldProjection1291) (Integer.Sparse.scale (6 : ℤ) oldProjection56)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - psiInput659) = canonicalInput32999.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - psiInput659) =
      Integer.Sparse.eval oldProjection1291 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32999 hH))).trans (oldProjectionSound1291 hH)
  have he1 : (blockExponent (psiExponent 10) true - psiInput659) = canonicalInput30528.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) true - psiInput659) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30528 hH))).trans (oldProjectionSound56 hH)
  change (240 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (6 : ℝ) * hh1

theorem psiChild659_11 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 11 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 11) false - psiInput659) - injectiveMoment H (blockExponent (psiExponent 11) true - psiInput659))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection12261) (Integer.Sparse.scale (12 : ℤ) oldProjection288)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 11) false - psiInput659) = canonicalInput32446.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 11) false - psiInput659) =
      Integer.Sparse.eval reductionProjection12261 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32446 hH))).trans (reductionSound12261 hH)
  have he1 : (blockExponent (psiExponent 11) true - psiInput659) = canonicalInput30511.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 11) true - psiInput659) =
      Integer.Sparse.eval oldProjection288 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30511 hH))).trans (oldProjectionSound288 hH)
  change (1440 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (12 : ℝ) * hh1

theorem psiChild659_12 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * ((psiCoefficient 12 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 12) false - psiInput659) - injectiveMoment H (blockExponent (psiExponent 12) true - psiInput659))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-4 : ℤ) oldProjection2851) (Integer.Sparse.scale (6 : ℤ) oldProjection283)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 12) false - psiInput659) = canonicalInput32320.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 12) false - psiInput659) =
      Integer.Sparse.eval oldProjection2851 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32320 hH))).trans (oldProjectionSound2851 hH)
  have he1 : (blockExponent (psiExponent 12) true - psiInput659) = canonicalInput30508.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 12) true - psiInput659) =
      Integer.Sparse.eval oldProjection283 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30508 hH))).trans (oldProjectionSound283 hH)
  change (720 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-4 : ℝ) * hh0 + (6 : ℝ) * hh1

theorem psiChild659_13 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * ((psiCoefficient 13 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 13) false - psiInput659) - injectiveMoment H (blockExponent (psiExponent 13) true - psiInput659))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) oldProjection1291) (Integer.Sparse.scale (6 : ℤ) oldProjection62)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 13) false - psiInput659) = canonicalInput30959.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 13) false - psiInput659) =
      Integer.Sparse.eval oldProjection1291 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30959 hH))).trans (oldProjectionSound1291 hH)
  have he1 : (blockExponent (psiExponent 13) true - psiInput659) = canonicalInput30497.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 13) true - psiInput659) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30497 hH))).trans (oldProjectionSound62 hH)
  change (240 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (6 : ℝ) * hh1

theorem psiChild659_14 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * ((psiCoefficient 14 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 14) false - psiInput659) - injectiveMoment H (blockExponent (psiExponent 14) true - psiInput659))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) oldProjection2851) (Integer.Sparse.scale (6 : ℤ) oldProjection227)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 14) false - psiInput659) = canonicalInput30829.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 14) false - psiInput659) =
      Integer.Sparse.eval oldProjection2851 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30829 hH))).trans (oldProjectionSound2851 hH)
  have he1 : (blockExponent (psiExponent 14) true - psiInput659) = canonicalInput30494.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 14) true - psiInput659) =
      Integer.Sparse.eval oldProjection227 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30494 hH))).trans (oldProjectionSound227 hH)
  change (360 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (6 : ℝ) * hh1

theorem psiChild659_15 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * ((psiCoefficient 15 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 15) false - psiInput659) - injectiveMoment H (blockExponent (psiExponent 15) true - psiInput659))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (30 : ℤ) reductionProjection12219) (Integer.Sparse.scale (-9 : ℤ) oldProjection284)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 15) false - psiInput659) = canonicalInput32194.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (72 : ℝ) * injectiveMoment H (blockExponent (psiExponent 15) false - psiInput659) =
      Integer.Sparse.eval reductionProjection12219 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32194 hH))).trans (reductionSound12219 hH)
  have he1 : (blockExponent (psiExponent 15) true - psiInput659) = canonicalInput30505.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 15) true - psiInput659) =
      Integer.Sparse.eval oldProjection284 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30505 hH))).trans (oldProjectionSound284 hH)
  change (720 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-9 : ℝ) * hh1

theorem psiChild659_16 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * ((psiCoefficient 16 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 16) false - psiInput659) - injectiveMoment H (blockExponent (psiExponent 16) true - psiInput659))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (12 : ℤ) oldProjection11) (Integer.Sparse.scale (-12 : ℤ) oldProjection11)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - psiInput659) = canonicalInput30493.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - psiInput659) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30493 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 16) true - psiInput659) = canonicalInput30493.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) true - psiInput659) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30493 hH))).trans (oldProjectionSound11 hH)
  change (20 : ℝ) * (((12 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (12 : ℝ) * hh0 + (-12 : ℝ) * hh1

theorem psiChild659_17 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * ((psiCoefficient 17 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 17) false - psiInput659) - injectiveMoment H (blockExponent (psiExponent 17) true - psiInput659))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) oldProjection1291) (Integer.Sparse.scale (6 : ℤ) oldProjection62)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 17) false - psiInput659) = canonicalInput30309.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 17) false - psiInput659) =
      Integer.Sparse.eval oldProjection1291 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30309 hH))).trans (oldProjectionSound1291 hH)
  have he1 : (blockExponent (psiExponent 17) true - psiInput659) = canonicalInput30491.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 17) true - psiInput659) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30491 hH))).trans (oldProjectionSound62 hH)
  change (240 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (6 : ℝ) * hh1

theorem psiChild659_18 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * ((psiCoefficient 18 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 18) false - psiInput659) - injectiveMoment H (blockExponent (psiExponent 18) true - psiInput659))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (30 : ℤ) reductionProjection12219) (Integer.Sparse.scale (-9 : ℤ) oldProjection284)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 18) false - psiInput659) = canonicalInput27263.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (72 : ℝ) * injectiveMoment H (blockExponent (psiExponent 18) false - psiInput659) =
      Integer.Sparse.eval reductionProjection12219 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27263 hH))).trans (reductionSound12219 hH)
  have he1 : (blockExponent (psiExponent 18) true - psiInput659) = canonicalInput30481.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 18) true - psiInput659) =
      Integer.Sparse.eval oldProjection284 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30481 hH))).trans (oldProjectionSound284 hH)
  change (720 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-9 : ℝ) * hh1

theorem psiChild659_19 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * ((psiCoefficient 19 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 19) false - psiInput659) - injectiveMoment H (blockExponent (psiExponent 19) true - psiInput659))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-4 : ℤ) oldProjection2851) (Integer.Sparse.scale (6 : ℤ) oldProjection283)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 19) false - psiInput659) = canonicalInput27138.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 19) false - psiInput659) =
      Integer.Sparse.eval oldProjection2851 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27138 hH))).trans (oldProjectionSound2851 hH)
  have he1 : (blockExponent (psiExponent 19) true - psiInput659) = canonicalInput30479.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 19) true - psiInput659) =
      Integer.Sparse.eval oldProjection283 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30479 hH))).trans (oldProjectionSound283 hH)
  change (720 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-4 : ℝ) * hh0 + (6 : ℝ) * hh1

end NoFourMUBs.Step2.SOS.Semantics
