import NoFourMUBs.Step2.SOS.Canonical424
import NoFourMUBs.Step2.SOS.Canonical426
import NoFourMUBs.Step2.SOS.Canonical474
import NoFourMUBs.Step2.SOS.Canonical479
import NoFourMUBs.Step2.SOS.Canonical480
import NoFourMUBs.Step2.SOS.Canonical482
import NoFourMUBs.Step2.SOS.Canonical484
import NoFourMUBs.Step2.SOS.Canonical503
import NoFourMUBs.Step2.SOS.Canonical505
import NoFourMUBs.Step2.SOS.Canonical507
import NoFourMUBs.Step2.SOS.Canonical516
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.PsiRowInputs
import NoFourMUBs.Step2.SOS.Reductions348
import NoFourMUBs.Step2.SOS.Reductions349

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 20000
set_option maxHeartbeats 4000000

theorem psiChild660_10 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 10 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 10) false - psiInput660) - injectiveMoment H (blockExponent (psiExponent 10) true - psiInput660))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection11153) (Integer.Sparse.scale (180 : ℤ) oldProjection57)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - psiInput660) = canonicalInput33055.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - psiInput660) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33055 hH))).trans (reductionSound11153 hH)
  have he1 : (blockExponent (psiExponent 10) true - psiInput660) = canonicalInput30721.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) true - psiInput660) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30721 hH))).trans (oldProjectionSound57 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (180 : ℝ) * hh1

theorem psiChild660_11 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 11 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 11) false - psiInput660) - injectiveMoment H (blockExponent (psiExponent 11) true - psiInput660))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11163) (Integer.Sparse.scale (180 : ℤ) oldProjection57)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 11) false - psiInput660) = canonicalInput32502.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 11) false - psiInput660) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32502 hH))).trans (reductionSound11163 hH)
  have he1 : (blockExponent (psiExponent 11) true - psiInput660) = canonicalInput30705.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 11) true - psiInput660) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30705 hH))).trans (oldProjectionSound57 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (180 : ℝ) * hh1

theorem psiChild660_12 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 12 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 12) false - psiInput660) - injectiveMoment H (blockExponent (psiExponent 12) true - psiInput660))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection11153) (Integer.Sparse.scale (36 : ℤ) oldProjection62)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 12) false - psiInput660) = canonicalInput32376.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 12) false - psiInput660) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32376 hH))).trans (reductionSound11153 hH)
  have he1 : (blockExponent (psiExponent 12) true - psiInput660) = canonicalInput30700.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 12) true - psiInput660) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30700 hH))).trans (oldProjectionSound62 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (36 : ℝ) * hh1

theorem psiChild660_13 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 13 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 13) false - psiInput660) - injectiveMoment H (blockExponent (psiExponent 13) true - psiInput660))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection11153) (Integer.Sparse.scale (36 : ℤ) oldProjection62)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 13) false - psiInput660) = canonicalInput31015.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 13) false - psiInput660) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound31015 hH))).trans (reductionSound11153 hH)
  have he1 : (blockExponent (psiExponent 13) true - psiInput660) = canonicalInput30690.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 13) true - psiInput660) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30690 hH))).trans (oldProjectionSound62 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (36 : ℝ) * hh1

theorem psiChild660_14 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 14 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 14) false - psiInput660) - injectiveMoment H (blockExponent (psiExponent 14) true - psiInput660))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection11153) (Integer.Sparse.scale (2880 : ℤ) oldProjection44)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 14) false - psiInput660) = canonicalInput30885.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 14) false - psiInput660) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30885 hH))).trans (reductionSound11153 hH)
  have he1 : (blockExponent (psiExponent 14) true - psiInput660) = canonicalInput30686.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 14) true - psiInput660) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30686 hH))).trans (oldProjectionSound44 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (2880 : ℝ) * hh1

theorem psiChild660_15 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * ((psiCoefficient 15 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 15) false - psiInput660) - injectiveMoment H (blockExponent (psiExponent 15) true - psiInput660))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (15 : ℤ) reductionProjection11170) (Integer.Sparse.scale (-18 : ℤ) oldProjection62)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 15) false - psiInput660) = canonicalInput32250.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 15) false - psiInput660) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32250 hH))).trans (reductionSound11170 hH)
  have he1 : (blockExponent (psiExponent 15) true - psiInput660) = canonicalInput30696.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 15) true - psiInput660) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30696 hH))).trans (oldProjectionSound62 hH)
  change (480 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (15 : ℝ) * hh0 + (-18 : ℝ) * hh1

theorem psiChild660_16 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * ((psiCoefficient 16 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 16) false - psiInput660) - injectiveMoment H (blockExponent (psiExponent 16) true - psiInput660))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (12 : ℤ) oldProjection61) (Integer.Sparse.scale (-12 : ℤ) oldProjection61)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - psiInput660) = canonicalInput30685.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - psiInput660) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30685 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 16) true - psiInput660) = canonicalInput30685.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) true - psiInput660) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30685 hH))).trans (oldProjectionSound61 hH)
  change (80 : ℝ) * (((12 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (12 : ℝ) * hh0 + (-12 : ℝ) * hh1

theorem psiChild660_17 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 17 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 17) false - psiInput660) - injectiveMoment H (blockExponent (psiExponent 17) true - psiInput660))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection11153) (Integer.Sparse.scale (36 : ℤ) oldProjection62)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 17) false - psiInput660) = canonicalInput30365.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 17) false - psiInput660) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30365 hH))).trans (reductionSound11153 hH)
  have he1 : (blockExponent (psiExponent 17) true - psiInput660) = canonicalInput30681.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 17) true - psiInput660) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30681 hH))).trans (oldProjectionSound62 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (36 : ℝ) * hh1

theorem psiChild660_18 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * ((psiCoefficient 18 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 18) false - psiInput660) - injectiveMoment H (blockExponent (psiExponent 18) true - psiInput660))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (15 : ℤ) reductionProjection11170) (Integer.Sparse.scale (-18 : ℤ) oldProjection62)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 18) false - psiInput660) = canonicalInput27319.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 18) false - psiInput660) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27319 hH))).trans (reductionSound11170 hH)
  have he1 : (blockExponent (psiExponent 18) true - psiInput660) = canonicalInput30677.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 18) true - psiInput660) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30677 hH))).trans (oldProjectionSound62 hH)
  change (480 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (15 : ℝ) * hh0 + (-18 : ℝ) * hh1

theorem psiChild660_19 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 19 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 19) false - psiInput660) - injectiveMoment H (blockExponent (psiExponent 19) true - psiInput660))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection11153) (Integer.Sparse.scale (36 : ℤ) oldProjection62)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 19) false - psiInput660) = canonicalInput27194.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 19) false - psiInput660) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27194 hH))).trans (reductionSound11153 hH)
  have he1 : (blockExponent (psiExponent 19) true - psiInput660) = canonicalInput30674.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 19) true - psiInput660) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30674 hH))).trans (oldProjectionSound62 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (36 : ℝ) * hh1

end NoFourMUBs.Step2.SOS.Semantics
