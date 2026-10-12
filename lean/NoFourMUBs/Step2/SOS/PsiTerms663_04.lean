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
import NoFourMUBs.Step2.SOS.Canonical480
import NoFourMUBs.Step2.SOS.Canonical481
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.PsiRowInputs
import NoFourMUBs.Step2.SOS.Reductions230
import NoFourMUBs.Step2.SOS.Reductions351
import NoFourMUBs.Step2.SOS.Reductions352
import NoFourMUBs.Step2.SOS.Reductions377

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 20000
set_option maxHeartbeats 4000000

theorem psiChild663_40 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 40 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 40) false - psiInput663) - injectiveMoment H (blockExponent (psiExponent 40) true - psiInput663))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-10 : ℤ) reductionProjection7373) (Integer.Sparse.scale (144 : ℤ) oldProjection11)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - psiInput663) = canonicalInput23188.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (288 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - psiInput663) =
      Integer.Sparse.eval reductionProjection7373 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23188 hH))).trans (reductionSound7373 hH)
  have he1 : (blockExponent (psiExponent 40) true - psiInput663) = canonicalInput30786.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) true - psiInput663) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30786 hH))).trans (oldProjectionSound11 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-10 : ℝ) * hh0 + (144 : ℝ) * hh1

theorem psiChild663_41 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 41 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 41) false - psiInput663) - injectiveMoment H (blockExponent (psiExponent 41) true - psiInput663))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-10 : ℤ) reductionProjection7373) (Integer.Sparse.scale (36 : ℤ) oldProjection62)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 41) false - psiInput663) = canonicalInput23123.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (288 : ℝ) * injectiveMoment H (blockExponent (psiExponent 41) false - psiInput663) =
      Integer.Sparse.eval reductionProjection7373 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23123 hH))).trans (reductionSound7373 hH)
  have he1 : (blockExponent (psiExponent 41) true - psiInput663) = canonicalInput30785.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 41) true - psiInput663) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30785 hH))).trans (oldProjectionSound62 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-10 : ℝ) * hh0 + (36 : ℝ) * hh1

theorem psiChild663_42 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 42 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 42) false - psiInput663) - injectiveMoment H (blockExponent (psiExponent 42) true - psiInput663))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11268) (Integer.Sparse.scale (6 : ℤ) oldProjection291)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 42) false - psiInput663) = canonicalInput22203.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 42) false - psiInput663) =
      Integer.Sparse.eval reductionProjection11268 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22203 hH))).trans (reductionSound11268 hH)
  have he1 : (blockExponent (psiExponent 42) true - psiInput663) = canonicalInput30782.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 42) true - psiInput663) =
      Integer.Sparse.eval oldProjection291 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30782 hH))).trans (oldProjectionSound291 hH)
  change (1440 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (6 : ℝ) * hh1

theorem psiChild663_43 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 43 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 43) false - psiInput663) - injectiveMoment H (blockExponent (psiExponent 43) true - psiInput663))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-10 : ℤ) reductionProjection7373) (Integer.Sparse.scale (12 : ℤ) oldProjection284)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - psiInput663) = canonicalInput22138.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (288 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - psiInput663) =
      Integer.Sparse.eval reductionProjection7373 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22138 hH))).trans (reductionSound7373 hH)
  have he1 : (blockExponent (psiExponent 43) true - psiInput663) = canonicalInput30781.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) true - psiInput663) =
      Integer.Sparse.eval oldProjection284 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30781 hH))).trans (oldProjectionSound284 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-10 : ℝ) * hh0 + (12 : ℝ) * hh1

theorem psiChild663_44 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 44 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 44) false - psiInput663) - injectiveMoment H (blockExponent (psiExponent 44) true - psiInput663))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection12067) (Integer.Sparse.scale (-18 : ℤ) oldProjection203)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - psiInput663) = canonicalInput22012.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - psiInput663) =
      Integer.Sparse.eval reductionProjection12067 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22012 hH))).trans (reductionSound12067 hH)
  have he1 : (blockExponent (psiExponent 44) true - psiInput663) = canonicalInput30779.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) true - psiInput663) =
      Integer.Sparse.eval oldProjection203 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30779 hH))).trans (oldProjectionSound203 hH)
  change (1440 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-18 : ℝ) * hh1

theorem psiChild663_45 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * ((psiCoefficient 45 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 45) false - psiInput663) - injectiveMoment H (blockExponent (psiExponent 45) true - psiInput663))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (1 : ℤ) reductionProjection11236) (Integer.Sparse.scale (-480 : ℤ) oldProjection36)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - psiInput663) = canonicalInput23554.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - psiInput663) =
      Integer.Sparse.eval reductionProjection11236 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23554 hH))).trans (reductionSound11236 hH)
  have he1 : (blockExponent (psiExponent 45) true - psiInput663) = canonicalInput30789.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) true - psiInput663) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30789 hH))).trans (oldProjectionSound36 hH)
  change (480 : ℝ) * (((1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (1 : ℝ) * hh0 + (-480 : ℝ) * hh1

theorem psiChild663_46 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 46 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 46) false - psiInput663) - injectiveMoment H (blockExponent (psiExponent 46) true - psiInput663))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection12067) (Integer.Sparse.scale (-18 : ℤ) oldProjection284)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 46) false - psiInput663) = canonicalInput23062.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 46) false - psiInput663) =
      Integer.Sparse.eval reductionProjection12067 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23062 hH))).trans (reductionSound12067 hH)
  have he1 : (blockExponent (psiExponent 46) true - psiInput663) = canonicalInput30784.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 46) true - psiInput663) =
      Integer.Sparse.eval oldProjection284 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30784 hH))).trans (oldProjectionSound284 hH)
  change (1440 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-18 : ℝ) * hh1

theorem psiChild663_47 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 47 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 47) false - psiInput663) - injectiveMoment H (blockExponent (psiExponent 47) true - psiInput663))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11268) (Integer.Sparse.scale (6 : ℤ) oldProjection185)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 47) false - psiInput663) = canonicalInput22997.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 47) false - psiInput663) =
      Integer.Sparse.eval reductionProjection11268 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22997 hH))).trans (reductionSound11268 hH)
  have he1 : (blockExponent (psiExponent 47) true - psiInput663) = canonicalInput30783.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 47) true - psiInput663) =
      Integer.Sparse.eval oldProjection185 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30783 hH))).trans (oldProjectionSound185 hH)
  change (1440 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (6 : ℝ) * hh1

theorem psiChild663_48 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 48 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 48) false - psiInput663) - injectiveMoment H (blockExponent (psiExponent 48) true - psiInput663))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection12067) (Integer.Sparse.scale (-72 : ℤ) oldProjection46)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 48) false - psiInput663) = canonicalInput22077.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 48) false - psiInput663) =
      Integer.Sparse.eval reductionProjection12067 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22077 hH))).trans (reductionSound12067 hH)
  have he1 : (blockExponent (psiExponent 48) true - psiInput663) = canonicalInput30780.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (60 : ℝ) * injectiveMoment H (blockExponent (psiExponent 48) true - psiInput663) =
      Integer.Sparse.eval oldProjection46 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (60 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30780 hH))).trans (oldProjectionSound46 hH)
  change (1440 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-72 : ℝ) * hh1

theorem psiChild663_49 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 49 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 49) false - psiInput663) - injectiveMoment H (blockExponent (psiExponent 49) true - psiInput663))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-10 : ℤ) reductionProjection7373) (Integer.Sparse.scale (24 : ℤ) oldProjection288)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - psiInput663) = canonicalInput21951.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (288 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - psiInput663) =
      Integer.Sparse.eval reductionProjection7373 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21951 hH))).trans (reductionSound7373 hH)
  have he1 : (blockExponent (psiExponent 49) true - psiInput663) = canonicalInput30778.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) true - psiInput663) =
      Integer.Sparse.eval oldProjection288 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30778 hH))).trans (oldProjectionSound288 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-10 : ℝ) * hh0 + (24 : ℝ) * hh1

end NoFourMUBs.Step2.SOS.Semantics
