import NoFourMUBs.Step2.SOS.Canonical422
import NoFourMUBs.Step2.SOS.Canonical476
import NoFourMUBs.Step2.SOS.Canonical477
import NoFourMUBs.Step2.SOS.Canonical482
import NoFourMUBs.Step2.SOS.Canonical502
import NoFourMUBs.Step2.SOS.Canonical504
import NoFourMUBs.Step2.SOS.Canonical506
import NoFourMUBs.Step2.SOS.Canonical514
import NoFourMUBs.Step2.SOS.Canonical517
import NoFourMUBs.Step2.SOS.Canonical521
import NoFourMUBs.Step2.SOS.Canonical524
import NoFourMUBs.Step2.SOS.Canonical531
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
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

theorem psiChild666_20 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 20 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 20) false - psiInput666) - injectiveMoment H (blockExponent (psiExponent 20) true - psiInput666))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection12064) (Integer.Sparse.scale (960 : ℤ) oldProjection209)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 20) false - psiInput666) = canonicalInput27015.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 20) false - psiInput666) =
      Integer.Sparse.eval reductionProjection12064 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27015 hH))).trans (reductionSound12064 hH)
  have he1 : (blockExponent (psiExponent 20) true - psiInput666) = canonicalInput30515.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (3 : ℝ) * injectiveMoment H (blockExponent (psiExponent 20) true - psiInput666) =
      Integer.Sparse.eval oldProjection209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30515 hH))).trans (oldProjectionSound209 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (960 : ℝ) * hh1

theorem psiChild666_21 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * ((psiCoefficient 21 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 21) false - psiInput666) - injectiveMoment H (blockExponent (psiExponent 21) true - psiInput666))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (1 : ℤ) reductionProjection12242) (Integer.Sparse.scale (-2 : ℤ) oldProjection125)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - psiInput666) = canonicalInput33987.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - psiInput666) =
      Integer.Sparse.eval reductionProjection12242 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33987 hH))).trans (reductionSound12242 hH)
  have he1 : (blockExponent (psiExponent 21) true - psiInput666) = canonicalInput30572.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) true - psiInput666) =
      Integer.Sparse.eval oldProjection125 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30572 hH))).trans (oldProjectionSound125 hH)
  change (2 : ℝ) * (((1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (1 : ℝ) * hh0 + (-2 : ℝ) * hh1

theorem psiChild666_22 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 22 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 22) false - psiInput666) - injectiveMoment H (blockExponent (psiExponent 22) true - psiInput666))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection12062) (Integer.Sparse.scale (-180 : ℤ) oldProjection254)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - psiInput666) = canonicalInput33572.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - psiInput666) =
      Integer.Sparse.eval reductionProjection12062 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33572 hH))).trans (reductionSound12062 hH)
  have he1 : (blockExponent (psiExponent 22) true - psiInput666) = canonicalInput30561.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (48 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) true - psiInput666) =
      Integer.Sparse.eval oldProjection254 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30561 hH))).trans (oldProjectionSound254 hH)
  change (2880 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-180 : ℝ) * hh1

theorem psiChild666_23 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 23 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 23) false - psiInput666) - injectiveMoment H (blockExponent (psiExponent 23) true - psiInput666))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection12064) (Integer.Sparse.scale (960 : ℤ) oldProjection146)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 23) false - psiInput666) = canonicalInput33385.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 23) false - psiInput666) =
      Integer.Sparse.eval reductionProjection12064 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33385 hH))).trans (reductionSound12064 hH)
  have he1 : (blockExponent (psiExponent 23) true - psiInput666) = canonicalInput30558.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (3 : ℝ) * injectiveMoment H (blockExponent (psiExponent 23) true - psiInput666) =
      Integer.Sparse.eval oldProjection146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30558 hH))).trans (oldProjectionSound146 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (960 : ℝ) * hh1

theorem psiChild666_24 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 24 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 24) false - psiInput666) - injectiveMoment H (blockExponent (psiExponent 24) true - psiInput666))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection12064) (Integer.Sparse.scale (120 : ℤ) oldProjection256)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 24) false - psiInput666) = canonicalInput33125.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 24) false - psiInput666) =
      Integer.Sparse.eval reductionProjection12064 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33125 hH))).trans (reductionSound12064 hH)
  have he1 : (blockExponent (psiExponent 24) true - psiInput666) = canonicalInput30555.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 24) true - psiInput666) =
      Integer.Sparse.eval oldProjection256 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30555 hH))).trans (oldProjectionSound256 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (120 : ℝ) * hh1

theorem psiChild666_25 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 25 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 25) false - psiInput666) - injectiveMoment H (blockExponent (psiExponent 25) true - psiInput666))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection12062) (Integer.Sparse.scale (-180 : ℤ) oldProjection153)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - psiInput666) = canonicalInput32940.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - psiInput666) =
      Integer.Sparse.eval reductionProjection12062 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32940 hH))).trans (reductionSound12062 hH)
  have he1 : (blockExponent (psiExponent 25) true - psiInput666) = canonicalInput30552.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (48 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) true - psiInput666) =
      Integer.Sparse.eval oldProjection153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30552 hH))).trans (oldProjectionSound153 hH)
  change (2880 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-180 : ℝ) * hh1

theorem psiChild666_26 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 26 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 26) false - psiInput666) - injectiveMoment H (blockExponent (psiExponent 26) true - psiInput666))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection12062) (Integer.Sparse.scale (-2160 : ℤ) oldProjection10)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 26) false - psiInput666) = canonicalInput32387.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 26) false - psiInput666) =
      Integer.Sparse.eval reductionProjection12062 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32387 hH))).trans (reductionSound12062 hH)
  have he1 : (blockExponent (psiExponent 26) true - psiInput666) = canonicalInput30540.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (4 : ℝ) * injectiveMoment H (blockExponent (psiExponent 26) true - psiInput666) =
      Integer.Sparse.eval oldProjection10 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (4 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30540 hH))).trans (oldProjectionSound10 hH)
  change (2880 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-2160 : ℝ) * hh1

theorem psiChild666_27 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 27 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 27) false - psiInput666) - injectiveMoment H (blockExponent (psiExponent 27) true - psiInput666))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection11305) (Integer.Sparse.scale (180 : ℤ) oldProjection57)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 27) false - psiInput666) = canonicalInput32261.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 27) false - psiInput666) =
      Integer.Sparse.eval reductionProjection11305 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32261 hH))).trans (reductionSound11305 hH)
  have he1 : (blockExponent (psiExponent 27) true - psiInput666) = canonicalInput30538.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 27) true - psiInput666) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30538 hH))).trans (oldProjectionSound57 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (180 : ℝ) * hh1

theorem psiChild666_28 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 28 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 28) false - psiInput666) - injectiveMoment H (blockExponent (psiExponent 28) true - psiInput666))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection11304) (Integer.Sparse.scale (720 : ℤ) oldProjection10)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - psiInput666) = canonicalInput30900.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - psiInput666) =
      Integer.Sparse.eval reductionProjection11304 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30900 hH))).trans (reductionSound11304 hH)
  have he1 : (blockExponent (psiExponent 28) true - psiInput666) = canonicalInput30525.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (4 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) true - psiInput666) =
      Integer.Sparse.eval oldProjection10 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (4 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30525 hH))).trans (oldProjectionSound10 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (720 : ℝ) * hh1

theorem psiChild666_29 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 29 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 29) false - psiInput666) - injectiveMoment H (blockExponent (psiExponent 29) true - psiInput666))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection12064) (Integer.Sparse.scale (2880 : ℤ) oldProjection36)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - psiInput666) = canonicalInput32135.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - psiInput666) =
      Integer.Sparse.eval reductionProjection12064 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32135 hH))).trans (reductionSound12064 hH)
  have he1 : (blockExponent (psiExponent 29) true - psiInput666) = canonicalInput30536.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) true - psiInput666) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30536 hH))).trans (oldProjectionSound36 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (2880 : ℝ) * hh1

end NoFourMUBs.Step2.SOS.Semantics
