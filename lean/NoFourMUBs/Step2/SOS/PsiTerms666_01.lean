import NoFourMUBs.Step2.SOS.Canonical424
import NoFourMUBs.Step2.SOS.Canonical426
import NoFourMUBs.Step2.SOS.Canonical473
import NoFourMUBs.Step2.SOS.Canonical476
import NoFourMUBs.Step2.SOS.Canonical477
import NoFourMUBs.Step2.SOS.Canonical481
import NoFourMUBs.Step2.SOS.Canonical483
import NoFourMUBs.Step2.SOS.Canonical503
import NoFourMUBs.Step2.SOS.Canonical505
import NoFourMUBs.Step2.SOS.Canonical507
import NoFourMUBs.Step2.SOS.Canonical515
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.PsiRowInputs
import NoFourMUBs.Step2.SOS.Reductions353
import NoFourMUBs.Step2.SOS.Reductions376
import NoFourMUBs.Step2.SOS.Reductions377

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 20000
set_option maxHeartbeats 4000000

theorem psiChild666_10 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 10 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 10) false - psiInput666) - injectiveMoment H (blockExponent (psiExponent 10) true - psiInput666))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection11304) (Integer.Sparse.scale (2880 : ℤ) oldProjection31)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - psiInput666) = canonicalInput33001.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - psiInput666) =
      Integer.Sparse.eval reductionProjection11304 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33001 hH))).trans (reductionSound11304 hH)
  have he1 : (blockExponent (psiExponent 10) true - psiInput666) = canonicalInput30553.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) true - psiInput666) =
      Integer.Sparse.eval oldProjection31 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30553 hH))).trans (oldProjectionSound31 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (2880 : ℝ) * hh1

theorem psiChild666_11 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 11 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 11) false - psiInput666) - injectiveMoment H (blockExponent (psiExponent 11) true - psiInput666))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection12064) (Integer.Sparse.scale (60 : ℤ) oldProjection280)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 11) false - psiInput666) = canonicalInput32448.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 11) false - psiInput666) =
      Integer.Sparse.eval reductionProjection12064 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32448 hH))).trans (reductionSound12064 hH)
  have he1 : (blockExponent (psiExponent 11) true - psiInput666) = canonicalInput30541.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (48 : ℝ) * injectiveMoment H (blockExponent (psiExponent 11) true - psiInput666) =
      Integer.Sparse.eval oldProjection280 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30541 hH))).trans (oldProjectionSound280 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (60 : ℝ) * hh1

theorem psiChild666_12 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 12 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 12) false - psiInput666) - injectiveMoment H (blockExponent (psiExponent 12) true - psiInput666))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection11305) (Integer.Sparse.scale (12 : ℤ) oldProjection272)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 12) false - psiInput666) = canonicalInput32322.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 12) false - psiInput666) =
      Integer.Sparse.eval reductionProjection11305 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32322 hH))).trans (reductionSound11305 hH)
  have he1 : (blockExponent (psiExponent 12) true - psiInput666) = canonicalInput30539.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 12) true - psiInput666) =
      Integer.Sparse.eval oldProjection272 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30539 hH))).trans (oldProjectionSound272 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (12 : ℝ) * hh1

theorem psiChild666_13 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 13 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 13) false - psiInput666) - injectiveMoment H (blockExponent (psiExponent 13) true - psiInput666))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection11304) (Integer.Sparse.scale (360 : ℤ) oldProjection292)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 13) false - psiInput666) = canonicalInput30961.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 13) false - psiInput666) =
      Integer.Sparse.eval reductionProjection11304 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30961 hH))).trans (reductionSound11304 hH)
  have he1 : (blockExponent (psiExponent 13) true - psiInput666) = canonicalInput30526.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (8 : ℝ) * injectiveMoment H (blockExponent (psiExponent 13) true - psiInput666) =
      Integer.Sparse.eval oldProjection292 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (8 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30526 hH))).trans (oldProjectionSound292 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (360 : ℝ) * hh1

theorem psiChild666_14 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 14 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 14) false - psiInput666) - injectiveMoment H (blockExponent (psiExponent 14) true - psiInput666))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection11305) (Integer.Sparse.scale (60 : ℤ) oldProjection226)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 14) false - psiInput666) = canonicalInput30831.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 14) false - psiInput666) =
      Integer.Sparse.eval reductionProjection11305 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30831 hH))).trans (reductionSound11305 hH)
  have he1 : (blockExponent (psiExponent 14) true - psiInput666) = canonicalInput30524.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (48 : ℝ) * injectiveMoment H (blockExponent (psiExponent 14) true - psiInput666) =
      Integer.Sparse.eval oldProjection226 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30524 hH))).trans (oldProjectionSound226 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (60 : ℝ) * hh1

theorem psiChild666_15 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 15 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 15) false - psiInput666) - injectiveMoment H (blockExponent (psiExponent 15) true - psiInput666))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection12062) (Integer.Sparse.scale (-36 : ℤ) oldProjection185)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 15) false - psiInput666) = canonicalInput32196.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 15) false - psiInput666) =
      Integer.Sparse.eval reductionProjection12062 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32196 hH))).trans (reductionSound12062 hH)
  have he1 : (blockExponent (psiExponent 15) true - psiInput666) = canonicalInput30537.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 15) true - psiInput666) =
      Integer.Sparse.eval oldProjection185 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30537 hH))).trans (oldProjectionSound185 hH)
  change (2880 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-36 : ℝ) * hh1

theorem psiChild666_16 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * ((psiCoefficient 16 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 16) false - psiInput666) - injectiveMoment H (blockExponent (psiExponent 16) true - psiInput666))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (12 : ℤ) oldProjection57) (Integer.Sparse.scale (-12 : ℤ) oldProjection57)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - psiInput666) = canonicalInput30523.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - psiInput666) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30523 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 16) true - psiInput666) = canonicalInput30523.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) true - psiInput666) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30523 hH))).trans (oldProjectionSound57 hH)
  change (16 : ℝ) * (((12 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (12 : ℝ) * hh0 + (-12 : ℝ) * hh1

theorem psiChild666_17 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 17 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 17) false - psiInput666) - injectiveMoment H (blockExponent (psiExponent 17) true - psiInput666))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection11304) (Integer.Sparse.scale (2880 : ℤ) oldProjection36)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 17) false - psiInput666) = canonicalInput30311.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 17) false - psiInput666) =
      Integer.Sparse.eval reductionProjection11304 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30311 hH))).trans (reductionSound11304 hH)
  have he1 : (blockExponent (psiExponent 17) true - psiInput666) = canonicalInput30521.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 17) true - psiInput666) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30521 hH))).trans (oldProjectionSound36 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (2880 : ℝ) * hh1

theorem psiChild666_18 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 18 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 18) false - psiInput666) - injectiveMoment H (blockExponent (psiExponent 18) true - psiInput666))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection12062) (Integer.Sparse.scale (-180 : ℤ) oldProjection280)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 18) false - psiInput666) = canonicalInput27265.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 18) false - psiInput666) =
      Integer.Sparse.eval reductionProjection12062 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27265 hH))).trans (reductionSound12062 hH)
  have he1 : (blockExponent (psiExponent 18) true - psiInput666) = canonicalInput30519.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (48 : ℝ) * injectiveMoment H (blockExponent (psiExponent 18) true - psiInput666) =
      Integer.Sparse.eval oldProjection280 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30519 hH))).trans (oldProjectionSound280 hH)
  change (2880 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-180 : ℝ) * hh1

theorem psiChild666_19 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 19 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 19) false - psiInput666) - injectiveMoment H (blockExponent (psiExponent 19) true - psiInput666))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection11305) (Integer.Sparse.scale (60 : ℤ) oldProjection169)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 19) false - psiInput666) = canonicalInput27140.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 19) false - psiInput666) =
      Integer.Sparse.eval reductionProjection11305 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27140 hH))).trans (reductionSound11305 hH)
  have he1 : (blockExponent (psiExponent 19) true - psiInput666) = canonicalInput30517.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (48 : ℝ) * injectiveMoment H (blockExponent (psiExponent 19) true - psiInput666) =
      Integer.Sparse.eval oldProjection169 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30517 hH))).trans (oldProjectionSound169 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (60 : ℝ) * hh1

end NoFourMUBs.Step2.SOS.Semantics
