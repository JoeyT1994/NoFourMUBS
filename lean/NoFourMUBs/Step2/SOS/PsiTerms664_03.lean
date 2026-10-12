import NoFourMUBs.Step2.SOS.Canonical508
import NoFourMUBs.Step2.SOS.Canonical512
import NoFourMUBs.Step2.SOS.Canonical520
import NoFourMUBs.Step2.SOS.Canonical527
import NoFourMUBs.Step2.SOS.Canonical528
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.PsiRowInputs
import NoFourMUBs.Step2.SOS.Reductions035
import NoFourMUBs.Step2.SOS.Reductions318
import NoFourMUBs.Step2.SOS.Reductions328
import NoFourMUBs.Step2.SOS.Reductions350
import NoFourMUBs.Step2.SOS.Reductions351
import NoFourMUBs.Step2.SOS.Reductions366

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 20000
set_option maxHeartbeats 4000000

theorem psiChild664_30 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 30 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 30) false - psiInput664) - injectiveMoment H (blockExponent (psiExponent 30) true - psiInput664))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection11239) (Integer.Sparse.scale (4 : ℤ) oldProjection1008)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 30) false - psiInput664) = canonicalInput33765.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 30) false - psiInput664) =
      Integer.Sparse.eval reductionProjection11239 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33765 hH))).trans (reductionSound11239 hH)
  have he1 : (blockExponent (psiExponent 30) true - psiInput664) = canonicalInput33794.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (720 : ℝ) * injectiveMoment H (blockExponent (psiExponent 30) true - psiInput664) =
      Integer.Sparse.eval oldProjection1008 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33794 hH))).trans (oldProjectionSound1008 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (4 : ℝ) * hh1

theorem psiChild664_31 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 31 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 31) false - psiInput664) - injectiveMoment H (blockExponent (psiExponent 31) true - psiInput664))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) oldProjection2758) (Integer.Sparse.scale (12 : ℤ) oldProjection1265)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 31) false - psiInput664) = canonicalInput33763.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 31) false - psiInput664) =
      Integer.Sparse.eval oldProjection2758 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33763 hH))).trans (oldProjectionSound2758 hH)
  have he1 : (blockExponent (psiExponent 31) true - psiInput664) = canonicalInput33792.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 31) true - psiInput664) =
      Integer.Sparse.eval oldProjection1265 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33792 hH))).trans (oldProjectionSound1265 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (12 : ℝ) * hh1

theorem psiChild664_32 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 32 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 32) false - psiInput664) - injectiveMoment H (blockExponent (psiExponent 32) true - psiInput664))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11741) (Integer.Sparse.scale (4 : ℤ) oldProjection1276)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - psiInput664) = canonicalInput33330.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - psiInput664) =
      Integer.Sparse.eval reductionProjection11741 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33330 hH))).trans (reductionSound11741 hH)
  have he1 : (blockExponent (psiExponent 32) true - psiInput664) = canonicalInput33790.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (720 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) true - psiInput664) =
      Integer.Sparse.eval oldProjection1276 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33790 hH))).trans (oldProjectionSound1276 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (4 : ℝ) * hh1

theorem psiChild664_33 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 33 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 33) false - psiInput664) - injectiveMoment H (blockExponent (psiExponent 33) true - psiInput664))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) oldProjection2758) (Integer.Sparse.scale (12 : ℤ) oldProjection1265)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 33) false - psiInput664) = canonicalInput33328.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 33) false - psiInput664) =
      Integer.Sparse.eval oldProjection2758 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33328 hH))).trans (oldProjectionSound2758 hH)
  have he1 : (blockExponent (psiExponent 33) true - psiInput664) = canonicalInput33788.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 33) true - psiInput664) =
      Integer.Sparse.eval oldProjection1265 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33788 hH))).trans (oldProjectionSound1265 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (12 : ℝ) * hh1

theorem psiChild664_34 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 34 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 34) false - psiInput664) - injectiveMoment H (blockExponent (psiExponent 34) true - psiInput664))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection11736) (Integer.Sparse.scale (-12 : ℤ) oldProjection1259)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - psiInput664) = canonicalInput33326.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - psiInput664) =
      Integer.Sparse.eval reductionProjection11736 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33326 hH))).trans (reductionSound11736 hH)
  have he1 : (blockExponent (psiExponent 34) true - psiInput664) = canonicalInput33786.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (720 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) true - psiInput664) =
      Integer.Sparse.eval oldProjection1259 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33786 hH))).trans (oldProjectionSound1259 hH)
  change (2880 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-12 : ℝ) * hh1

theorem psiChild664_35 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 35 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 35) false - psiInput664) - injectiveMoment H (blockExponent (psiExponent 35) true - psiInput664))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (1 : ℤ) reductionProjection10497) (Integer.Sparse.scale (-1440 : ℤ) reductionProjection1136)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - psiInput664) = canonicalInput32816.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - psiInput664) =
      Integer.Sparse.eval reductionProjection10497 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32816 hH))).trans (reductionSound10497 hH)
  have he1 : (blockExponent (psiExponent 35) true - psiInput664) = canonicalInput33785.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) true - psiInput664) =
      Integer.Sparse.eval reductionProjection1136 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33785 hH))).trans (reductionSound1136 hH)
  change (1440 : ℝ) * (((1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (1 : ℝ) * hh0 + (-1440 : ℝ) * hh1

theorem psiChild664_36 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 36 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 36) false - psiInput664) - injectiveMoment H (blockExponent (psiExponent 36) true - psiInput664))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-5 : ℤ) reductionProjection10186) (Integer.Sparse.scale (4 : ℤ) oldProjection846)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 36) false - psiInput664) = canonicalInput32815.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (576 : ℝ) * injectiveMoment H (blockExponent (psiExponent 36) false - psiInput664) =
      Integer.Sparse.eval reductionProjection10186 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32815 hH))).trans (reductionSound10186 hH)
  have he1 : (blockExponent (psiExponent 36) true - psiInput664) = canonicalInput33784.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (720 : ℝ) * injectiveMoment H (blockExponent (psiExponent 36) true - psiInput664) =
      Integer.Sparse.eval oldProjection846 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33784 hH))).trans (oldProjectionSound846 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (4 : ℝ) * hh1

theorem psiChild664_37 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 37 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 37) false - psiInput664) - injectiveMoment H (blockExponent (psiExponent 37) true - psiInput664))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-5 : ℤ) reductionProjection10186) (Integer.Sparse.scale (4 : ℤ) oldProjection846)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 37) false - psiInput664) = canonicalInput32520.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (576 : ℝ) * injectiveMoment H (blockExponent (psiExponent 37) false - psiInput664) =
      Integer.Sparse.eval reductionProjection10186 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32520 hH))).trans (reductionSound10186 hH)
  have he1 : (blockExponent (psiExponent 37) true - psiInput664) = canonicalInput33781.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (720 : ℝ) * injectiveMoment H (blockExponent (psiExponent 37) true - psiInput664) =
      Integer.Sparse.eval oldProjection846 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33781 hH))).trans (oldProjectionSound846 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (4 : ℝ) * hh1

theorem psiChild664_38 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 38 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 38) false - psiInput664) - injectiveMoment H (blockExponent (psiExponent 38) true - psiInput664))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection11216) (Integer.Sparse.scale (-48 : ℤ) oldProjection1126)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 38) false - psiInput664) = canonicalInput32519.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 38) false - psiInput664) =
      Integer.Sparse.eval reductionProjection11216 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32519 hH))).trans (reductionSound11216 hH)
  have he1 : (blockExponent (psiExponent 38) true - psiInput664) = canonicalInput33780.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (180 : ℝ) * injectiveMoment H (blockExponent (psiExponent 38) true - psiInput664) =
      Integer.Sparse.eval oldProjection1126 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33780 hH))).trans (oldProjectionSound1126 hH)
  change (2880 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-48 : ℝ) * hh1

theorem psiChild664_39 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 39 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 39) false - psiInput664) - injectiveMoment H (blockExponent (psiExponent 39) true - psiInput664))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-5 : ℤ) reductionProjection10186) (Integer.Sparse.scale (4 : ℤ) oldProjection838)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 39) false - psiInput664) = canonicalInput32814.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (576 : ℝ) * injectiveMoment H (blockExponent (psiExponent 39) false - psiInput664) =
      Integer.Sparse.eval reductionProjection10186 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32814 hH))).trans (reductionSound10186 hH)
  have he1 : (blockExponent (psiExponent 39) true - psiInput664) = canonicalInput33783.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (720 : ℝ) * injectiveMoment H (blockExponent (psiExponent 39) true - psiInput664) =
      Integer.Sparse.eval oldProjection838 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33783 hH))).trans (oldProjectionSound838 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (4 : ℝ) * hh1

end NoFourMUBs.Step2.SOS.Semantics
