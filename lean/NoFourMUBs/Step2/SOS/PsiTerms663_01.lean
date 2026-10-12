import NoFourMUBs.Step2.SOS.Canonical424
import NoFourMUBs.Step2.SOS.Canonical426
import NoFourMUBs.Step2.SOS.Canonical474
import NoFourMUBs.Step2.SOS.Canonical481
import NoFourMUBs.Step2.SOS.Canonical482
import NoFourMUBs.Step2.SOS.Canonical484
import NoFourMUBs.Step2.SOS.Canonical503
import NoFourMUBs.Step2.SOS.Canonical505
import NoFourMUBs.Step2.SOS.Canonical507
import NoFourMUBs.Step2.SOS.Canonical516
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections002
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

theorem psiChild663_10 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * ((psiCoefficient 10 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 10) false - psiInput663) - injectiveMoment H (blockExponent (psiExponent 10) true - psiInput663))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection7373) (Integer.Sparse.scale (576 : ℤ) oldProjection36)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - psiInput663) = canonicalInput33059.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (288 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - psiInput663) =
      Integer.Sparse.eval reductionProjection7373 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33059 hH))).trans (reductionSound7373 hH)
  have he1 : (blockExponent (psiExponent 10) true - psiInput663) = canonicalInput30813.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) true - psiInput663) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30813 hH))).trans (oldProjectionSound36 hH)
  change (288 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (576 : ℝ) * hh1

theorem psiChild663_11 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * ((psiCoefficient 11 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 11) false - psiInput663) - injectiveMoment H (blockExponent (psiExponent 11) true - psiInput663))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11989) (Integer.Sparse.scale (9 : ℤ) oldProjection62)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 11) false - psiInput663) = canonicalInput32506.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (720 : ℝ) * injectiveMoment H (blockExponent (psiExponent 11) false - psiInput663) =
      Integer.Sparse.eval reductionProjection11989 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32506 hH))).trans (reductionSound11989 hH)
  have he1 : (blockExponent (psiExponent 11) true - psiInput663) = canonicalInput30811.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 11) true - psiInput663) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30811 hH))).trans (oldProjectionSound62 hH)
  change (720 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (9 : ℝ) * hh1

theorem psiChild663_12 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 12 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 12) false - psiInput663) - injectiveMoment H (blockExponent (psiExponent 12) true - psiInput663))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection11239) (Integer.Sparse.scale (72 : ℤ) oldProjection294)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 12) false - psiInput663) = canonicalInput32380.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 12) false - psiInput663) =
      Integer.Sparse.eval reductionProjection11239 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32380 hH))).trans (reductionSound11239 hH)
  have he1 : (blockExponent (psiExponent 12) true - psiInput663) = canonicalInput30809.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (40 : ℝ) * injectiveMoment H (blockExponent (psiExponent 12) true - psiInput663) =
      Integer.Sparse.eval oldProjection294 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (40 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30809 hH))).trans (oldProjectionSound294 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (72 : ℝ) * hh1

theorem psiChild663_13 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 13 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 13) false - psiInput663) - injectiveMoment H (blockExponent (psiExponent 13) true - psiInput663))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-10 : ℤ) reductionProjection7373) (Integer.Sparse.scale (36 : ℤ) oldProjection62)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 13) false - psiInput663) = canonicalInput31019.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (288 : ℝ) * injectiveMoment H (blockExponent (psiExponent 13) false - psiInput663) =
      Integer.Sparse.eval reductionProjection7373 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound31019 hH))).trans (reductionSound7373 hH)
  have he1 : (blockExponent (psiExponent 13) true - psiInput663) = canonicalInput30805.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 13) true - psiInput663) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30805 hH))).trans (oldProjectionSound62 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-10 : ℝ) * hh0 + (36 : ℝ) * hh1

theorem psiChild663_14 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 14 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 14) false - psiInput663) - injectiveMoment H (blockExponent (psiExponent 14) true - psiInput663))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection11239) (Integer.Sparse.scale (24 : ℤ) oldProjection207)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 14) false - psiInput663) = canonicalInput30889.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 14) false - psiInput663) =
      Integer.Sparse.eval reductionProjection11239 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30889 hH))).trans (reductionSound11239 hH)
  have he1 : (blockExponent (psiExponent 14) true - psiInput663) = canonicalInput30803.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 14) true - psiInput663) =
      Integer.Sparse.eval oldProjection207 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30803 hH))).trans (oldProjectionSound207 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (24 : ℝ) * hh1

theorem psiChild663_15 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 15 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 15) false - psiInput663) - injectiveMoment H (blockExponent (psiExponent 15) true - psiInput663))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection12067) (Integer.Sparse.scale (-36 : ℤ) oldProjection207)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 15) false - psiInput663) = canonicalInput32254.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 15) false - psiInput663) =
      Integer.Sparse.eval reductionProjection12067 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32254 hH))).trans (reductionSound12067 hH)
  have he1 : (blockExponent (psiExponent 15) true - psiInput663) = canonicalInput30807.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 15) true - psiInput663) =
      Integer.Sparse.eval oldProjection207 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30807 hH))).trans (oldProjectionSound207 hH)
  change (1440 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-36 : ℝ) * hh1

theorem psiChild663_16 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * ((psiCoefficient 16 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 16) false - psiInput663) - injectiveMoment H (blockExponent (psiExponent 16) true - psiInput663))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (12 : ℤ) oldProjection62) (Integer.Sparse.scale (-12 : ℤ) oldProjection62)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - psiInput663) = canonicalInput30802.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - psiInput663) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30802 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 16) true - psiInput663) = canonicalInput30802.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) true - psiInput663) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30802 hH))).trans (oldProjectionSound62 hH)
  change (80 : ℝ) * (((12 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (12 : ℝ) * hh0 + (-12 : ℝ) * hh1

theorem psiChild663_17 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * ((psiCoefficient 17 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 17) false - psiInput663) - injectiveMoment H (blockExponent (psiExponent 17) true - psiInput663))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection7373) (Integer.Sparse.scale (576 : ℤ) oldProjection41)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 17) false - psiInput663) = canonicalInput30369.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (288 : ℝ) * injectiveMoment H (blockExponent (psiExponent 17) false - psiInput663) =
      Integer.Sparse.eval reductionProjection7373 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30369 hH))).trans (reductionSound7373 hH)
  have he1 : (blockExponent (psiExponent 17) true - psiInput663) = canonicalInput30800.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 17) true - psiInput663) =
      Integer.Sparse.eval oldProjection41 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30800 hH))).trans (oldProjectionSound41 hH)
  change (288 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (576 : ℝ) * hh1

theorem psiChild663_18 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 18 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 18) false - psiInput663) - injectiveMoment H (blockExponent (psiExponent 18) true - psiInput663))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection12067) (Integer.Sparse.scale (-270 : ℤ) oldProjection57)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 18) false - psiInput663) = canonicalInput27323.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 18) false - psiInput663) =
      Integer.Sparse.eval reductionProjection12067 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27323 hH))).trans (reductionSound12067 hH)
  have he1 : (blockExponent (psiExponent 18) true - psiInput663) = canonicalInput30798.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 18) true - psiInput663) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30798 hH))).trans (oldProjectionSound57 hH)
  change (1440 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-270 : ℝ) * hh1

theorem psiChild663_19 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 19 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 19) false - psiInput663) - injectiveMoment H (blockExponent (psiExponent 19) true - psiInput663))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection11239) (Integer.Sparse.scale (12 : ℤ) oldProjection185)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 19) false - psiInput663) = canonicalInput27198.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 19) false - psiInput663) =
      Integer.Sparse.eval reductionProjection11239 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27198 hH))).trans (reductionSound11239 hH)
  have he1 : (blockExponent (psiExponent 19) true - psiInput663) = canonicalInput30796.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 19) true - psiInput663) =
      Integer.Sparse.eval oldProjection185 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30796 hH))).trans (oldProjectionSound185 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (12 : ℝ) * hh1

end NoFourMUBs.Step2.SOS.Semantics
