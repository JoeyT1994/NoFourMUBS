import NoFourMUBs.Step2.SOS.Canonical427
import NoFourMUBs.Step2.SOS.Canonical485
import NoFourMUBs.Step2.SOS.Canonical527
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.PsiRowInputs
import NoFourMUBs.Step2.SOS.Reductions032
import NoFourMUBs.Step2.SOS.Reductions318
import NoFourMUBs.Step2.SOS.Reductions328

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 20000
set_option maxHeartbeats 4000000

theorem psiChild664_50 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 50 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 50) false - psiInput664) - injectiveMoment H (blockExponent (psiExponent 50) true - psiInput664))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-5 : ℤ) reductionProjection10186) (Integer.Sparse.scale (4 : ℤ) oldProjection1047)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 50) false - psiInput664) = canonicalInput31102.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (576 : ℝ) * injectiveMoment H (blockExponent (psiExponent 50) false - psiInput664) =
      Integer.Sparse.eval reductionProjection10186 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound31102 hH))).trans (reductionSound10186 hH)
  have he1 : (blockExponent (psiExponent 50) true - psiInput664) = canonicalInput33770.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (720 : ℝ) * injectiveMoment H (blockExponent (psiExponent 50) true - psiInput664) =
      Integer.Sparse.eval oldProjection1047 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33770 hH))).trans (oldProjectionSound1047 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (4 : ℝ) * hh1

theorem psiChild664_51 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 51 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 51) false - psiInput664) - injectiveMoment H (blockExponent (psiExponent 51) true - psiInput664))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (1 : ℤ) reductionProjection10497) (Integer.Sparse.scale (-1440 : ℤ) reductionProjection1046)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 51) false - psiInput664) = canonicalInput27377.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 51) false - psiInput664) =
      Integer.Sparse.eval reductionProjection10497 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27377 hH))).trans (reductionSound10497 hH)
  have he1 : (blockExponent (psiExponent 51) true - psiInput664) = canonicalInput33769.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 51) true - psiInput664) =
      Integer.Sparse.eval reductionProjection1046 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33769 hH))).trans (reductionSound1046 hH)
  change (1440 : ℝ) * (((1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (1 : ℝ) * hh0 + (-1440 : ℝ) * hh1

theorem psiChild664_52 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 52 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 52) false - psiInput664) - injectiveMoment H (blockExponent (psiExponent 52) true - psiInput664))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-5 : ℤ) reductionProjection10186) (Integer.Sparse.scale (4 : ℤ) oldProjection1078)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - psiInput664) = canonicalInput27376.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (576 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - psiInput664) =
      Integer.Sparse.eval reductionProjection10186 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27376 hH))).trans (reductionSound10186 hH)
  have he1 : (blockExponent (psiExponent 52) true - psiInput664) = canonicalInput33768.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (720 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) true - psiInput664) =
      Integer.Sparse.eval oldProjection1078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33768 hH))).trans (oldProjectionSound1078 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (4 : ℝ) * hh1

theorem psiChild664_53 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 53 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 53) false - psiInput664) - injectiveMoment H (blockExponent (psiExponent 53) true - psiInput664))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-5 : ℤ) reductionProjection10186) (Integer.Sparse.scale (4 : ℤ) oldProjection1047)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - psiInput664) = canonicalInput27375.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (576 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - psiInput664) =
      Integer.Sparse.eval reductionProjection10186 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27375 hH))).trans (reductionSound10186 hH)
  have he1 : (blockExponent (psiExponent 53) true - psiInput664) = canonicalInput33767.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (720 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) true - psiInput664) =
      Integer.Sparse.eval oldProjection1047 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33767 hH))).trans (oldProjectionSound1047 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (4 : ℝ) * hh1

theorem psiChild664_54 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 54 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 54) false - psiInput664) - injectiveMoment H (blockExponent (psiExponent 54) true - psiInput664))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (1 : ℤ) reductionProjection10497) (Integer.Sparse.scale (-1440 : ℤ) oldProjection522)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - psiInput664) = canonicalInput27374.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - psiInput664) =
      Integer.Sparse.eval reductionProjection10497 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27374 hH))).trans (reductionSound10497 hH)
  have he1 : (blockExponent (psiExponent 54) true - psiInput664) = canonicalInput33766.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) true - psiInput664) =
      Integer.Sparse.eval oldProjection522 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33766 hH))).trans (oldProjectionSound522 hH)
  change (1440 : ℝ) * (((1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (1 : ℝ) * hh0 + (-1440 : ℝ) * hh1

end NoFourMUBs.Step2.SOS.Semantics
