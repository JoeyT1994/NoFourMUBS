import NoFourMUBs.Step2.SOS.Canonical423
import NoFourMUBs.Step2.SOS.Canonical481
import NoFourMUBs.Step2.SOS.Canonical483
import NoFourMUBs.Step2.SOS.Canonical503
import NoFourMUBs.Step2.SOS.Canonical504
import NoFourMUBs.Step2.SOS.Canonical506
import NoFourMUBs.Step2.SOS.Canonical515
import NoFourMUBs.Step2.SOS.Canonical518
import NoFourMUBs.Step2.SOS.Canonical522
import NoFourMUBs.Step2.SOS.Canonical525
import NoFourMUBs.Step2.SOS.Canonical531
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.PsiRowInputs
import NoFourMUBs.Step2.SOS.Reductions230
import NoFourMUBs.Step2.SOS.Reductions351
import NoFourMUBs.Step2.SOS.Reductions374
import NoFourMUBs.Step2.SOS.Reductions377

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 20000
set_option maxHeartbeats 4000000

theorem psiChild663_20 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * ((psiCoefficient 20 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 20) false - psiInput663) - injectiveMoment H (blockExponent (psiExponent 20) true - psiInput663))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11989) (Integer.Sparse.scale (240 : ℤ) oldProjection204)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 20) false - psiInput663) = canonicalInput27073.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (720 : ℝ) * injectiveMoment H (blockExponent (psiExponent 20) false - psiInput663) =
      Integer.Sparse.eval reductionProjection11989 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27073 hH))).trans (reductionSound11989 hH)
  have he1 : (blockExponent (psiExponent 20) true - psiInput663) = canonicalInput30794.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (3 : ℝ) * injectiveMoment H (blockExponent (psiExponent 20) true - psiInput663) =
      Integer.Sparse.eval oldProjection204 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30794 hH))).trans (oldProjectionSound204 hH)
  change (720 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (240 : ℝ) * hh1

theorem psiChild663_21 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * ((psiCoefficient 21 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 21) false - psiInput663) - injectiveMoment H (blockExponent (psiExponent 21) true - psiInput663))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (1 : ℤ) reductionProjection11236) (Integer.Sparse.scale (-480 : ℤ) oldProjection198)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - psiInput663) = canonicalInput34045.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - psiInput663) =
      Integer.Sparse.eval reductionProjection11236 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34045 hH))).trans (reductionSound11236 hH)
  have he1 : (blockExponent (psiExponent 21) true - psiInput663) = canonicalInput30824.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) true - psiInput663) =
      Integer.Sparse.eval oldProjection198 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30824 hH))).trans (oldProjectionSound198 hH)
  change (480 : ℝ) * (((1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (1 : ℝ) * hh0 + (-480 : ℝ) * hh1

theorem psiChild663_22 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 22 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 22) false - psiInput663) - injectiveMoment H (blockExponent (psiExponent 22) true - psiInput663))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection12067) (Integer.Sparse.scale (-18 : ℤ) oldProjection291)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - psiInput663) = canonicalInput33630.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - psiInput663) =
      Integer.Sparse.eval reductionProjection12067 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33630 hH))).trans (reductionSound12067 hH)
  have he1 : (blockExponent (psiExponent 22) true - psiInput663) = canonicalInput30821.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) true - psiInput663) =
      Integer.Sparse.eval oldProjection291 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30821 hH))).trans (oldProjectionSound291 hH)
  change (1440 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-18 : ℝ) * hh1

theorem psiChild663_23 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * ((psiCoefficient 23 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 23) false - psiInput663) - injectiveMoment H (blockExponent (psiExponent 23) true - psiInput663))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11989) (Integer.Sparse.scale (720 : ℤ) oldProjection224)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 23) false - psiInput663) = canonicalInput33443.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (720 : ℝ) * injectiveMoment H (blockExponent (psiExponent 23) false - psiInput663) =
      Integer.Sparse.eval reductionProjection11989 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33443 hH))).trans (reductionSound11989 hH)
  have he1 : (blockExponent (psiExponent 23) true - psiInput663) = canonicalInput30818.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 23) true - psiInput663) =
      Integer.Sparse.eval oldProjection224 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30818 hH))).trans (oldProjectionSound224 hH)
  change (720 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (720 : ℝ) * hh1

theorem psiChild663_24 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * ((psiCoefficient 24 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 24) false - psiInput663) - injectiveMoment H (blockExponent (psiExponent 24) true - psiInput663))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11989) (Integer.Sparse.scale (90 : ℤ) oldProjection292)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 24) false - psiInput663) = canonicalInput33183.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (720 : ℝ) * injectiveMoment H (blockExponent (psiExponent 24) false - psiInput663) =
      Integer.Sparse.eval reductionProjection11989 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33183 hH))).trans (reductionSound11989 hH)
  have he1 : (blockExponent (psiExponent 24) true - psiInput663) = canonicalInput30815.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (8 : ℝ) * injectiveMoment H (blockExponent (psiExponent 24) true - psiInput663) =
      Integer.Sparse.eval oldProjection292 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (8 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30815 hH))).trans (oldProjectionSound292 hH)
  change (720 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (90 : ℝ) * hh1

theorem psiChild663_25 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 25 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 25) false - psiInput663) - injectiveMoment H (blockExponent (psiExponent 25) true - psiInput663))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection12067) (Integer.Sparse.scale (-90 : ℤ) oldProjection226)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - psiInput663) = canonicalInput32998.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - psiInput663) =
      Integer.Sparse.eval reductionProjection12067 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32998 hH))).trans (reductionSound12067 hH)
  have he1 : (blockExponent (psiExponent 25) true - psiInput663) = canonicalInput30812.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (48 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) true - psiInput663) =
      Integer.Sparse.eval oldProjection226 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30812 hH))).trans (oldProjectionSound226 hH)
  change (1440 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-90 : ℝ) * hh1

theorem psiChild663_26 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 26 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 26) false - psiInput663) - injectiveMoment H (blockExponent (psiExponent 26) true - psiInput663))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection12067) (Integer.Sparse.scale (-216 : ℤ) oldProjection11)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 26) false - psiInput663) = canonicalInput32445.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 26) false - psiInput663) =
      Integer.Sparse.eval reductionProjection12067 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32445 hH))).trans (reductionSound12067 hH)
  have he1 : (blockExponent (psiExponent 26) true - psiInput663) = canonicalInput30810.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 26) true - psiInput663) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30810 hH))).trans (oldProjectionSound11 hH)
  change (1440 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-216 : ℝ) * hh1

theorem psiChild663_27 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 27 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 27) false - psiInput663) - injectiveMoment H (blockExponent (psiExponent 27) true - psiInput663))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection11239) (Integer.Sparse.scale (72 : ℤ) oldProjection294)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 27) false - psiInput663) = canonicalInput32319.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 27) false - psiInput663) =
      Integer.Sparse.eval reductionProjection11239 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32319 hH))).trans (reductionSound11239 hH)
  have he1 : (blockExponent (psiExponent 27) true - psiInput663) = canonicalInput30808.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (40 : ℝ) * injectiveMoment H (blockExponent (psiExponent 27) true - psiInput663) =
      Integer.Sparse.eval oldProjection294 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (40 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30808 hH))).trans (oldProjectionSound294 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (72 : ℝ) * hh1

theorem psiChild663_28 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * ((psiCoefficient 28 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 28) false - psiInput663) - injectiveMoment H (blockExponent (psiExponent 28) true - psiInput663))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection7373) (Integer.Sparse.scale (576 : ℤ) oldProjection4)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - psiInput663) = canonicalInput30958.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (288 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - psiInput663) =
      Integer.Sparse.eval reductionProjection7373 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30958 hH))).trans (reductionSound7373 hH)
  have he1 : (blockExponent (psiExponent 28) true - psiInput663) = canonicalInput30804.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) true - psiInput663) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30804 hH))).trans (oldProjectionSound4 hH)
  change (288 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (576 : ℝ) * hh1

theorem psiChild663_29 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * ((psiCoefficient 29 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 29) false - psiInput663) - injectiveMoment H (blockExponent (psiExponent 29) true - psiInput663))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11989) (Integer.Sparse.scale (3 : ℤ) oldProjection203)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - psiInput663) = canonicalInput32193.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (720 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - psiInput663) =
      Integer.Sparse.eval reductionProjection11989 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32193 hH))).trans (reductionSound11989 hH)
  have he1 : (blockExponent (psiExponent 29) true - psiInput663) = canonicalInput30806.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) true - psiInput663) =
      Integer.Sparse.eval oldProjection203 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30806 hH))).trans (oldProjectionSound203 hH)
  change (720 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (3 : ℝ) * hh1

end NoFourMUBs.Step2.SOS.Semantics
