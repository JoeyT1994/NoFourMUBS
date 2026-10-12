import NoFourMUBs.Step2.SOS.Canonical342
import NoFourMUBs.Step2.SOS.Canonical343
import NoFourMUBs.Step2.SOS.Canonical344
import NoFourMUBs.Step2.SOS.Canonical345
import NoFourMUBs.Step2.SOS.Canonical358
import NoFourMUBs.Step2.SOS.Canonical359
import NoFourMUBs.Step2.SOS.Canonical360
import NoFourMUBs.Step2.SOS.Canonical361
import NoFourMUBs.Step2.SOS.Canonical367
import NoFourMUBs.Step2.SOS.Canonical475
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.PsiRowInputs
import NoFourMUBs.Step2.SOS.Reductions230
import NoFourMUBs.Step2.SOS.Reductions361
import NoFourMUBs.Step2.SOS.Reductions381

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 20000
set_option maxHeartbeats 4000000

theorem psiChild659_40 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * ((psiCoefficient 40 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 40) false - psiInput659) - injectiveMoment H (blockExponent (psiExponent 40) true - psiInput659))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) oldProjection1291) (Integer.Sparse.scale (6 : ℤ) oldProjection61)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - psiInput659) = canonicalInput23128.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - psiInput659) =
      Integer.Sparse.eval oldProjection1291 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23128 hH))).trans (oldProjectionSound1291 hH)
  have he1 : (blockExponent (psiExponent 40) true - psiInput659) = canonicalInput30453.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) true - psiInput659) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30453 hH))).trans (oldProjectionSound61 hH)
  change (240 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (6 : ℝ) * hh1

theorem psiChild659_41 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * ((psiCoefficient 41 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 41) false - psiInput659) - injectiveMoment H (blockExponent (psiExponent 41) true - psiInput659))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) oldProjection1291) (Integer.Sparse.scale (6 : ℤ) oldProjection61)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 41) false - psiInput659) = canonicalInput23063.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 41) false - psiInput659) =
      Integer.Sparse.eval oldProjection1291 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23063 hH))).trans (oldProjectionSound1291 hH)
  have he1 : (blockExponent (psiExponent 41) true - psiInput659) = canonicalInput30451.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 41) true - psiInput659) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30451 hH))).trans (oldProjectionSound61 hH)
  change (240 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (6 : ℝ) * hh1

theorem psiChild659_42 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 42 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 42) false - psiInput659) - injectiveMoment H (blockExponent (psiExponent 42) true - psiInput659))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11564) (Integer.Sparse.scale (12 : ℤ) oldProjection230)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 42) false - psiInput659) = canonicalInput22143.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 42) false - psiInput659) =
      Integer.Sparse.eval reductionProjection11564 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22143 hH))).trans (reductionSound11564 hH)
  have he1 : (blockExponent (psiExponent 42) true - psiInput659) = canonicalInput30447.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 42) true - psiInput659) =
      Integer.Sparse.eval oldProjection230 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30447 hH))).trans (oldProjectionSound230 hH)
  change (1440 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (12 : ℝ) * hh1

theorem psiChild659_43 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * ((psiCoefficient 43 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 43) false - psiInput659) - injectiveMoment H (blockExponent (psiExponent 43) true - psiInput659))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) oldProjection1291) (Integer.Sparse.scale (6 : ℤ) oldProjection61)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - psiInput659) = canonicalInput22078.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - psiInput659) =
      Integer.Sparse.eval oldProjection1291 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22078 hH))).trans (oldProjectionSound1291 hH)
  have he1 : (blockExponent (psiExponent 43) true - psiInput659) = canonicalInput30445.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) true - psiInput659) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30445 hH))).trans (oldProjectionSound61 hH)
  change (240 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (6 : ℝ) * hh1

theorem psiChild659_44 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * ((psiCoefficient 44 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 44) false - psiInput659) - injectiveMoment H (blockExponent (psiExponent 44) true - psiInput659))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection12219) (Integer.Sparse.scale (-9 : ℤ) oldProjection287)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - psiInput659) = canonicalInput21952.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (72 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - psiInput659) =
      Integer.Sparse.eval reductionProjection12219 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21952 hH))).trans (reductionSound12219 hH)
  have he1 : (blockExponent (psiExponent 44) true - psiInput659) = canonicalInput30443.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) true - psiInput659) =
      Integer.Sparse.eval oldProjection287 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30443 hH))).trans (oldProjectionSound287 hH)
  change (72 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-9 : ℝ) * hh1

theorem psiChild659_45 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * ((psiCoefficient 45 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 45) false - psiInput659) - injectiveMoment H (blockExponent (psiExponent 45) true - psiInput659))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (1 : ℤ) reductionProjection7366) (Integer.Sparse.scale (-360 : ℤ) oldProjection276)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - psiInput659) = canonicalInput23494.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - psiInput659) =
      Integer.Sparse.eval reductionProjection7366 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23494 hH))).trans (reductionSound7366 hH)
  have he1 : (blockExponent (psiExponent 45) true - psiInput659) = canonicalInput30458.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) true - psiInput659) =
      Integer.Sparse.eval oldProjection276 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30458 hH))).trans (oldProjectionSound276 hH)
  change (360 : ℝ) * (((1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (1 : ℝ) * hh0 + (-360 : ℝ) * hh1

theorem psiChild659_46 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * ((psiCoefficient 46 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 46) false - psiInput659) - injectiveMoment H (blockExponent (psiExponent 46) true - psiInput659))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection12219) (Integer.Sparse.scale (-9 : ℤ) oldProjection287)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 46) false - psiInput659) = canonicalInput23002.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (72 : ℝ) * injectiveMoment H (blockExponent (psiExponent 46) false - psiInput659) =
      Integer.Sparse.eval reductionProjection12219 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23002 hH))).trans (reductionSound12219 hH)
  have he1 : (blockExponent (psiExponent 46) true - psiInput659) = canonicalInput30450.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 46) true - psiInput659) =
      Integer.Sparse.eval oldProjection287 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30450 hH))).trans (oldProjectionSound287 hH)
  change (72 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-9 : ℝ) * hh1

theorem psiChild659_47 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 47 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 47) false - psiInput659) - injectiveMoment H (blockExponent (psiExponent 47) true - psiInput659))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11564) (Integer.Sparse.scale (12 : ℤ) oldProjection230)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 47) false - psiInput659) = canonicalInput22937.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 47) false - psiInput659) =
      Integer.Sparse.eval reductionProjection11564 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22937 hH))).trans (reductionSound11564 hH)
  have he1 : (blockExponent (psiExponent 47) true - psiInput659) = canonicalInput30449.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 47) true - psiInput659) =
      Integer.Sparse.eval oldProjection230 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30449 hH))).trans (oldProjectionSound230 hH)
  change (1440 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (12 : ℝ) * hh1

theorem psiChild659_48 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * ((psiCoefficient 48 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 48) false - psiInput659) - injectiveMoment H (blockExponent (psiExponent 48) true - psiInput659))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection12219) (Integer.Sparse.scale (-9 : ℤ) oldProjection287)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 48) false - psiInput659) = canonicalInput22017.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (72 : ℝ) * injectiveMoment H (blockExponent (psiExponent 48) false - psiInput659) =
      Integer.Sparse.eval reductionProjection12219 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22017 hH))).trans (reductionSound12219 hH)
  have he1 : (blockExponent (psiExponent 48) true - psiInput659) = canonicalInput30444.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 48) true - psiInput659) =
      Integer.Sparse.eval oldProjection287 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30444 hH))).trans (oldProjectionSound287 hH)
  change (72 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-9 : ℝ) * hh1

theorem psiChild659_49 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * ((psiCoefficient 49 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 49) false - psiInput659) - injectiveMoment H (blockExponent (psiExponent 49) true - psiInput659))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) oldProjection1291) (Integer.Sparse.scale (6 : ℤ) oldProjection61)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - psiInput659) = canonicalInput21891.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - psiInput659) =
      Integer.Sparse.eval oldProjection1291 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21891 hH))).trans (oldProjectionSound1291 hH)
  have he1 : (blockExponent (psiExponent 49) true - psiInput659) = canonicalInput30442.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) true - psiInput659) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30442 hH))).trans (oldProjectionSound61 hH)
  change (240 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (6 : ℝ) * hh1

end NoFourMUBs.Step2.SOS.Semantics
