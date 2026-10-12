import NoFourMUBs.Step2.SOS.Canonical363
import NoFourMUBs.Step2.SOS.Canonical364
import NoFourMUBs.Step2.SOS.Canonical369
import NoFourMUBs.Step2.SOS.Canonical370
import NoFourMUBs.Step2.SOS.Canonical371
import NoFourMUBs.Step2.SOS.Canonical422
import NoFourMUBs.Step2.SOS.Canonical423
import NoFourMUBs.Step2.SOS.Canonical425
import NoFourMUBs.Step2.SOS.Canonical473
import NoFourMUBs.Step2.SOS.Canonical475
import NoFourMUBs.Step2.SOS.Canonical479
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

theorem psiChild661_30 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 30 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 30) false - psiInput661) - injectiveMoment H (blockExponent (psiExponent 30) true - psiInput661))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection11239) (Integer.Sparse.scale (2880 : ℤ) oldProjection41)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 30) false - psiInput661) = canonicalInput30433.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 30) false - psiInput661) =
      Integer.Sparse.eval reductionProjection11239 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30433 hH))).trans (reductionSound11239 hH)
  have he1 : (blockExponent (psiExponent 30) true - psiInput661) = canonicalInput30702.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 30) true - psiInput661) =
      Integer.Sparse.eval oldProjection41 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30702 hH))).trans (oldProjectionSound41 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (2880 : ℝ) * hh1

theorem psiChild661_31 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 31 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 31) false - psiInput661) - injectiveMoment H (blockExponent (psiExponent 31) true - psiInput661))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection11239) (Integer.Sparse.scale (36 : ℤ) oldProjection62)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 31) false - psiInput661) = canonicalInput30306.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 31) false - psiInput661) =
      Integer.Sparse.eval reductionProjection11239 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30306 hH))).trans (reductionSound11239 hH)
  have he1 : (blockExponent (psiExponent 31) true - psiInput661) = canonicalInput30698.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 31) true - psiInput661) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30698 hH))).trans (oldProjectionSound62 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (36 : ℝ) * hh1

theorem psiChild661_32 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 32 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 32) false - psiInput661) - injectiveMoment H (blockExponent (psiExponent 32) true - psiInput661))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11175) (Integer.Sparse.scale (360 : ℤ) oldProjection63)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - psiInput661) = canonicalInput27260.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - psiInput661) =
      Integer.Sparse.eval reductionProjection11175 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27260 hH))).trans (reductionSound11175 hH)
  have he1 : (blockExponent (psiExponent 32) true - psiInput661) = canonicalInput30692.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (8 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) true - psiInput661) =
      Integer.Sparse.eval oldProjection63 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (8 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30692 hH))).trans (oldProjectionSound63 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (360 : ℝ) * hh1

theorem psiChild661_33 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 33 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 33) false - psiInput661) - injectiveMoment H (blockExponent (psiExponent 33) true - psiInput661))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection11239) (Integer.Sparse.scale (36 : ℤ) oldProjection62)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 33) false - psiInput661) = canonicalInput27135.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 33) false - psiInput661) =
      Integer.Sparse.eval reductionProjection11239 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27135 hH))).trans (reductionSound11239 hH)
  have he1 : (blockExponent (psiExponent 33) true - psiInput661) = canonicalInput30688.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 33) true - psiInput661) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30688 hH))).trans (oldProjectionSound62 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (36 : ℝ) * hh1

theorem psiChild661_34 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * ((psiCoefficient 34 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 34) false - psiInput661) - injectiveMoment H (blockExponent (psiExponent 34) true - psiInput661))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection12077) (Integer.Sparse.scale (-18 : ℤ) oldProjection61)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - psiInput661) = canonicalInput27010.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - psiInput661) =
      Integer.Sparse.eval reductionProjection12077 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27010 hH))).trans (reductionSound12077 hH)
  have he1 : (blockExponent (psiExponent 34) true - psiInput661) = canonicalInput30684.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) true - psiInput661) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30684 hH))).trans (oldProjectionSound61 hH)
  change (480 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-18 : ℝ) * hh1

theorem psiChild661_35 {H : CMatrix} (hH : IsHadamard H) :
    (160 : ℝ) * ((psiCoefficient 35 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 35) false - psiInput661) - injectiveMoment H (blockExponent (psiExponent 35) true - psiInput661))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (1 : ℤ) reductionProjection7174) (Integer.Sparse.scale (-160 : ℤ) oldProjection37)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - psiInput661) = canonicalInput23753.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (160 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - psiInput661) =
      Integer.Sparse.eval reductionProjection7174 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (160 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23753 hH))).trans (reductionSound7174 hH)
  have he1 : (blockExponent (psiExponent 35) true - psiInput661) = canonicalInput30669.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) true - psiInput661) =
      Integer.Sparse.eval oldProjection37 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30669 hH))).trans (oldProjectionSound37 hH)
  change (160 : ℝ) * (((1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (1 : ℝ) * hh0 + (-160 : ℝ) * hh1

theorem psiChild661_36 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 36 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 36) false - psiInput661) - injectiveMoment H (blockExponent (psiExponent 36) true - psiInput661))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11175) (Integer.Sparse.scale (2880 : ℤ) oldProjection36)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 36) false - psiInput661) = canonicalInput23686.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 36) false - psiInput661) =
      Integer.Sparse.eval reductionProjection11175 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23686 hH))).trans (reductionSound11175 hH)
  have he1 : (blockExponent (psiExponent 36) true - psiInput661) = canonicalInput30668.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 36) true - psiInput661) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30668 hH))).trans (oldProjectionSound36 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (2880 : ℝ) * hh1

theorem psiChild661_37 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 37 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 37) false - psiInput661) - injectiveMoment H (blockExponent (psiExponent 37) true - psiInput661))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11175) (Integer.Sparse.scale (2880 : ℤ) oldProjection36)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 37) false - psiInput661) = canonicalInput23312.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 37) false - psiInput661) =
      Integer.Sparse.eval reductionProjection11175 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23312 hH))).trans (reductionSound11175 hH)
  have he1 : (blockExponent (psiExponent 37) true - psiInput661) = canonicalInput30665.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 37) true - psiInput661) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30665 hH))).trans (oldProjectionSound36 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (2880 : ℝ) * hh1

theorem psiChild661_38 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * ((psiCoefficient 38 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 38) false - psiInput661) - injectiveMoment H (blockExponent (psiExponent 38) true - psiInput661))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection12077) (Integer.Sparse.scale (-18 : ℤ) oldProjection62)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 38) false - psiInput661) = canonicalInput23247.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 38) false - psiInput661) =
      Integer.Sparse.eval reductionProjection12077 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23247 hH))).trans (reductionSound12077 hH)
  have he1 : (blockExponent (psiExponent 38) true - psiInput661) = canonicalInput30662.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 38) true - psiInput661) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30662 hH))).trans (oldProjectionSound62 hH)
  change (480 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-18 : ℝ) * hh1

theorem psiChild661_39 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 39 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 39) false - psiInput661) - injectiveMoment H (blockExponent (psiExponent 39) true - psiInput661))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11175) (Integer.Sparse.scale (180 : ℤ) oldProjection57)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 39) false - psiInput661) = canonicalInput23617.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 39) false - psiInput661) =
      Integer.Sparse.eval reductionProjection11175 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23617 hH))).trans (reductionSound11175 hH)
  have he1 : (blockExponent (psiExponent 39) true - psiInput661) = canonicalInput30667.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 39) true - psiInput661) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30667 hH))).trans (oldProjectionSound57 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (180 : ℝ) * hh1

end NoFourMUBs.Step2.SOS.Semantics
