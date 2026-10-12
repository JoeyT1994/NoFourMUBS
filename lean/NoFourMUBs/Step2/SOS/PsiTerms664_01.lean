import NoFourMUBs.Step2.SOS.Canonical520
import NoFourMUBs.Step2.SOS.Canonical527
import NoFourMUBs.Step2.SOS.Canonical528
import NoFourMUBs.Step2.SOS.Canonical529
import NoFourMUBs.Step2.SOS.Canonical535
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.PsiRowInputs
import NoFourMUBs.Step2.SOS.Reductions351
import NoFourMUBs.Step2.SOS.Reductions366

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 20000
set_option maxHeartbeats 4000000

theorem psiChild664_10 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * ((psiCoefficient 10 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 10) false - psiInput664) - injectiveMoment H (blockExponent (psiExponent 10) true - psiInput664))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) oldProjection1284) (Integer.Sparse.scale (18 : ℤ) oldProjection56)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - psiInput664) = canonicalInput34240.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (720 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - psiInput664) =
      Integer.Sparse.eval oldProjection1284 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34240 hH))).trans (oldProjectionSound1284 hH)
  have he1 : (blockExponent (psiExponent 10) true - psiInput664) = canonicalInput33806.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) true - psiInput664) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33806 hH))).trans (oldProjectionSound56 hH)
  change (720 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (18 : ℝ) * hh1

theorem psiChild664_11 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 11 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 11) false - psiInput664) - injectiveMoment H (blockExponent (psiExponent 11) true - psiInput664))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11741) (Integer.Sparse.scale (2880 : ℤ) oldProjection517)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 11) false - psiInput664) = canonicalInput33907.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 11) false - psiInput664) =
      Integer.Sparse.eval reductionProjection11741 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33907 hH))).trans (reductionSound11741 hH)
  have he1 : (blockExponent (psiExponent 11) true - psiInput664) = canonicalInput33804.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 11) true - psiInput664) =
      Integer.Sparse.eval oldProjection517 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33804 hH))).trans (oldProjectionSound517 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (2880 : ℝ) * hh1

theorem psiChild664_12 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 12 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 12) false - psiInput664) - injectiveMoment H (blockExponent (psiExponent 12) true - psiInput664))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) oldProjection2758) (Integer.Sparse.scale (4 : ℤ) oldProjection1110)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 12) false - psiInput664) = canonicalInput33905.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 12) false - psiInput664) =
      Integer.Sparse.eval oldProjection2758 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33905 hH))).trans (oldProjectionSound2758 hH)
  have he1 : (blockExponent (psiExponent 12) true - psiInput664) = canonicalInput33802.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (720 : ℝ) * injectiveMoment H (blockExponent (psiExponent 12) true - psiInput664) =
      Integer.Sparse.eval oldProjection1110 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33802 hH))).trans (oldProjectionSound1110 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (4 : ℝ) * hh1

theorem psiChild664_13 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 13 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 13) false - psiInput664) - injectiveMoment H (blockExponent (psiExponent 13) true - psiInput664))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) oldProjection2758) (Integer.Sparse.scale (4 : ℤ) oldProjection1110)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 13) false - psiInput664) = canonicalInput33823.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 13) false - psiInput664) =
      Integer.Sparse.eval oldProjection2758 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33823 hH))).trans (oldProjectionSound2758 hH)
  have he1 : (blockExponent (psiExponent 13) true - psiInput664) = canonicalInput33798.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (720 : ℝ) * injectiveMoment H (blockExponent (psiExponent 13) true - psiInput664) =
      Integer.Sparse.eval oldProjection1110 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33798 hH))).trans (oldProjectionSound1110 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (4 : ℝ) * hh1

theorem psiChild664_14 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 14 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 14) false - psiInput664) - injectiveMoment H (blockExponent (psiExponent 14) true - psiInput664))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection11239) (Integer.Sparse.scale (4 : ℤ) oldProjection1264)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 14) false - psiInput664) = canonicalInput33821.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 14) false - psiInput664) =
      Integer.Sparse.eval reductionProjection11239 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33821 hH))).trans (reductionSound11239 hH)
  have he1 : (blockExponent (psiExponent 14) true - psiInput664) = canonicalInput33796.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (720 : ℝ) * injectiveMoment H (blockExponent (psiExponent 14) true - psiInput664) =
      Integer.Sparse.eval oldProjection1264 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33796 hH))).trans (oldProjectionSound1264 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (4 : ℝ) * hh1

theorem psiChild664_15 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 15 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 15) false - psiInput664) - injectiveMoment H (blockExponent (psiExponent 15) true - psiInput664))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection11736) (Integer.Sparse.scale (-12 : ℤ) oldProjection835)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 15) false - psiInput664) = canonicalInput33903.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 15) false - psiInput664) =
      Integer.Sparse.eval reductionProjection11736 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33903 hH))).trans (reductionSound11736 hH)
  have he1 : (blockExponent (psiExponent 15) true - psiInput664) = canonicalInput33800.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (720 : ℝ) * injectiveMoment H (blockExponent (psiExponent 15) true - psiInput664) =
      Integer.Sparse.eval oldProjection835 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33800 hH))).trans (oldProjectionSound835 hH)
  change (2880 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-12 : ℝ) * hh1

theorem psiChild664_16 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * ((psiCoefficient 16 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 16) false - psiInput664) - injectiveMoment H (blockExponent (psiExponent 16) true - psiInput664))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (12 : ℤ) oldProjection62) (Integer.Sparse.scale (-12 : ℤ) oldProjection62)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - psiInput664) = canonicalInput33795.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - psiInput664) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33795 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 16) true - psiInput664) = canonicalInput33795.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) true - psiInput664) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33795 hH))).trans (oldProjectionSound62 hH)
  change (80 : ℝ) * (((12 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (12 : ℝ) * hh0 + (-12 : ℝ) * hh1

theorem psiChild664_17 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 17 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 17) false - psiInput664) - injectiveMoment H (blockExponent (psiExponent 17) true - psiInput664))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) oldProjection2758) (Integer.Sparse.scale (12 : ℤ) oldProjection284)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 17) false - psiInput664) = canonicalInput33764.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 17) false - psiInput664) =
      Integer.Sparse.eval oldProjection2758 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33764 hH))).trans (oldProjectionSound2758 hH)
  have he1 : (blockExponent (psiExponent 17) true - psiInput664) = canonicalInput33793.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 17) true - psiInput664) =
      Integer.Sparse.eval oldProjection284 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33793 hH))).trans (oldProjectionSound284 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (12 : ℝ) * hh1

theorem psiChild664_18 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 18 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 18) false - psiInput664) - injectiveMoment H (blockExponent (psiExponent 18) true - psiInput664))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection11736) (Integer.Sparse.scale (-12 : ℤ) oldProjection835)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 18) false - psiInput664) = canonicalInput33331.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 18) false - psiInput664) =
      Integer.Sparse.eval reductionProjection11736 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33331 hH))).trans (reductionSound11736 hH)
  have he1 : (blockExponent (psiExponent 18) true - psiInput664) = canonicalInput33791.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (720 : ℝ) * injectiveMoment H (blockExponent (psiExponent 18) true - psiInput664) =
      Integer.Sparse.eval oldProjection835 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33791 hH))).trans (oldProjectionSound835 hH)
  change (2880 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-12 : ℝ) * hh1

theorem psiChild664_19 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 19 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 19) false - psiInput664) - injectiveMoment H (blockExponent (psiExponent 19) true - psiInput664))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) oldProjection2758) (Integer.Sparse.scale (12 : ℤ) oldProjection284)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 19) false - psiInput664) = canonicalInput33329.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 19) false - psiInput664) =
      Integer.Sparse.eval oldProjection2758 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33329 hH))).trans (oldProjectionSound2758 hH)
  have he1 : (blockExponent (psiExponent 19) true - psiInput664) = canonicalInput33789.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 19) true - psiInput664) =
      Integer.Sparse.eval oldProjection284 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33789 hH))).trans (oldProjectionSound284 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (12 : ℝ) * hh1

end NoFourMUBs.Step2.SOS.Semantics
