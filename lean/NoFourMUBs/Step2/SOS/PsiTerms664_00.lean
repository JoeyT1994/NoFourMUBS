import NoFourMUBs.Step2.SOS.Canonical528
import NoFourMUBs.Step2.SOS.Canonical535
import NoFourMUBs.Step2.SOS.Canonical537
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.PsiRowInputs
import NoFourMUBs.Step2.SOS.Reductions361
import NoFourMUBs.Step2.SOS.Reductions377
import NoFourMUBs.Step2.SOS.Reductions378

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 20000
set_option maxHeartbeats 4000000

theorem psiChild664_0 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * ((psiCoefficient 0 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 0) false - psiInput664) - injectiveMoment H (blockExponent (psiExponent 0) true - psiInput664))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (1 : ℤ) reductionProjection12095) (Integer.Sparse.scale (-288 : ℤ) oldProjection454)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - psiInput664) = canonicalInput34393.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (288 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - psiInput664) =
      Integer.Sparse.eval reductionProjection12095 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34393 hH))).trans (reductionSound12095 hH)
  have he1 : (blockExponent (psiExponent 0) true - psiInput664) = canonicalInput33820.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) true - psiInput664) =
      Integer.Sparse.eval oldProjection454 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33820 hH))).trans (oldProjectionSound454 hH)
  change (288 : ℝ) * (((1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (1 : ℝ) * hh0 + (-288 : ℝ) * hh1

theorem psiChild664_1 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 1 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 1) false - psiInput664) - injectiveMoment H (blockExponent (psiExponent 1) true - psiInput664))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11572) (Integer.Sparse.scale (4 : ℤ) oldProjection910)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 1) false - psiInput664) = canonicalInput34392.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 1) false - psiInput664) =
      Integer.Sparse.eval reductionProjection11572 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34392 hH))).trans (reductionSound11572 hH)
  have he1 : (blockExponent (psiExponent 1) true - psiInput664) = canonicalInput33819.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (720 : ℝ) * injectiveMoment H (blockExponent (psiExponent 1) true - psiInput664) =
      Integer.Sparse.eval oldProjection910 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33819 hH))).trans (oldProjectionSound910 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (4 : ℝ) * hh1

theorem psiChild664_2 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 2 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 2) false - psiInput664) - injectiveMoment H (blockExponent (psiExponent 2) true - psiInput664))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection12094) (Integer.Sparse.scale (4 : ℤ) oldProjection1003)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 2) false - psiInput664) = canonicalInput34292.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 2) false - psiInput664) =
      Integer.Sparse.eval reductionProjection12094 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34292 hH))).trans (reductionSound12094 hH)
  have he1 : (blockExponent (psiExponent 2) true - psiInput664) = canonicalInput33816.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (720 : ℝ) * injectiveMoment H (blockExponent (psiExponent 2) true - psiInput664) =
      Integer.Sparse.eval oldProjection1003 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33816 hH))).trans (oldProjectionSound1003 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (4 : ℝ) * hh1

theorem psiChild664_3 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 3 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 3) false - psiInput664) - injectiveMoment H (blockExponent (psiExponent 3) true - psiInput664))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (15 : ℤ) reductionProjection12096) (Integer.Sparse.scale (-12 : ℤ) oldProjection1202)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - psiInput664) = canonicalInput34289.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (576 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - psiInput664) =
      Integer.Sparse.eval reductionProjection12096 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34289 hH))).trans (reductionSound12096 hH)
  have he1 : (blockExponent (psiExponent 3) true - psiInput664) = canonicalInput33813.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (720 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) true - psiInput664) =
      Integer.Sparse.eval oldProjection1202 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33813 hH))).trans (oldProjectionSound1202 hH)
  change (2880 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (15 : ℝ) * hh0 + (-12 : ℝ) * hh1

theorem psiChild664_4 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 4 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 4) false - psiInput664) - injectiveMoment H (blockExponent (psiExponent 4) true - psiInput664))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (15 : ℤ) reductionProjection12096) (Integer.Sparse.scale (-12 : ℤ) oldProjection1202)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 4) false - psiInput664) = canonicalInput34244.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (576 : ℝ) * injectiveMoment H (blockExponent (psiExponent 4) false - psiInput664) =
      Integer.Sparse.eval reductionProjection12096 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34244 hH))).trans (reductionSound12096 hH)
  have he1 : (blockExponent (psiExponent 4) true - psiInput664) = canonicalInput33810.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (720 : ℝ) * injectiveMoment H (blockExponent (psiExponent 4) true - psiInput664) =
      Integer.Sparse.eval oldProjection1202 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33810 hH))).trans (oldProjectionSound1202 hH)
  change (2880 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (15 : ℝ) * hh0 + (-12 : ℝ) * hh1

theorem psiChild664_5 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 5 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 5) false - psiInput664) - injectiveMoment H (blockExponent (psiExponent 5) true - psiInput664))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection12094) (Integer.Sparse.scale (4 : ℤ) oldProjection1299)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 5) false - psiInput664) = canonicalInput34241.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 5) false - psiInput664) =
      Integer.Sparse.eval reductionProjection12094 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34241 hH))).trans (reductionSound12094 hH)
  have he1 : (blockExponent (psiExponent 5) true - psiInput664) = canonicalInput33807.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (720 : ℝ) * injectiveMoment H (blockExponent (psiExponent 5) true - psiInput664) =
      Integer.Sparse.eval oldProjection1299 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33807 hH))).trans (oldProjectionSound1299 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (4 : ℝ) * hh1

theorem psiChild664_6 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 6 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 6) false - psiInput664) - injectiveMoment H (blockExponent (psiExponent 6) true - psiInput664))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11572) (Integer.Sparse.scale (4 : ℤ) oldProjection766)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - psiInput664) = canonicalInput34391.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - psiInput664) =
      Integer.Sparse.eval reductionProjection11572 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34391 hH))).trans (reductionSound11572 hH)
  have he1 : (blockExponent (psiExponent 6) true - psiInput664) = canonicalInput33818.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (720 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) true - psiInput664) =
      Integer.Sparse.eval oldProjection766 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33818 hH))).trans (oldProjectionSound766 hH)
  change (2880 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (4 : ℝ) * hh1

theorem psiChild664_7 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * ((psiCoefficient 7 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 7) false - psiInput664) - injectiveMoment H (blockExponent (psiExponent 7) true - psiInput664))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) oldProjection1284) (Integer.Sparse.scale (20 : ℤ) oldProjection1203)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 7) false - psiInput664) = canonicalInput34291.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (720 : ℝ) * injectiveMoment H (blockExponent (psiExponent 7) false - psiInput664) =
      Integer.Sparse.eval oldProjection1284 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34291 hH))).trans (oldProjectionSound1284 hH)
  have he1 : (blockExponent (psiExponent 7) true - psiInput664) = canonicalInput33815.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (72 : ℝ) * injectiveMoment H (blockExponent (psiExponent 7) true - psiInput664) =
      Integer.Sparse.eval oldProjection1203 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33815 hH))).trans (oldProjectionSound1203 hH)
  change (720 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (20 : ℝ) * hh1

theorem psiChild664_8 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * ((psiCoefficient 8 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 8) false - psiInput664) - injectiveMoment H (blockExponent (psiExponent 8) true - psiInput664))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) oldProjection1284) (Integer.Sparse.scale (6 : ℤ) oldProjection181)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 8) false - psiInput664) = canonicalInput34288.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (720 : ℝ) * injectiveMoment H (blockExponent (psiExponent 8) false - psiInput664) =
      Integer.Sparse.eval oldProjection1284 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34288 hH))).trans (oldProjectionSound1284 hH)
  have he1 : (blockExponent (psiExponent 8) true - psiInput664) = canonicalInput33812.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 8) true - psiInput664) =
      Integer.Sparse.eval oldProjection181 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33812 hH))).trans (oldProjectionSound181 hH)
  change (720 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (6 : ℝ) * hh1

theorem psiChild664_9 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * ((psiCoefficient 9 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 9) false - psiInput664) - injectiveMoment H (blockExponent (psiExponent 9) true - psiInput664))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) oldProjection1284) (Integer.Sparse.scale (6 : ℤ) oldProjection181)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 9) false - psiInput664) = canonicalInput34243.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (720 : ℝ) * injectiveMoment H (blockExponent (psiExponent 9) false - psiInput664) =
      Integer.Sparse.eval oldProjection1284 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34243 hH))).trans (oldProjectionSound1284 hH)
  have he1 : (blockExponent (psiExponent 9) true - psiInput664) = canonicalInput33809.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 9) true - psiInput664) =
      Integer.Sparse.eval oldProjection181 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33809 hH))).trans (oldProjectionSound181 hH)
  change (720 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (6 : ℝ) * hh1

end NoFourMUBs.Step2.SOS.Semantics
