import NoFourMUBs.Step2.SOS.Canonical363
import NoFourMUBs.Step2.SOS.Canonical364
import NoFourMUBs.Step2.SOS.Canonical369
import NoFourMUBs.Step2.SOS.Canonical370
import NoFourMUBs.Step2.SOS.Canonical371
import NoFourMUBs.Step2.SOS.Canonical422
import NoFourMUBs.Step2.SOS.Canonical424
import NoFourMUBs.Step2.SOS.Canonical425
import NoFourMUBs.Step2.SOS.Canonical473
import NoFourMUBs.Step2.SOS.Canonical475
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
import NoFourMUBs.Step2.SOS.Reductions374
import NoFourMUBs.Step2.SOS.Reductions377

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 20000
set_option maxHeartbeats 4000000

theorem psiChild663_30 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 30 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 30) false - psiInput663) - injectiveMoment H (blockExponent (psiExponent 30) true - psiInput663))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection11239) (Integer.Sparse.scale (12 : ℤ) oldProjection291)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 30) false - psiInput663) = canonicalInput30435.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 30) false - psiInput663) =
      Integer.Sparse.eval reductionProjection11239 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30435 hH))).trans (reductionSound11239 hH)
  have he1 : (blockExponent (psiExponent 30) true - psiInput663) = canonicalInput30801.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 30) true - psiInput663) =
      Integer.Sparse.eval oldProjection291 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30801 hH))).trans (oldProjectionSound291 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (12 : ℝ) * hh1

theorem psiChild663_31 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 31 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 31) false - psiInput663) - injectiveMoment H (blockExponent (psiExponent 31) true - psiInput663))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-10 : ℤ) reductionProjection7373) (Integer.Sparse.scale (12 : ℤ) oldProjection203)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 31) false - psiInput663) = canonicalInput30308.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (288 : ℝ) * injectiveMoment H (blockExponent (psiExponent 31) false - psiInput663) =
      Integer.Sparse.eval reductionProjection7373 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30308 hH))).trans (reductionSound7373 hH)
  have he1 : (blockExponent (psiExponent 31) true - psiInput663) = canonicalInput30799.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 31) true - psiInput663) =
      Integer.Sparse.eval oldProjection203 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30799 hH))).trans (oldProjectionSound203 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-10 : ℝ) * hh0 + (12 : ℝ) * hh1

theorem psiChild663_32 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * ((psiCoefficient 32 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 32) false - psiInput663) - injectiveMoment H (blockExponent (psiExponent 32) true - psiInput663))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11989) (Integer.Sparse.scale (180 : ℤ) oldProjection10)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - psiInput663) = canonicalInput27262.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (720 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - psiInput663) =
      Integer.Sparse.eval reductionProjection11989 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27262 hH))).trans (reductionSound11989 hH)
  have he1 : (blockExponent (psiExponent 32) true - psiInput663) = canonicalInput30797.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (4 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) true - psiInput663) =
      Integer.Sparse.eval oldProjection10 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (4 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30797 hH))).trans (oldProjectionSound10 hH)
  change (720 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (180 : ℝ) * hh1

theorem psiChild663_33 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 33 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 33) false - psiInput663) - injectiveMoment H (blockExponent (psiExponent 33) true - psiInput663))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection11239) (Integer.Sparse.scale (12 : ℤ) oldProjection272)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 33) false - psiInput663) = canonicalInput27137.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 33) false - psiInput663) =
      Integer.Sparse.eval reductionProjection11239 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27137 hH))).trans (reductionSound11239 hH)
  have he1 : (blockExponent (psiExponent 33) true - psiInput663) = canonicalInput30795.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 33) true - psiInput663) =
      Integer.Sparse.eval oldProjection272 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30795 hH))).trans (oldProjectionSound272 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (12 : ℝ) * hh1

theorem psiChild663_34 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 34 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 34) false - psiInput663) - injectiveMoment H (blockExponent (psiExponent 34) true - psiInput663))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection12067) (Integer.Sparse.scale (-1440 : ℤ) oldProjection177)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - psiInput663) = canonicalInput27012.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - psiInput663) =
      Integer.Sparse.eval reductionProjection12067 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27012 hH))).trans (reductionSound12067 hH)
  have he1 : (blockExponent (psiExponent 34) true - psiInput663) = canonicalInput30793.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (3 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) true - psiInput663) =
      Integer.Sparse.eval oldProjection177 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30793 hH))).trans (oldProjectionSound177 hH)
  change (1440 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-1440 : ℝ) * hh1

theorem psiChild663_35 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * ((psiCoefficient 35 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 35) false - psiInput663) - injectiveMoment H (blockExponent (psiExponent 35) true - psiInput663))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (1 : ℤ) reductionProjection11236) (Integer.Sparse.scale (-6 : ℤ) oldProjection62)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - psiInput663) = canonicalInput23755.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - psiInput663) =
      Integer.Sparse.eval reductionProjection11236 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23755 hH))).trans (reductionSound11236 hH)
  have he1 : (blockExponent (psiExponent 35) true - psiInput663) = canonicalInput30792.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) true - psiInput663) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30792 hH))).trans (oldProjectionSound62 hH)
  change (480 : ℝ) * (((1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (1 : ℝ) * hh0 + (-6 : ℝ) * hh1

theorem psiChild663_36 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * ((psiCoefficient 36 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 36) false - psiInput663) - injectiveMoment H (blockExponent (psiExponent 36) true - psiInput663))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11989) (Integer.Sparse.scale (36 : ℤ) oldProjection11)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 36) false - psiInput663) = canonicalInput23688.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (720 : ℝ) * injectiveMoment H (blockExponent (psiExponent 36) false - psiInput663) =
      Integer.Sparse.eval reductionProjection11989 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23688 hH))).trans (reductionSound11989 hH)
  have he1 : (blockExponent (psiExponent 36) true - psiInput663) = canonicalInput30791.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 36) true - psiInput663) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30791 hH))).trans (oldProjectionSound11 hH)
  change (720 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (36 : ℝ) * hh1

theorem psiChild663_37 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 37 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 37) false - psiInput663) - injectiveMoment H (blockExponent (psiExponent 37) true - psiInput663))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11268) (Integer.Sparse.scale (36 : ℤ) oldProjection294)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 37) false - psiInput663) = canonicalInput23314.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 37) false - psiInput663) =
      Integer.Sparse.eval reductionProjection11268 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23314 hH))).trans (reductionSound11268 hH)
  have he1 : (blockExponent (psiExponent 37) true - psiInput663) = canonicalInput30788.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (40 : ℝ) * injectiveMoment H (blockExponent (psiExponent 37) true - psiInput663) =
      Integer.Sparse.eval oldProjection294 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (40 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30788 hH))).trans (oldProjectionSound294 hH)
  change (1440 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (36 : ℝ) * hh1

theorem psiChild663_38 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 38 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 38) false - psiInput663) - injectiveMoment H (blockExponent (psiExponent 38) true - psiInput663))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection12067) (Integer.Sparse.scale (-108 : ℤ) oldProjection294)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 38) false - psiInput663) = canonicalInput23249.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 38) false - psiInput663) =
      Integer.Sparse.eval reductionProjection12067 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23249 hH))).trans (reductionSound12067 hH)
  have he1 : (blockExponent (psiExponent 38) true - psiInput663) = canonicalInput30787.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (40 : ℝ) * injectiveMoment H (blockExponent (psiExponent 38) true - psiInput663) =
      Integer.Sparse.eval oldProjection294 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (40 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30787 hH))).trans (oldProjectionSound294 hH)
  change (1440 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-108 : ℝ) * hh1

theorem psiChild663_39 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * ((psiCoefficient 39 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 39) false - psiInput663) - injectiveMoment H (blockExponent (psiExponent 39) true - psiInput663))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11989) (Integer.Sparse.scale (9 : ℤ) oldProjection62)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 39) false - psiInput663) = canonicalInput23619.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (720 : ℝ) * injectiveMoment H (blockExponent (psiExponent 39) false - psiInput663) =
      Integer.Sparse.eval reductionProjection11989 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23619 hH))).trans (reductionSound11989 hH)
  have he1 : (blockExponent (psiExponent 39) true - psiInput663) = canonicalInput30790.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 39) true - psiInput663) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30790 hH))).trans (oldProjectionSound62 hH)
  change (720 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (9 : ℝ) * hh1

end NoFourMUBs.Step2.SOS.Semantics
