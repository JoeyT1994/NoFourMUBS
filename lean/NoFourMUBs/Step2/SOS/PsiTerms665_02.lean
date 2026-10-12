import NoFourMUBs.Step2.SOS.Canonical423
import NoFourMUBs.Step2.SOS.Canonical480
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
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.PsiRowInputs
import NoFourMUBs.Step2.SOS.Reductions317
import NoFourMUBs.Step2.SOS.Reductions353
import NoFourMUBs.Step2.SOS.Reductions377

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 20000
set_option maxHeartbeats 4000000

theorem psiChild665_20 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 20 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 20) false - psiInput665) - injectiveMoment H (blockExponent (psiExponent 20) true - psiInput665))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11308) (Integer.Sparse.scale (2880 : ℤ) oldProjection43)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 20) false - psiInput665) = canonicalInput27072.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 20) false - psiInput665) =
      Integer.Sparse.eval reductionProjection11308 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27072 hH))).trans (reductionSound11308 hH)
  have he1 : (blockExponent (psiExponent 20) true - psiInput665) = canonicalInput30722.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 20) true - psiInput665) =
      Integer.Sparse.eval oldProjection43 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30722 hH))).trans (oldProjectionSound43 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (2880 : ℝ) * hh1

theorem psiChild665_21 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * ((psiCoefficient 21 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 21) false - psiInput665) - injectiveMoment H (blockExponent (psiExponent 21) true - psiInput665))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (1 : ℤ) reductionProjection10163) (Integer.Sparse.scale (-1 : ℤ) oldProjection27)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - psiInput665) = canonicalInput34044.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - psiInput665) =
      Integer.Sparse.eval reductionProjection10163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34044 hH))).trans (reductionSound10163 hH)
  have he1 : (blockExponent (psiExponent 21) true - psiInput665) = canonicalInput30769.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) true - psiInput665) =
      Integer.Sparse.eval oldProjection27 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30769 hH))).trans (oldProjectionSound27 hH)
  change (1 : ℝ) * (((1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (1 : ℝ) * hh0 + (-1 : ℝ) * hh1

theorem psiChild665_22 {H : CMatrix} (hH : IsHadamard H) :
    (960 : ℝ) * ((psiCoefficient 22 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 22) false - psiInput665) - injectiveMoment H (blockExponent (psiExponent 22) true - psiInput665))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection12073) (Integer.Sparse.scale (-180 : ℤ) oldProjection51)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - psiInput665) = canonicalInput33629.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (960 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - psiInput665) =
      Integer.Sparse.eval reductionProjection12073 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (960 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33629 hH))).trans (reductionSound12073 hH)
  have he1 : (blockExponent (psiExponent 22) true - psiInput665) = canonicalInput30766.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) true - psiInput665) =
      Integer.Sparse.eval oldProjection51 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30766 hH))).trans (oldProjectionSound51 hH)
  change (960 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-180 : ℝ) * hh1

theorem psiChild665_23 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 23 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 23) false - psiInput665) - injectiveMoment H (blockExponent (psiExponent 23) true - psiInput665))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11308) (Integer.Sparse.scale (180 : ℤ) oldProjection52)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 23) false - psiInput665) = canonicalInput33442.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 23) false - psiInput665) =
      Integer.Sparse.eval reductionProjection11308 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33442 hH))).trans (reductionSound11308 hH)
  have he1 : (blockExponent (psiExponent 23) true - psiInput665) = canonicalInput30761.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 23) true - psiInput665) =
      Integer.Sparse.eval oldProjection52 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30761 hH))).trans (oldProjectionSound52 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (180 : ℝ) * hh1

theorem psiChild665_24 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 24 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 24) false - psiInput665) - injectiveMoment H (blockExponent (psiExponent 24) true - psiInput665))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11308) (Integer.Sparse.scale (180 : ℤ) oldProjection52)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 24) false - psiInput665) = canonicalInput33182.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 24) false - psiInput665) =
      Integer.Sparse.eval reductionProjection11308 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33182 hH))).trans (reductionSound11308 hH)
  have he1 : (blockExponent (psiExponent 24) true - psiInput665) = canonicalInput30758.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 24) true - psiInput665) =
      Integer.Sparse.eval oldProjection52 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30758 hH))).trans (oldProjectionSound52 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (180 : ℝ) * hh1

theorem psiChild665_25 {H : CMatrix} (hH : IsHadamard H) :
    (960 : ℝ) * ((psiCoefficient 25 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 25) false - psiInput665) - injectiveMoment H (blockExponent (psiExponent 25) true - psiInput665))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection12073) (Integer.Sparse.scale (-2880 : ℤ) oldProjection35)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - psiInput665) = canonicalInput32997.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (960 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - psiInput665) =
      Integer.Sparse.eval reductionProjection12073 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (960 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32997 hH))).trans (reductionSound12073 hH)
  have he1 : (blockExponent (psiExponent 25) true - psiInput665) = canonicalInput30754.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) true - psiInput665) =
      Integer.Sparse.eval oldProjection35 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30754 hH))).trans (oldProjectionSound35 hH)
  change (960 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-2880 : ℝ) * hh1

theorem psiChild665_26 {H : CMatrix} (hH : IsHadamard H) :
    (960 : ℝ) * ((psiCoefficient 26 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 26) false - psiInput665) - injectiveMoment H (blockExponent (psiExponent 26) true - psiInput665))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection12073) (Integer.Sparse.scale (-2880 : ℤ) oldProjection3)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 26) false - psiInput665) = canonicalInput32444.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (960 : ℝ) * injectiveMoment H (blockExponent (psiExponent 26) false - psiInput665) =
      Integer.Sparse.eval reductionProjection12073 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (960 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32444 hH))).trans (reductionSound12073 hH)
  have he1 : (blockExponent (psiExponent 26) true - psiInput665) = canonicalInput30751.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 26) true - psiInput665) =
      Integer.Sparse.eval oldProjection3 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30751 hH))).trans (oldProjectionSound3 hH)
  change (960 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-2880 : ℝ) * hh1

theorem psiChild665_27 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 27 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 27) false - psiInput665) - injectiveMoment H (blockExponent (psiExponent 27) true - psiInput665))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection11305) (Integer.Sparse.scale (720 : ℤ) oldProjection10)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 27) false - psiInput665) = canonicalInput32318.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 27) false - psiInput665) =
      Integer.Sparse.eval reductionProjection11305 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32318 hH))).trans (reductionSound11305 hH)
  have he1 : (blockExponent (psiExponent 27) true - psiInput665) = canonicalInput30747.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (4 : ℝ) * injectiveMoment H (blockExponent (psiExponent 27) true - psiInput665) =
      Integer.Sparse.eval oldProjection10 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (4 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30747 hH))).trans (oldProjectionSound10 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (720 : ℝ) * hh1

theorem psiChild665_28 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 28 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 28) false - psiInput665) - injectiveMoment H (blockExponent (psiExponent 28) true - psiInput665))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection11305) (Integer.Sparse.scale (720 : ℤ) oldProjection10)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - psiInput665) = canonicalInput30957.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - psiInput665) =
      Integer.Sparse.eval reductionProjection11305 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30957 hH))).trans (reductionSound11305 hH)
  have he1 : (blockExponent (psiExponent 28) true - psiInput665) = canonicalInput30741.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (4 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) true - psiInput665) =
      Integer.Sparse.eval oldProjection10 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (4 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30741 hH))).trans (oldProjectionSound10 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (720 : ℝ) * hh1

theorem psiChild665_29 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 29 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 29) false - psiInput665) - injectiveMoment H (blockExponent (psiExponent 29) true - psiInput665))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11308) (Integer.Sparse.scale (720 : ℤ) oldProjection10)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - psiInput665) = canonicalInput32192.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - psiInput665) =
      Integer.Sparse.eval reductionProjection11308 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32192 hH))).trans (reductionSound11308 hH)
  have he1 : (blockExponent (psiExponent 29) true - psiInput665) = canonicalInput30743.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (4 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) true - psiInput665) =
      Integer.Sparse.eval oldProjection10 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (4 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30743 hH))).trans (oldProjectionSound10 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (720 : ℝ) * hh1

end NoFourMUBs.Step2.SOS.Semantics
