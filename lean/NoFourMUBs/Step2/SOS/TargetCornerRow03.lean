import NoFourMUBs.Step2.SOS.Canonical176
import NoFourMUBs.Step2.SOS.Canonical177
import NoFourMUBs.Step2.SOS.Canonical178
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.Reductions002
import NoFourMUBs.Step2.SOS.Reductions012
import NoFourMUBs.Step2.SOS.Reductions027
import NoFourMUBs.Step2.SOS.Reductions028
import NoFourMUBs.Step2.SOS.Reductions063
import NoFourMUBs.Step2.SOS.Reductions064
import NoFourMUBs.Step2.SOS.Reductions084
import NoFourMUBs.Step2.SOS.Reductions098
import NoFourMUBs.Step2.SOS.Reductions112
import NoFourMUBs.Step2.SOS.Reductions114
import NoFourMUBs.Step2.SOS.Reductions152
import NoFourMUBs.Step2.SOS.Reductions223
import NoFourMUBs.Step2.SOS.Reductions224
import NoFourMUBs.Step2.SOS.Reductions225
import NoFourMUBs.Step2.SOS.TargetProjectionTerms

noncomputable section
namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000

def targetCornerChild3_0Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (1) reductionProjection7142)
    (Integer.Sparse.scale (2) reductionProjection7171)

theorem targetCornerChild3_0 {H : CMatrix} (hH : IsHadamard H) :
    (1280 : ℝ) * targetCornerTerm H 3 0 =
      Integer.Sparse.eval targetCornerChild3_0Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 0), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 0)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 0) ≤ 6; decide +kernel)) = canonicalInput11376.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 3 0) =
      Integer.Sparse.eval reductionProjection7142 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 0), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 0)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 0) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound11376 hH))).trans (reductionSound7142 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 0), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 0)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 0) ≤ 6; decide +kernel)) = canonicalInput11304.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (720 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 0) =
      Integer.Sparse.eval reductionProjection7171 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 0), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 0)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 0) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound11304 hH))).trans (reductionSound7171 hH)
  have hw : 450 * CornerPairs.weight 3 * CornerPairs.weight 0 =
      (9 : ℝ) / 8 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild3_0Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (1 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetCornerChild3_1Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection7137)
    (Integer.Sparse.scale (9) reductionProjection2069)

theorem targetCornerChild3_1 {H : CMatrix} (hH : IsHadamard H) :
    (8 : ℝ) * targetCornerTerm H 3 1 =
      Integer.Sparse.eval targetCornerChild3_1Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 1), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 1)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 1) ≤ 6; decide +kernel)) = canonicalInput11264.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 3 1) =
      Integer.Sparse.eval reductionProjection7137 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 1), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 1)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 1) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound11264 hH))).trans (reductionSound7137 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 1), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 1)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 1) ≤ 6; decide +kernel)) = canonicalInput11416.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 1) =
      Integer.Sparse.eval reductionProjection2069 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 1), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 1)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 1) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound11416 hH))).trans (reductionSound2069 hH)
  have hw : 450 * CornerPairs.weight 3 * CornerPairs.weight 1 =
      (9 : ℝ) / 8 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild3_1Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild3_2Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection7137)
    (Integer.Sparse.scale (9) reductionProjection2069)

theorem targetCornerChild3_2 {H : CMatrix} (hH : IsHadamard H) :
    (8 : ℝ) * targetCornerTerm H 3 2 =
      Integer.Sparse.eval targetCornerChild3_2Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 2), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 2)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 2) ≤ 6; decide +kernel)) = canonicalInput11287.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 3 2) =
      Integer.Sparse.eval reductionProjection7137 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 2), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 2)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 2) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound11287 hH))).trans (reductionSound7137 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 2), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 2)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 2) ≤ 6; decide +kernel)) = canonicalInput11393.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 2) =
      Integer.Sparse.eval reductionProjection2069 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 2), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 2)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 2) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound11393 hH))).trans (reductionSound2069 hH)
  have hw : 450 * CornerPairs.weight 3 * CornerPairs.weight 2 =
      (9 : ℝ) / 8 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild3_2Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild3_3Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection7211)
    (Integer.Sparse.scale (9) reductionProjection7154)

theorem targetCornerChild3_3 {H : CMatrix} (hH : IsHadamard H) :
    (8 : ℝ) * targetCornerTerm H 3 3 =
      Integer.Sparse.eval targetCornerChild3_3Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 3), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 3)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel)) = canonicalInput11298.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 3 3) =
      Integer.Sparse.eval reductionProjection7211 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 3), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 3)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound11298 hH))).trans (reductionSound7211 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 3), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 3)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel)) = canonicalInput11382.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 3) =
      Integer.Sparse.eval reductionProjection7154 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 3), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 3)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound11382 hH))).trans (reductionSound7154 hH)
  have hw : 450 * CornerPairs.weight 3 * CornerPairs.weight 3 =
      (9 : ℝ) / 8 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild3_3Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild3_4Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection895)
    (Integer.Sparse.scale (9) reductionProjection4867)

theorem targetCornerChild3_4 {H : CMatrix} (hH : IsHadamard H) :
    (8 : ℝ) * targetCornerTerm H 3 4 =
      Integer.Sparse.eval targetCornerChild3_4Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 4), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 4)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel)) = canonicalInput11403.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 3 4) =
      Integer.Sparse.eval reductionProjection895 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 4), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 4)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound11403 hH))).trans (reductionSound895 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 4), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 4)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel)) = canonicalInput11277.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 4) =
      Integer.Sparse.eval reductionProjection4867 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 4), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 4)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound11277 hH))).trans (reductionSound4867 hH)
  have hw : 450 * CornerPairs.weight 3 * CornerPairs.weight 4 =
      (9 : ℝ) / 8 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild3_4Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild3_5Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection904)
    (Integer.Sparse.scale (9) reductionProjection2071)

theorem targetCornerChild3_5 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 3 5 =
      Integer.Sparse.eval targetCornerChild3_5Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 5), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 5)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 5) ≤ 6; decide +kernel)) = canonicalInput11395.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 3 5) =
      Integer.Sparse.eval reductionProjection904 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 5), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 5)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 5) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound11395 hH))).trans (reductionSound904 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 5), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 5)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 5) ≤ 6; decide +kernel)) = canonicalInput11285.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 5) =
      Integer.Sparse.eval reductionProjection2071 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 5), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 5)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 5) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound11285 hH))).trans (reductionSound2071 hH)
  have hw : 450 * CornerPairs.weight 3 * CornerPairs.weight 5 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild3_5Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild3_6Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (720) reductionProjection912)
    (Integer.Sparse.scale (1) reductionProjection3591)

theorem targetCornerChild3_6 {H : CMatrix} (hH : IsHadamard H) :
    (1280 : ℝ) * targetCornerTerm H 3 6 =
      Integer.Sparse.eval targetCornerChild3_6Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 6), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 6)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 6) ≤ 6; decide +kernel)) = canonicalInput11399.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 3 6) =
      Integer.Sparse.eval reductionProjection912 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 6), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 6)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 6) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound11399 hH))).trans (reductionSound912 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 6), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 6)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 6) ≤ 6; decide +kernel)) = canonicalInput11281.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (720 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 6) =
      Integer.Sparse.eval reductionProjection3591 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 6), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 6)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 6) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound11281 hH))).trans (reductionSound3591 hH)
  have hw : 450 * CornerPairs.weight 3 * CornerPairs.weight 6 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild3_6Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (720 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetCornerChild3_7Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection895)
    (Integer.Sparse.scale (9) reductionProjection4867)

theorem targetCornerChild3_7 {H : CMatrix} (hH : IsHadamard H) :
    (8 : ℝ) * targetCornerTerm H 3 7 =
      Integer.Sparse.eval targetCornerChild3_7Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 7), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 7)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 7) ≤ 6; decide +kernel)) = canonicalInput11388.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 3 7) =
      Integer.Sparse.eval reductionProjection895 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 7), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 7)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 7) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound11388 hH))).trans (reductionSound895 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 7), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 7)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 7) ≤ 6; decide +kernel)) = canonicalInput11292.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 7) =
      Integer.Sparse.eval reductionProjection4867 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 7), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 7)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 7) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound11292 hH))).trans (reductionSound4867 hH)
  have hw : 450 * CornerPairs.weight 3 * CornerPairs.weight 7 =
      (9 : ℝ) / 8 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild3_7Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild3_8Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection904)
    (Integer.Sparse.scale (9) reductionProjection2071)

theorem targetCornerChild3_8 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 3 8 =
      Integer.Sparse.eval targetCornerChild3_8Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 8), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 8)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 8) ≤ 6; decide +kernel)) = canonicalInput11268.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 3 8) =
      Integer.Sparse.eval reductionProjection904 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 8), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 8)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 8) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound11268 hH))).trans (reductionSound904 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 8), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 8)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 8) ≤ 6; decide +kernel)) = canonicalInput11412.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 8) =
      Integer.Sparse.eval reductionProjection2071 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 8), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 8)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 8) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound11412 hH))).trans (reductionSound2071 hH)
  have hw : 450 * CornerPairs.weight 3 * CornerPairs.weight 8 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild3_8Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild3_9Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (720) reductionProjection912)
    (Integer.Sparse.scale (1) reductionProjection3591)

theorem targetCornerChild3_9 {H : CMatrix} (hH : IsHadamard H) :
    (1280 : ℝ) * targetCornerTerm H 3 9 =
      Integer.Sparse.eval targetCornerChild3_9Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 9), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 9)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 9) ≤ 6; decide +kernel)) = canonicalInput11384.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 3 9) =
      Integer.Sparse.eval reductionProjection912 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 9), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 9)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 9) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound11384 hH))).trans (reductionSound912 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 9), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 9)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 9) ≤ 6; decide +kernel)) = canonicalInput11296.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (720 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 9) =
      Integer.Sparse.eval reductionProjection3591 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 9), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 9)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 9) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound11296 hH))).trans (reductionSound3591 hH)
  have hw : 450 * CornerPairs.weight 3 * CornerPairs.weight 9 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild3_9Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (720 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetCornerChild3_10Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection7137)
    (Integer.Sparse.scale (9) reductionProjection2069)

theorem targetCornerChild3_10 {H : CMatrix} (hH : IsHadamard H) :
    (8 : ℝ) * targetCornerTerm H 3 10 =
      Integer.Sparse.eval targetCornerChild3_10Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 10), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 10)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 10) ≤ 6; decide +kernel)) = canonicalInput11381.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 3 10) =
      Integer.Sparse.eval reductionProjection7137 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 10), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 10)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 10) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound11381 hH))).trans (reductionSound7137 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 10), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 10)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 10) ≤ 6; decide +kernel)) = canonicalInput11299.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 10) =
      Integer.Sparse.eval reductionProjection2069 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 10), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 10)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 10) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound11299 hH))).trans (reductionSound2069 hH)
  have hw : 450 * CornerPairs.weight 3 * CornerPairs.weight 10 =
      (9 : ℝ) / 8 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild3_10Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild3_11Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection3151)
    (Integer.Sparse.scale (9) reductionProjection2045)

theorem targetCornerChild3_11 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 3 11 =
      Integer.Sparse.eval targetCornerChild3_11Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 11), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 11)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 11) ≤ 6; decide +kernel)) = canonicalInput11266.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 3 11) =
      Integer.Sparse.eval reductionProjection3151 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 11), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 11)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 11) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound11266 hH))).trans (reductionSound3151 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 11), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 11)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 11) ≤ 6; decide +kernel)) = canonicalInput11414.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 11) =
      Integer.Sparse.eval reductionProjection2045 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 11), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 11)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 11) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound11414 hH))).trans (reductionSound2045 hH)
  have hw : 450 * CornerPairs.weight 3 * CornerPairs.weight 11 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild3_11Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild3_12Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection3151)
    (Integer.Sparse.scale (9) reductionProjection2045)

theorem targetCornerChild3_12 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 3 12 =
      Integer.Sparse.eval targetCornerChild3_12Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 12), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 12)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 12) ≤ 6; decide +kernel)) = canonicalInput11289.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 3 12) =
      Integer.Sparse.eval reductionProjection3151 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 12), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 12)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 12) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound11289 hH))).trans (reductionSound3151 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 12), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 12)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 12) ≤ 6; decide +kernel)) = canonicalInput11391.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 12) =
      Integer.Sparse.eval reductionProjection2045 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 12), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 12)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 12) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound11391 hH))).trans (reductionSound2045 hH)
  have hw : 450 * CornerPairs.weight 3 * CornerPairs.weight 12 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild3_12Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild3_13Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection895)
    (Integer.Sparse.scale (9) reductionProjection4867)

theorem targetCornerChild3_13 {H : CMatrix} (hH : IsHadamard H) :
    (8 : ℝ) * targetCornerTerm H 3 13 =
      Integer.Sparse.eval targetCornerChild3_13Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 13), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 13)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 13) ≤ 6; decide +kernel)) = canonicalInput11402.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 3 13) =
      Integer.Sparse.eval reductionProjection895 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 13), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 13)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 13) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound11402 hH))).trans (reductionSound895 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 13), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 13)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 13) ≤ 6; decide +kernel)) = canonicalInput11278.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 13) =
      Integer.Sparse.eval reductionProjection4867 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 13), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 13)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 13) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound11278 hH))).trans (reductionSound4867 hH)
  have hw : 450 * CornerPairs.weight 3 * CornerPairs.weight 13 =
      (9 : ℝ) / 8 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild3_13Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild3_14Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection904)
    (Integer.Sparse.scale (9) reductionProjection2071)

theorem targetCornerChild3_14 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 3 14 =
      Integer.Sparse.eval targetCornerChild3_14Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 14), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 14)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 14) ≤ 6; decide +kernel)) = canonicalInput11394.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 3 14) =
      Integer.Sparse.eval reductionProjection904 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 14), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 14)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 14) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound11394 hH))).trans (reductionSound904 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 14), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 14)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 14) ≤ 6; decide +kernel)) = canonicalInput11286.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 14) =
      Integer.Sparse.eval reductionProjection2071 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 14), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 14)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 14) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound11286 hH))).trans (reductionSound2071 hH)
  have hw : 450 * CornerPairs.weight 3 * CornerPairs.weight 14 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild3_14Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild3_15Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (720) reductionProjection912)
    (Integer.Sparse.scale (1) reductionProjection3591)

theorem targetCornerChild3_15 {H : CMatrix} (hH : IsHadamard H) :
    (1280 : ℝ) * targetCornerTerm H 3 15 =
      Integer.Sparse.eval targetCornerChild3_15Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 15), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 15)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 15) ≤ 6; decide +kernel)) = canonicalInput11398.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 3 15) =
      Integer.Sparse.eval reductionProjection912 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 15), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 15)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 15) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound11398 hH))).trans (reductionSound912 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 15), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 15)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 15) ≤ 6; decide +kernel)) = canonicalInput11282.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (720 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 15) =
      Integer.Sparse.eval reductionProjection3591 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 15), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 15)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 15) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound11282 hH))).trans (reductionSound3591 hH)
  have hw : 450 * CornerPairs.weight 3 * CornerPairs.weight 15 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild3_15Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (720 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetCornerChild3_16Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection901)
    (Integer.Sparse.scale (9) reductionProjection3671)

theorem targetCornerChild3_16 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 3 16 =
      Integer.Sparse.eval targetCornerChild3_16Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 16), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 16)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 16) ≤ 6; decide +kernel)) = canonicalInput11408.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 3 16) =
      Integer.Sparse.eval reductionProjection901 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 16), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 16)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 16) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound11408 hH))).trans (reductionSound901 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 16), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 16)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 16) ≤ 6; decide +kernel)) = canonicalInput11272.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 16) =
      Integer.Sparse.eval reductionProjection3671 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 16), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 16)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 16) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound11272 hH))).trans (reductionSound3671 hH)
  have hw : 450 * CornerPairs.weight 3 * CornerPairs.weight 16 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild3_16Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild3_17Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (3) reductionProjection64)
    (Integer.Sparse.scale (3) oldProjection276)

theorem targetCornerChild3_17 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 3 17 =
      Integer.Sparse.eval targetCornerChild3_17Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 17), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 17)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 17) ≤ 6; decide +kernel)) = canonicalInput11406.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 3 17) =
      Integer.Sparse.eval reductionProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 17), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 17)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 17) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound11406 hH))).trans (reductionSound64 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 17), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 17)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 17) ≤ 6; decide +kernel)) = canonicalInput11274.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 17) =
      Integer.Sparse.eval oldProjection276 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 17), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 17)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 17) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound11274 hH))).trans (oldProjectionSound276 hH)
  have hw : 450 * CornerPairs.weight 3 * CornerPairs.weight 17 =
      (3 : ℝ) / 16 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((1 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild3_17Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerChild3_18Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection904)
    (Integer.Sparse.scale (9) reductionProjection2071)

theorem targetCornerChild3_18 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 3 18 =
      Integer.Sparse.eval targetCornerChild3_18Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 18), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 18)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 18) ≤ 6; decide +kernel)) = canonicalInput11404.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 3 18) =
      Integer.Sparse.eval reductionProjection904 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 18), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 18)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 18) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound11404 hH))).trans (reductionSound904 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 18), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 18)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 18) ≤ 6; decide +kernel)) = canonicalInput11276.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 18) =
      Integer.Sparse.eval reductionProjection2071 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 18), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 18)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 18) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound11276 hH))).trans (reductionSound2071 hH)
  have hw : 450 * CornerPairs.weight 3 * CornerPairs.weight 18 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild3_18Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild3_19Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (3) reductionProjection2692)
    (Integer.Sparse.scale (3) reductionProjection389)

theorem targetCornerChild3_19 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 3 19 =
      Integer.Sparse.eval targetCornerChild3_19Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 19), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 19)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 19) ≤ 6; decide +kernel)) = canonicalInput11396.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 3 19) =
      Integer.Sparse.eval reductionProjection2692 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 19), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 19)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 19) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound11396 hH))).trans (reductionSound2692 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 19), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 19)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 19) ≤ 6; decide +kernel)) = canonicalInput11284.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 19) =
      Integer.Sparse.eval reductionProjection389 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 19), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 19)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 19) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound11284 hH))).trans (reductionSound389 hH)
  have hw : 450 * CornerPairs.weight 3 * CornerPairs.weight 19 =
      (3 : ℝ) / 16 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((1 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild3_19Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerChild3_20Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection895)
    (Integer.Sparse.scale (9) reductionProjection4867)

theorem targetCornerChild3_20 {H : CMatrix} (hH : IsHadamard H) :
    (8 : ℝ) * targetCornerTerm H 3 20 =
      Integer.Sparse.eval targetCornerChild3_20Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 20), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 20)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 20) ≤ 6; decide +kernel)) = canonicalInput11387.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 3 20) =
      Integer.Sparse.eval reductionProjection895 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 20), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 20)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 20) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound11387 hH))).trans (reductionSound895 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 20), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 20)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 20) ≤ 6; decide +kernel)) = canonicalInput11293.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 20) =
      Integer.Sparse.eval reductionProjection4867 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 20), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 20)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 20) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound11293 hH))).trans (reductionSound4867 hH)
  have hw : 450 * CornerPairs.weight 3 * CornerPairs.weight 20 =
      (9 : ℝ) / 8 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild3_20Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild3_21Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection904)
    (Integer.Sparse.scale (9) reductionProjection2071)

theorem targetCornerChild3_21 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 3 21 =
      Integer.Sparse.eval targetCornerChild3_21Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 21), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 21)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 21) ≤ 6; decide +kernel)) = canonicalInput11267.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 3 21) =
      Integer.Sparse.eval reductionProjection904 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 21), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 21)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 21) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound11267 hH))).trans (reductionSound904 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 21), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 21)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 21) ≤ 6; decide +kernel)) = canonicalInput11413.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 21) =
      Integer.Sparse.eval reductionProjection2071 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 21), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 21)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 21) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound11413 hH))).trans (reductionSound2071 hH)
  have hw : 450 * CornerPairs.weight 3 * CornerPairs.weight 21 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild3_21Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild3_22Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (720) reductionProjection912)
    (Integer.Sparse.scale (1) reductionProjection3591)

theorem targetCornerChild3_22 {H : CMatrix} (hH : IsHadamard H) :
    (1280 : ℝ) * targetCornerTerm H 3 22 =
      Integer.Sparse.eval targetCornerChild3_22Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 22), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 22)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 22) ≤ 6; decide +kernel)) = canonicalInput11383.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 3 22) =
      Integer.Sparse.eval reductionProjection912 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 22), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 22)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 22) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound11383 hH))).trans (reductionSound912 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 22), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 22)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 22) ≤ 6; decide +kernel)) = canonicalInput11297.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (720 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 22) =
      Integer.Sparse.eval reductionProjection3591 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 22), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 22)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 22) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound11297 hH))).trans (reductionSound3591 hH)
  have hw : 450 * CornerPairs.weight 3 * CornerPairs.weight 22 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild3_22Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (720 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetCornerChild3_23Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection901)
    (Integer.Sparse.scale (9) reductionProjection3671)

theorem targetCornerChild3_23 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 3 23 =
      Integer.Sparse.eval targetCornerChild3_23Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 23), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 23)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel)) = canonicalInput11409.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 3 23) =
      Integer.Sparse.eval reductionProjection901 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 23), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 23)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound11409 hH))).trans (reductionSound901 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 23), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 23)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel)) = canonicalInput11271.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 23) =
      Integer.Sparse.eval reductionProjection3671 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 23), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 23)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound11271 hH))).trans (reductionSound3671 hH)
  have hw : 450 * CornerPairs.weight 3 * CornerPairs.weight 23 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild3_23Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild3_24Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (3) reductionProjection64)
    (Integer.Sparse.scale (3) oldProjection276)

theorem targetCornerChild3_24 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 3 24 =
      Integer.Sparse.eval targetCornerChild3_24Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 24), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 24)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel)) = canonicalInput11407.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 3 24) =
      Integer.Sparse.eval reductionProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 24), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 24)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound11407 hH))).trans (reductionSound64 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 24), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 24)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel)) = canonicalInput11273.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 24) =
      Integer.Sparse.eval oldProjection276 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 24), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 24)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound11273 hH))).trans (oldProjectionSound276 hH)
  have hw : 450 * CornerPairs.weight 3 * CornerPairs.weight 24 =
      (3 : ℝ) / 16 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((1 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild3_24Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerChild3_25Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection904)
    (Integer.Sparse.scale (9) reductionProjection2071)

theorem targetCornerChild3_25 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 3 25 =
      Integer.Sparse.eval targetCornerChild3_25Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 25), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 25)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 25) ≤ 6; decide +kernel)) = canonicalInput11389.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 3 25) =
      Integer.Sparse.eval reductionProjection904 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 25), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 25)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 25) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound11389 hH))).trans (reductionSound904 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 25), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 25)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 25) ≤ 6; decide +kernel)) = canonicalInput11291.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 25) =
      Integer.Sparse.eval reductionProjection2071 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 25), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 25)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 25) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound11291 hH))).trans (reductionSound2071 hH)
  have hw : 450 * CornerPairs.weight 3 * CornerPairs.weight 25 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild3_25Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild3_26Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (3) reductionProjection2692)
    (Integer.Sparse.scale (3) reductionProjection389)

theorem targetCornerChild3_26 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 3 26 =
      Integer.Sparse.eval targetCornerChild3_26Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 26), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 26)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 26) ≤ 6; decide +kernel)) = canonicalInput11269.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 3 26) =
      Integer.Sparse.eval reductionProjection2692 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 26), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 26)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 26) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound11269 hH))).trans (reductionSound2692 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 26), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 26)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 26) ≤ 6; decide +kernel)) = canonicalInput11411.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 26) =
      Integer.Sparse.eval reductionProjection389 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 26), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 26)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 26) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound11411 hH))).trans (reductionSound389 hH)
  have hw : 450 * CornerPairs.weight 3 * CornerPairs.weight 26 =
      (3 : ℝ) / 16 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((1 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild3_26Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerChild3_27Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection7137)
    (Integer.Sparse.scale (9) reductionProjection2069)

theorem targetCornerChild3_27 {H : CMatrix} (hH : IsHadamard H) :
    (8 : ℝ) * targetCornerTerm H 3 27 =
      Integer.Sparse.eval targetCornerChild3_27Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 27), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 27)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 27) ≤ 6; decide +kernel)) = canonicalInput11380.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 3 27) =
      Integer.Sparse.eval reductionProjection7137 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 27), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 27)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 27) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound11380 hH))).trans (reductionSound7137 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 27), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 27)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 27) ≤ 6; decide +kernel)) = canonicalInput11300.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 27) =
      Integer.Sparse.eval reductionProjection2069 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 27), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 27)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 27) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound11300 hH))).trans (reductionSound2069 hH)
  have hw : 450 * CornerPairs.weight 3 * CornerPairs.weight 27 =
      (9 : ℝ) / 8 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild3_27Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild3_28Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection3151)
    (Integer.Sparse.scale (9) reductionProjection2045)

theorem targetCornerChild3_28 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 3 28 =
      Integer.Sparse.eval targetCornerChild3_28Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 28), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 28)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel)) = canonicalInput11265.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 3 28) =
      Integer.Sparse.eval reductionProjection3151 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 28), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 28)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound11265 hH))).trans (reductionSound3151 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 28), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 28)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel)) = canonicalInput11415.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 28) =
      Integer.Sparse.eval reductionProjection2045 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 28), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 28)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound11415 hH))).trans (reductionSound2045 hH)
  have hw : 450 * CornerPairs.weight 3 * CornerPairs.weight 28 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild3_28Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild3_29Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection3151)
    (Integer.Sparse.scale (9) reductionProjection2045)

theorem targetCornerChild3_29 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 3 29 =
      Integer.Sparse.eval targetCornerChild3_29Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 29), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 29)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 29) ≤ 6; decide +kernel)) = canonicalInput11288.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 3 29) =
      Integer.Sparse.eval reductionProjection3151 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 29), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 29)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 29) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound11288 hH))).trans (reductionSound3151 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 29), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 29)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 29) ≤ 6; decide +kernel)) = canonicalInput11392.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 29) =
      Integer.Sparse.eval reductionProjection2045 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 29), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 29)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 29) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound11392 hH))).trans (reductionSound2045 hH)
  have hw : 450 * CornerPairs.weight 3 * CornerPairs.weight 29 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild3_29Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild3_30Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection904)
    (Integer.Sparse.scale (9) reductionProjection2071)

theorem targetCornerChild3_30 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 3 30 =
      Integer.Sparse.eval targetCornerChild3_30Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 30), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 30)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 30) ≤ 6; decide +kernel)) = canonicalInput11405.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 3 30) =
      Integer.Sparse.eval reductionProjection904 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 30), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 30)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 30) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound11405 hH))).trans (reductionSound904 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 30), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 30)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 30) ≤ 6; decide +kernel)) = canonicalInput11275.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 30) =
      Integer.Sparse.eval reductionProjection2071 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 30), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 30)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 30) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound11275 hH))).trans (reductionSound2071 hH)
  have hw : 450 * CornerPairs.weight 3 * CornerPairs.weight 30 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild3_30Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild3_31Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (3) reductionProjection2692)
    (Integer.Sparse.scale (3) reductionProjection389)

theorem targetCornerChild3_31 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 3 31 =
      Integer.Sparse.eval targetCornerChild3_31Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 31), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 31)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 31) ≤ 6; decide +kernel)) = canonicalInput11397.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 3 31) =
      Integer.Sparse.eval reductionProjection2692 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 31), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 31)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 31) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound11397 hH))).trans (reductionSound2692 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 31), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 31)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 31) ≤ 6; decide +kernel)) = canonicalInput11283.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 31) =
      Integer.Sparse.eval reductionProjection389 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 31), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 31)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 31) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound11283 hH))).trans (reductionSound389 hH)
  have hw : 450 * CornerPairs.weight 3 * CornerPairs.weight 31 =
      (3 : ℝ) / 16 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((1 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild3_31Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerChild3_32Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection904)
    (Integer.Sparse.scale (9) reductionProjection2071)

theorem targetCornerChild3_32 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 3 32 =
      Integer.Sparse.eval targetCornerChild3_32Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 32), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 32)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 32) ≤ 6; decide +kernel)) = canonicalInput11390.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 3 32) =
      Integer.Sparse.eval reductionProjection904 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 32), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 32)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 32) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound11390 hH))).trans (reductionSound904 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 32), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 32)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 32) ≤ 6; decide +kernel)) = canonicalInput11290.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 32) =
      Integer.Sparse.eval reductionProjection2071 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 32), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 32)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 32) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound11290 hH))).trans (reductionSound2071 hH)
  have hw : 450 * CornerPairs.weight 3 * CornerPairs.weight 32 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild3_32Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild3_33Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (3) reductionProjection2692)
    (Integer.Sparse.scale (3) reductionProjection389)

theorem targetCornerChild3_33 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 3 33 =
      Integer.Sparse.eval targetCornerChild3_33Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 33), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 33)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 33) ≤ 6; decide +kernel)) = canonicalInput11270.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 3 33) =
      Integer.Sparse.eval reductionProjection2692 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 33), (CornerPairs.overlapExponent cubicExponent cubicExponent 3 33)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 33) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound11270 hH))).trans (reductionSound2692 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 33), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 33)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 33) ≤ 6; decide +kernel)) = canonicalInput11410.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 33) =
      Integer.Sparse.eval reductionProjection389 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 3), (CornerPairs.blocks 33), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 3 33)⟩ : ExponentCode) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 33) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound11410 hH))).trans (reductionSound389 hH)
  have hw : 450 * CornerPairs.weight 3 * CornerPairs.weight 33 =
      (3 : ℝ) / 16 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((1 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild3_33Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerRow3Projection : Integer.Sparse (Fin 1613) := [(0, 13), (14, 480), (81, -480), (87, -240), (94, 60), (145, 8640), (169, 2880), (214, 1440), (228, -240), (269, 7200), (287, 1440), (362, 2880), (366, 2880), (367, 2880), (379, 2880), (425, 5760), (426, 7920), (516, 2880), (523, 2880), (602, 5040), (635, 1440), (636, 1440), (638, 3600), (655, 8640), (666, 3600), (667, -1440), (697, -480), (698, 5520), (827, 1440), (828, 7200), (831, 1440), (848, -8640), (849, -1440), (850, -1440), (853, -1440), (854, -1440), (857, -1440), (859, -1440), (865, 720), (874, -1440), (875, -1440), (888, -1440), (890, 5760), (943, -2880), (947, 2880), (948, 2880), (955, 720), (956, 720), (978, 2880), (1007, 5760), (1015, 1440), (1016, 1440), (1026, 720), (1027, 720), (1050, -240), (1055, -240), (1058, -960), (1059, 640), (1210, 960), (1212, 1920), (1219, -480), (1220, 960), (1221, -240), (1223, -480), (1226, 2560), (1227, 1120), (1251, -745), (1272, 1440), (1389, 960)]

theorem targetCornerRow3 {H : CMatrix} (hH : IsHadamard H) :
    (1280 : ℝ) * (∑ i : Fin 34, (targetCornerTerm H 3) i) =
      Integer.Sparse.eval targetCornerRow3Projection (Normalization.momentVector H) := by
  have hc : ∀ i : Fin 34, ((![1280, 8, 8, 8, 8, 16, 1280, 8, 16, 1280, 8, 16, 16, 8, 16, 1280, 16, 16, 16, 16, 8, 16, 1280, 16, 16, 16, 16, 8, 16, 16, 16, 16, 16, 16] : Fin 34 → ℤ) i : ℝ) * ((targetCornerTerm H 3) i) =
      Integer.Sparse.eval (![targetCornerChild3_0Projection, targetCornerChild3_1Projection, targetCornerChild3_2Projection, targetCornerChild3_3Projection, targetCornerChild3_4Projection, targetCornerChild3_5Projection, targetCornerChild3_6Projection, targetCornerChild3_7Projection, targetCornerChild3_8Projection, targetCornerChild3_9Projection, targetCornerChild3_10Projection, targetCornerChild3_11Projection, targetCornerChild3_12Projection, targetCornerChild3_13Projection, targetCornerChild3_14Projection, targetCornerChild3_15Projection, targetCornerChild3_16Projection, targetCornerChild3_17Projection, targetCornerChild3_18Projection, targetCornerChild3_19Projection, targetCornerChild3_20Projection, targetCornerChild3_21Projection, targetCornerChild3_22Projection, targetCornerChild3_23Projection, targetCornerChild3_24Projection, targetCornerChild3_25Projection, targetCornerChild3_26Projection, targetCornerChild3_27Projection, targetCornerChild3_28Projection, targetCornerChild3_29Projection, targetCornerChild3_30Projection, targetCornerChild3_31Projection, targetCornerChild3_32Projection, targetCornerChild3_33Projection] i) (Normalization.momentVector H) := by
    intro i
    fin_cases i
    · exact targetCornerChild3_0 hH
    · exact targetCornerChild3_1 hH
    · exact targetCornerChild3_2 hH
    · exact targetCornerChild3_3 hH
    · exact targetCornerChild3_4 hH
    · exact targetCornerChild3_5 hH
    · exact targetCornerChild3_6 hH
    · exact targetCornerChild3_7 hH
    · exact targetCornerChild3_8 hH
    · exact targetCornerChild3_9 hH
    · exact targetCornerChild3_10 hH
    · exact targetCornerChild3_11 hH
    · exact targetCornerChild3_12 hH
    · exact targetCornerChild3_13 hH
    · exact targetCornerChild3_14 hH
    · exact targetCornerChild3_15 hH
    · exact targetCornerChild3_16 hH
    · exact targetCornerChild3_17 hH
    · exact targetCornerChild3_18 hH
    · exact targetCornerChild3_19 hH
    · exact targetCornerChild3_20 hH
    · exact targetCornerChild3_21 hH
    · exact targetCornerChild3_22 hH
    · exact targetCornerChild3_23 hH
    · exact targetCornerChild3_24 hH
    · exact targetCornerChild3_25 hH
    · exact targetCornerChild3_26 hH
    · exact targetCornerChild3_27 hH
    · exact targetCornerChild3_28 hH
    · exact targetCornerChild3_29 hH
    · exact targetCornerChild3_30 hH
    · exact targetCornerChild3_31 hH
    · exact targetCornerChild3_32 hH
    · exact targetCornerChild3_33 hH
  exact integer_projection (Normalization.momentVector H) (∑ i, (targetCornerTerm H 3) i) (targetCornerTerm H 3)
    (-1) 1280 1280 (-1) ![1280, 8, 8, 8, 8, 16, 1280, 8, 16, 1280, 8, 16, 16, 8, 16, 1280, 16, 16, 16, 16, 8, 16, 1280, 16, 16, 16, 16, 8, 16, 16, 16, 16, 16, 16] ![1, 160, 160, 160, 160, 80, 1, 160, 80, 1, 160, 80, 80, 160, 80, 1, 80, 80, 80, 80, 160, 80, 1, 80, 80, 80, 80, 160, 80, 80, 80, 80, 80, 80] targetCornerRow3Projection ![targetCornerChild3_0Projection, targetCornerChild3_1Projection, targetCornerChild3_2Projection, targetCornerChild3_3Projection, targetCornerChild3_4Projection, targetCornerChild3_5Projection, targetCornerChild3_6Projection, targetCornerChild3_7Projection, targetCornerChild3_8Projection, targetCornerChild3_9Projection, targetCornerChild3_10Projection, targetCornerChild3_11Projection, targetCornerChild3_12Projection, targetCornerChild3_13Projection, targetCornerChild3_14Projection, targetCornerChild3_15Projection, targetCornerChild3_16Projection, targetCornerChild3_17Projection, targetCornerChild3_18Projection, targetCornerChild3_19Projection, targetCornerChild3_20Projection, targetCornerChild3_21Projection, targetCornerChild3_22Projection, targetCornerChild3_23Projection, targetCornerChild3_24Projection, targetCornerChild3_25Projection, targetCornerChild3_26Projection, targetCornerChild3_27Projection, targetCornerChild3_28Projection, targetCornerChild3_29Projection, targetCornerChild3_30Projection, targetCornerChild3_31Projection, targetCornerChild3_32Projection, targetCornerChild3_33Projection]
    (by decide +kernel) (by decide +kernel)
    (by intro i; fin_cases i <;> decide +kernel) (by ring) hc (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
