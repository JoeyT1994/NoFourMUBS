import NoFourMUBs.Step2.SOS.Canonical362
import NoFourMUBs.Step2.SOS.Canonical363
import NoFourMUBs.Step2.SOS.Canonical368
import NoFourMUBs.Step2.SOS.Canonical369
import NoFourMUBs.Step2.SOS.Canonical370
import NoFourMUBs.Step2.SOS.Canonical421
import NoFourMUBs.Step2.SOS.Canonical423
import NoFourMUBs.Step2.SOS.Canonical425
import NoFourMUBs.Step2.SOS.Canonical472
import NoFourMUBs.Step2.SOS.Canonical474
import NoFourMUBs.Step2.SOS.Canonical476
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.PsiRowInputs
import NoFourMUBs.Step2.SOS.Reductions353
import NoFourMUBs.Step2.SOS.Reductions376
import NoFourMUBs.Step2.SOS.Reductions377
import NoFourMUBs.Step2.SOS.Reductions382

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 20000
set_option maxHeartbeats 4000000

theorem psiChild666_30 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 30 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 30) false - psiInput666) - injectiveMoment H (blockExponent (psiExponent 30) true - psiInput666))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection11305) (Integer.Sparse.scale (12 : ℤ) oldProjection272)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 30) false - psiInput666) = canonicalInput30377.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 30) false - psiInput666) =
      Integer.Sparse.eval reductionProjection11305 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30377 hH))).trans (reductionSound11305 hH)
  have he1 : (blockExponent (psiExponent 30) true - psiInput666) = canonicalInput30522.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 30) true - psiInput666) =
      Integer.Sparse.eval oldProjection272 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30522 hH))).trans (oldProjectionSound272 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (12 : ℝ) * hh1

theorem psiChild666_31 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 31 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 31) false - psiInput666) - injectiveMoment H (blockExponent (psiExponent 31) true - psiInput666))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection11304) (Integer.Sparse.scale (12 : ℤ) oldProjection185)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 31) false - psiInput666) = canonicalInput30250.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 31) false - psiInput666) =
      Integer.Sparse.eval reductionProjection11304 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30250 hH))).trans (reductionSound11304 hH)
  have he1 : (blockExponent (psiExponent 31) true - psiInput666) = canonicalInput30520.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 31) true - psiInput666) =
      Integer.Sparse.eval oldProjection185 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30520 hH))).trans (oldProjectionSound185 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (12 : ℝ) * hh1

theorem psiChild666_32 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 32 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 32) false - psiInput666) - injectiveMoment H (blockExponent (psiExponent 32) true - psiInput666))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection12064) (Integer.Sparse.scale (480 : ℤ) oldProjection25)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - psiInput666) = canonicalInput27204.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - psiInput666) =
      Integer.Sparse.eval reductionProjection12064 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27204 hH))).trans (reductionSound12064 hH)
  have he1 : (blockExponent (psiExponent 32) true - psiInput666) = canonicalInput30518.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (6 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) true - psiInput666) =
      Integer.Sparse.eval oldProjection25 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30518 hH))).trans (oldProjectionSound25 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (480 : ℝ) * hh1

theorem psiChild666_33 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 33 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 33) false - psiInput666) - injectiveMoment H (blockExponent (psiExponent 33) true - psiInput666))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection11305) (Integer.Sparse.scale (12 : ℤ) oldProjection268)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 33) false - psiInput666) = canonicalInput27079.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 33) false - psiInput666) =
      Integer.Sparse.eval reductionProjection11305 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27079 hH))).trans (reductionSound11305 hH)
  have he1 : (blockExponent (psiExponent 33) true - psiInput666) = canonicalInput30516.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 33) true - psiInput666) =
      Integer.Sparse.eval oldProjection268 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30516 hH))).trans (oldProjectionSound268 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (12 : ℝ) * hh1

theorem psiChild666_34 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 34 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 34) false - psiInput666) - injectiveMoment H (blockExponent (psiExponent 34) true - psiInput666))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection12062) (Integer.Sparse.scale (-180 : ℤ) oldProjection169)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - psiInput666) = canonicalInput26954.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - psiInput666) =
      Integer.Sparse.eval reductionProjection12062 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound26954 hH))).trans (reductionSound12062 hH)
  have he1 : (blockExponent (psiExponent 34) true - psiInput666) = canonicalInput30514.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (48 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) true - psiInput666) =
      Integer.Sparse.eval oldProjection169 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30514 hH))).trans (oldProjectionSound169 hH)
  change (2880 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-180 : ℝ) * hh1

theorem psiChild666_35 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * ((psiCoefficient 35 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 35) false - psiInput666) - injectiveMoment H (blockExponent (psiExponent 35) true - psiInput666))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (120 : ℤ) reductionProjection12242) (Integer.Sparse.scale (-1 : ℤ) oldProjection268)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - psiInput666) = canonicalInput23697.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - psiInput666) =
      Integer.Sparse.eval reductionProjection12242 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23697 hH))).trans (reductionSound12242 hH)
  have he1 : (blockExponent (psiExponent 35) true - psiInput666) = canonicalInput30503.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) true - psiInput666) =
      Integer.Sparse.eval oldProjection268 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30503 hH))).trans (oldProjectionSound268 hH)
  change (240 : ℝ) * (((1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (120 : ℝ) * hh0 + (-1 : ℝ) * hh1

theorem psiChild666_36 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 36 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 36) false - psiInput666) - injectiveMoment H (blockExponent (psiExponent 36) true - psiInput666))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection12064) (Integer.Sparse.scale (48 : ℤ) oldProjection46)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 36) false - psiInput666) = canonicalInput23630.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 36) false - psiInput666) =
      Integer.Sparse.eval reductionProjection12064 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23630 hH))).trans (reductionSound12064 hH)
  have he1 : (blockExponent (psiExponent 36) true - psiInput666) = canonicalInput30502.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (60 : ℝ) * injectiveMoment H (blockExponent (psiExponent 36) true - psiInput666) =
      Integer.Sparse.eval oldProjection46 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (60 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30502 hH))).trans (oldProjectionSound46 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (48 : ℝ) * hh1

theorem psiChild666_37 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 37 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 37) false - psiInput666) - injectiveMoment H (blockExponent (psiExponent 37) true - psiInput666))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11297) (Integer.Sparse.scale (90 : ℤ) oldProjection57)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 37) false - psiInput666) = canonicalInput23256.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 37) false - psiInput666) =
      Integer.Sparse.eval reductionProjection11297 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23256 hH))).trans (reductionSound11297 hH)
  have he1 : (blockExponent (psiExponent 37) true - psiInput666) = canonicalInput30489.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 37) true - psiInput666) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30489 hH))).trans (oldProjectionSound57 hH)
  change (1440 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (90 : ℝ) * hh1

theorem psiChild666_38 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 38 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 38) false - psiInput666) - injectiveMoment H (blockExponent (psiExponent 38) true - psiInput666))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection12062) (Integer.Sparse.scale (-36 : ℤ) oldProjection291)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 38) false - psiInput666) = canonicalInput23191.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 38) false - psiInput666) =
      Integer.Sparse.eval reductionProjection12062 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23191 hH))).trans (reductionSound12062 hH)
  have he1 : (blockExponent (psiExponent 38) true - psiInput666) = canonicalInput30488.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 38) true - psiInput666) =
      Integer.Sparse.eval oldProjection291 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30488 hH))).trans (oldProjectionSound291 hH)
  change (2880 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-36 : ℝ) * hh1

theorem psiChild666_39 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 39 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 39) false - psiInput666) - injectiveMoment H (blockExponent (psiExponent 39) true - psiInput666))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection12064) (Integer.Sparse.scale (12 : ℤ) oldProjection284)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 39) false - psiInput666) = canonicalInput23561.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 39) false - psiInput666) =
      Integer.Sparse.eval reductionProjection12064 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23561 hH))).trans (reductionSound12064 hH)
  have he1 : (blockExponent (psiExponent 39) true - psiInput666) = canonicalInput30501.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 39) true - psiInput666) =
      Integer.Sparse.eval oldProjection284 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30501 hH))).trans (oldProjectionSound284 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (12 : ℝ) * hh1

end NoFourMUBs.Step2.SOS.Semantics
