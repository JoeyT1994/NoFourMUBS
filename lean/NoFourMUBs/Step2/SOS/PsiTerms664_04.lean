import NoFourMUBs.Step2.SOS.Canonical485
import NoFourMUBs.Step2.SOS.Canonical486
import NoFourMUBs.Step2.SOS.Canonical508
import NoFourMUBs.Step2.SOS.Canonical512
import NoFourMUBs.Step2.SOS.Canonical527
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.PsiRowInputs
import NoFourMUBs.Step2.SOS.Reductions032
import NoFourMUBs.Step2.SOS.Reductions318
import NoFourMUBs.Step2.SOS.Reductions328
import NoFourMUBs.Step2.SOS.Reductions350

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 20000
set_option maxHeartbeats 4000000

theorem psiChild664_40 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * ((psiCoefficient 40 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 40) false - psiInput664) - injectiveMoment H (blockExponent (psiExponent 40) true - psiInput664))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) oldProjection1054) (Integer.Sparse.scale (1440 : ℤ) oldProjection44)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - psiInput664) = canonicalInput32518.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (720 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - psiInput664) =
      Integer.Sparse.eval oldProjection1054 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32518 hH))).trans (oldProjectionSound1054 hH)
  have he1 : (blockExponent (psiExponent 40) true - psiInput664) = canonicalInput33779.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) true - psiInput664) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33779 hH))).trans (oldProjectionSound44 hH)
  change (720 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (1440 : ℝ) * hh1

theorem psiChild664_41 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * ((psiCoefficient 41 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 41) false - psiInput664) - injectiveMoment H (blockExponent (psiExponent 41) true - psiInput664))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) oldProjection1054) (Integer.Sparse.scale (12 : ℤ) oldProjection230)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 41) false - psiInput664) = canonicalInput32517.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (720 : ℝ) * injectiveMoment H (blockExponent (psiExponent 41) false - psiInput664) =
      Integer.Sparse.eval oldProjection1054 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32517 hH))).trans (oldProjectionSound1054 hH)
  have he1 : (blockExponent (psiExponent 41) true - psiInput664) = canonicalInput33778.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 41) true - psiInput664) =
      Integer.Sparse.eval oldProjection230 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33778 hH))).trans (oldProjectionSound230 hH)
  change (720 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (12 : ℝ) * hh1

theorem psiChild664_42 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 42 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 42) false - psiInput664) - injectiveMoment H (blockExponent (psiExponent 42) true - psiInput664))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-5 : ℤ) reductionProjection10186) (Integer.Sparse.scale (4 : ℤ) oldProjection838)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 42) false - psiInput664) = canonicalInput31107.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (576 : ℝ) * injectiveMoment H (blockExponent (psiExponent 42) false - psiInput664) =
      Integer.Sparse.eval reductionProjection10186 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound31107 hH))).trans (reductionSound10186 hH)
  have he1 : (blockExponent (psiExponent 42) true - psiInput664) = canonicalInput33775.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (720 : ℝ) * injectiveMoment H (blockExponent (psiExponent 42) true - psiInput664) =
      Integer.Sparse.eval oldProjection838 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33775 hH))).trans (oldProjectionSound838 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (4 : ℝ) * hh1

theorem psiChild664_43 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * ((psiCoefficient 43 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 43) false - psiInput664) - injectiveMoment H (blockExponent (psiExponent 43) true - psiInput664))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) oldProjection1054) (Integer.Sparse.scale (12 : ℤ) oldProjection230)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - psiInput664) = canonicalInput31106.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (720 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - psiInput664) =
      Integer.Sparse.eval oldProjection1054 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound31106 hH))).trans (oldProjectionSound1054 hH)
  have he1 : (blockExponent (psiExponent 43) true - psiInput664) = canonicalInput33774.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) true - psiInput664) =
      Integer.Sparse.eval oldProjection230 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33774 hH))).trans (oldProjectionSound230 hH)
  change (720 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (12 : ℝ) * hh1

theorem psiChild664_44 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 44 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 44) false - psiInput664) - injectiveMoment H (blockExponent (psiExponent 44) true - psiInput664))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection11216) (Integer.Sparse.scale (-60 : ℤ) oldProjection1245)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - psiInput664) = canonicalInput31104.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - psiInput664) =
      Integer.Sparse.eval reductionProjection11216 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound31104 hH))).trans (reductionSound11216 hH)
  have he1 : (blockExponent (psiExponent 44) true - psiInput664) = canonicalInput33772.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (144 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) true - psiInput664) =
      Integer.Sparse.eval oldProjection1245 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33772 hH))).trans (oldProjectionSound1245 hH)
  change (2880 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-60 : ℝ) * hh1

theorem psiChild664_45 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 45 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 45) false - psiInput664) - injectiveMoment H (blockExponent (psiExponent 45) true - psiInput664))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (1 : ℤ) reductionProjection10497) (Integer.Sparse.scale (-1440 : ℤ) reductionProjection1046)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - psiInput664) = canonicalInput32813.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - psiInput664) =
      Integer.Sparse.eval reductionProjection10497 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32813 hH))).trans (reductionSound10497 hH)
  have he1 : (blockExponent (psiExponent 45) true - psiInput664) = canonicalInput33782.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) true - psiInput664) =
      Integer.Sparse.eval reductionProjection1046 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33782 hH))).trans (reductionSound1046 hH)
  change (1440 : ℝ) * (((1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (1 : ℝ) * hh0 + (-1440 : ℝ) * hh1

theorem psiChild664_46 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 46 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 46) false - psiInput664) - injectiveMoment H (blockExponent (psiExponent 46) true - psiInput664))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection11216) (Integer.Sparse.scale (-12 : ℤ) oldProjection1009)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 46) false - psiInput664) = canonicalInput32516.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 46) false - psiInput664) =
      Integer.Sparse.eval reductionProjection11216 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32516 hH))).trans (reductionSound11216 hH)
  have he1 : (blockExponent (psiExponent 46) true - psiInput664) = canonicalInput33777.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (720 : ℝ) * injectiveMoment H (blockExponent (psiExponent 46) true - psiInput664) =
      Integer.Sparse.eval oldProjection1009 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33777 hH))).trans (oldProjectionSound1009 hH)
  change (2880 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-12 : ℝ) * hh1

theorem psiChild664_47 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 47 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 47) false - psiInput664) - injectiveMoment H (blockExponent (psiExponent 47) true - psiInput664))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-5 : ℤ) reductionProjection10186) (Integer.Sparse.scale (4 : ℤ) oldProjection1078)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 47) false - psiInput664) = canonicalInput32515.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (576 : ℝ) * injectiveMoment H (blockExponent (psiExponent 47) false - psiInput664) =
      Integer.Sparse.eval reductionProjection10186 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32515 hH))).trans (reductionSound10186 hH)
  have he1 : (blockExponent (psiExponent 47) true - psiInput664) = canonicalInput33776.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (720 : ℝ) * injectiveMoment H (blockExponent (psiExponent 47) true - psiInput664) =
      Integer.Sparse.eval oldProjection1078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33776 hH))).trans (oldProjectionSound1078 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (4 : ℝ) * hh1

theorem psiChild664_48 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 48 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 48) false - psiInput664) - injectiveMoment H (blockExponent (psiExponent 48) true - psiInput664))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection11216) (Integer.Sparse.scale (-12 : ℤ) oldProjection1009)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 48) false - psiInput664) = canonicalInput31105.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 48) false - psiInput664) =
      Integer.Sparse.eval reductionProjection11216 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound31105 hH))).trans (reductionSound11216 hH)
  have he1 : (blockExponent (psiExponent 48) true - psiInput664) = canonicalInput33773.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (720 : ℝ) * injectiveMoment H (blockExponent (psiExponent 48) true - psiInput664) =
      Integer.Sparse.eval oldProjection1009 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33773 hH))).trans (oldProjectionSound1009 hH)
  change (2880 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-12 : ℝ) * hh1

theorem psiChild664_49 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * ((psiCoefficient 49 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 49) false - psiInput664) - injectiveMoment H (blockExponent (psiExponent 49) true - psiInput664))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) oldProjection1054) (Integer.Sparse.scale (10 : ℤ) oldProjection1246)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - psiInput664) = canonicalInput31103.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (720 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - psiInput664) =
      Integer.Sparse.eval oldProjection1054 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound31103 hH))).trans (oldProjectionSound1054 hH)
  have he1 : (blockExponent (psiExponent 49) true - psiInput664) = canonicalInput33771.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (144 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) true - psiInput664) =
      Integer.Sparse.eval oldProjection1246 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33771 hH))).trans (oldProjectionSound1246 hH)
  change (720 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (10 : ℝ) * hh1

end NoFourMUBs.Step2.SOS.Semantics
