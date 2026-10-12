import NoFourMUBs.Step2.SOS.Canonical000
import NoFourMUBs.Step2.SOS.Canonical001
import NoFourMUBs.Step2.SOS.Canonical002
import NoFourMUBs.Step2.SOS.Canonical008
import NoFourMUBs.Step2.SOS.Canonical009
import NoFourMUBs.Step2.SOS.Canonical010
import NoFourMUBs.Step2.SOS.Canonical012
import NoFourMUBs.Step2.SOS.Canonical013
import NoFourMUBs.Step2.SOS.Canonical072
import NoFourMUBs.Step2.SOS.Canonical090
import NoFourMUBs.Step2.SOS.Canonical126
import NoFourMUBs.Step2.SOS.Canonical150
import NoFourMUBs.Step2.SOS.Canonical155
import NoFourMUBs.Step2.SOS.Canonical161
import NoFourMUBs.Step2.SOS.Canonical171
import NoFourMUBs.Step2.SOS.Canonical180
import NoFourMUBs.Step2.SOS.Canonical182
import NoFourMUBs.Step2.SOS.Canonical184
import NoFourMUBs.Step2.SOS.Canonical188
import NoFourMUBs.Step2.SOS.Canonical191
import NoFourMUBs.Step2.SOS.Canonical192
import NoFourMUBs.Step2.SOS.Canonical289
import NoFourMUBs.Step2.SOS.Canonical295
import NoFourMUBs.Step2.SOS.Canonical296
import NoFourMUBs.Step2.SOS.Canonical356
import NoFourMUBs.Step2.SOS.Canonical365
import NoFourMUBs.Step2.SOS.Canonical366
import NoFourMUBs.Step2.SOS.Canonical369
import NoFourMUBs.Step2.SOS.Canonical371
import NoFourMUBs.Step2.SOS.Canonical482
import NoFourMUBs.Step2.SOS.Canonical496
import NoFourMUBs.Step2.SOS.Canonical511
import NoFourMUBs.Step2.SOS.Canonical512
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections009
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.Reductions001
import NoFourMUBs.Step2.SOS.Reductions017
import NoFourMUBs.Step2.SOS.Reductions028
import NoFourMUBs.Step2.SOS.Reductions048
import NoFourMUBs.Step2.SOS.Reductions063
import NoFourMUBs.Step2.SOS.Reductions064
import NoFourMUBs.Step2.SOS.Reductions074
import NoFourMUBs.Step2.SOS.Reductions098
import NoFourMUBs.Step2.SOS.Reductions112
import NoFourMUBs.Step2.SOS.Reductions114
import NoFourMUBs.Step2.SOS.Reductions245
import NoFourMUBs.Step2.SOS.Reductions246
import NoFourMUBs.Step2.SOS.Reductions247
import NoFourMUBs.Step2.SOS.Reductions248
import NoFourMUBs.Step2.SOS.TargetProjectionTerms

noncomputable section
namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000

def targetCornerChild28_0Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (1) reductionProjection7883)
    (Integer.Sparse.scale (1) reductionProjection7947)

theorem targetCornerChild28_0 {H : CMatrix} (hH : IsHadamard H) :
    (2560 : ℝ) * targetCornerTerm H 28 0 =
      Integer.Sparse.eval targetCornerChild28_0Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 0), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 0)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 0) ≤ 6; decide +kernel)) = canonicalInput11534.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 28 0) =
      Integer.Sparse.eval reductionProjection7883 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 0), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 0)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 0) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound11534 hH))).trans (reductionSound7883 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 0), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 0)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 0) ≤ 6; decide +kernel)) = canonicalInput10955.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 0) =
      Integer.Sparse.eval reductionProjection7947 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 0), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 0)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 0) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound10955 hH))).trans (reductionSound7947 hH)
  have hw : 450 * CornerPairs.weight 28 * CornerPairs.weight 0 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild28_0Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (1 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetCornerChild28_1Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (720) reductionProjection912)
    (Integer.Sparse.scale (1) reductionProjection3591)

theorem targetCornerChild28_1 {H : CMatrix} (hH : IsHadamard H) :
    (1280 : ℝ) * targetCornerTerm H 28 1 =
      Integer.Sparse.eval targetCornerChild28_1Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 1), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 1)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 1) ≤ 6; decide +kernel)) = canonicalInput35.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 28 1) =
      Integer.Sparse.eval reductionProjection912 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 1), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 1)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 1) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound35 hH))).trans (reductionSound912 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 1), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 1)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 1) ≤ 6; decide +kernel)) = canonicalInput32769.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (720 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 1) =
      Integer.Sparse.eval reductionProjection3591 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 1), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 1)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 1) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound32769 hH))).trans (reductionSound3591 hH)
  have hw : 450 * CornerPairs.weight 28 * CornerPairs.weight 1 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild28_1Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (720 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetCornerChild28_2Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection904)
    (Integer.Sparse.scale (9) reductionProjection2071)

theorem targetCornerChild28_2 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 28 2 =
      Integer.Sparse.eval targetCornerChild28_2Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 2), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 2)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 2) ≤ 6; decide +kernel)) = canonicalInput4636.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 28 2) =
      Integer.Sparse.eval reductionProjection904 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 2), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 2)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 2) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound4636 hH))).trans (reductionSound904 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 2), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 2)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 2) ≤ 6; decide +kernel)) = canonicalInput12320.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 2) =
      Integer.Sparse.eval reductionProjection2071 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 2), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 2)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 2) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound12320 hH))).trans (reductionSound2071 hH)
  have hw : 450 * CornerPairs.weight 28 * CornerPairs.weight 2 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild28_2Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild28_3Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection3151)
    (Integer.Sparse.scale (9) reductionProjection2045)

theorem targetCornerChild28_3 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 28 3 =
      Integer.Sparse.eval targetCornerChild28_3Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 3), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 3)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel)) = canonicalInput9980.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 28 3) =
      Integer.Sparse.eval reductionProjection3151 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 3), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 3)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound9980 hH))).trans (reductionSound3151 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 3), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 3)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel)) = canonicalInput11786.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 3) =
      Integer.Sparse.eval reductionProjection2045 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 3), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 3)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound11786 hH))).trans (reductionSound2045 hH)
  have hw : 450 * CornerPairs.weight 28 * CornerPairs.weight 3 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild28_3Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild28_4Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection904)
    (Integer.Sparse.scale (9) reductionProjection2071)

theorem targetCornerChild28_4 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 28 4 =
      Integer.Sparse.eval targetCornerChild28_4Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 4), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 4)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel)) = canonicalInput23370.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 28 4) =
      Integer.Sparse.eval reductionProjection904 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 4), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 4)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound23370 hH))).trans (reductionSound904 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 4), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 4)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel)) = canonicalInput653.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 4) =
      Integer.Sparse.eval reductionProjection2071 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 4), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 4)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound653 hH))).trans (reductionSound2071 hH)
  have hw : 450 * CornerPairs.weight 28 * CornerPairs.weight 4 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild28_4Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild28_5Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection566)
    (Integer.Sparse.scale (9) oldProjection475)

theorem targetCornerChild28_5 {H : CMatrix} (hH : IsHadamard H) :
    (32 : ℝ) * targetCornerTerm H 28 5 =
      Integer.Sparse.eval targetCornerChild28_5Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 5), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 5)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 5) ≤ 6; decide +kernel)) = canonicalInput18546.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 28 5) =
      Integer.Sparse.eval reductionProjection566 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 5), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 5)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 5) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound18546 hH))).trans (reductionSound566 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 5), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 5)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 5) ≤ 6; decide +kernel)) = canonicalInput880.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 5) =
      Integer.Sparse.eval oldProjection475 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 5), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 5)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 5) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound880 hH))).trans (oldProjectionSound475 hH)
  have hw : 450 * CornerPairs.weight 28 * CornerPairs.weight 5 =
      (9 : ℝ) / 32 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild28_5Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild28_6Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) oldProjection513)
    (Integer.Sparse.scale (9) reductionProjection2060)

theorem targetCornerChild28_6 {H : CMatrix} (hH : IsHadamard H) :
    (32 : ℝ) * targetCornerTerm H 28 6 =
      Integer.Sparse.eval targetCornerChild28_6Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 6), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 6)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 6) ≤ 6; decide +kernel)) = canonicalInput22807.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 28 6) =
      Integer.Sparse.eval oldProjection513 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 6), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 6)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 6) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound22807 hH))).trans (oldProjectionSound513 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 6), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 6)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 6) ≤ 6; decide +kernel)) = canonicalInput801.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 6) =
      Integer.Sparse.eval reductionProjection2060 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 6), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 6)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 6) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound801 hH))).trans (reductionSound2060 hH)
  have hw : 450 * CornerPairs.weight 28 * CornerPairs.weight 6 =
      (9 : ℝ) / 32 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild28_6Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild28_7Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection901)
    (Integer.Sparse.scale (9) reductionProjection3671)

theorem targetCornerChild28_7 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 28 7 =
      Integer.Sparse.eval targetCornerChild28_7Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 7), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 7)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 7) ≤ 6; decide +kernel)) = canonicalInput12256.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 28 7) =
      Integer.Sparse.eval reductionProjection901 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 7), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 7)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 7) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound12256 hH))).trans (reductionSound901 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 7), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 7)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 7) ≤ 6; decide +kernel)) = canonicalInput8100.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 7) =
      Integer.Sparse.eval reductionProjection3671 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 7), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 7)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 7) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound8100 hH))).trans (reductionSound3671 hH)
  have hw : 450 * CornerPairs.weight 28 * CornerPairs.weight 7 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild28_7Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild28_8Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (180) reductionProjection1554)
    (Integer.Sparse.scale (1) oldProjection1002)

theorem targetCornerChild28_8 {H : CMatrix} (hH : IsHadamard H) :
    (640 : ℝ) * targetCornerTerm H 28 8 =
      Integer.Sparse.eval targetCornerChild28_8Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 8), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 8)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 8) ≤ 6; decide +kernel)) = canonicalInput106.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 28 8) =
      Integer.Sparse.eval reductionProjection1554 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 8), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 8)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 8) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound106 hH))).trans (reductionSound1554 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 8), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 8)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 8) ≤ 6; decide +kernel)) = canonicalInput31766.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (180 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 8) =
      Integer.Sparse.eval oldProjection1002 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 8), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 8)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 8) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound31766 hH))).trans (oldProjectionSound1002 hH)
  have hw : 450 * CornerPairs.weight 28 * CornerPairs.weight 8 =
      (9 : ℝ) / 32 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild28_8Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (180 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetCornerChild28_9Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection566)
    (Integer.Sparse.scale (9) oldProjection475)

theorem targetCornerChild28_9 {H : CMatrix} (hH : IsHadamard H) :
    (32 : ℝ) * targetCornerTerm H 28 9 =
      Integer.Sparse.eval targetCornerChild28_9Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 9), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 9)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 9) ≤ 6; decide +kernel)) = canonicalInput12082.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 28 9) =
      Integer.Sparse.eval reductionProjection566 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 9), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 9)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 9) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound12082 hH))).trans (reductionSound566 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 9), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 9)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 9) ≤ 6; decide +kernel)) = canonicalInput9623.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 9) =
      Integer.Sparse.eval oldProjection475 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 9), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 9)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 9) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound9623 hH))).trans (oldProjectionSound475 hH)
  have hw : 450 * CornerPairs.weight 28 * CornerPairs.weight 9 =
      (9 : ℝ) / 32 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild28_9Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild28_10Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection904)
    (Integer.Sparse.scale (9) reductionProjection2071)

theorem targetCornerChild28_10 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 28 10 =
      Integer.Sparse.eval targetCornerChild28_10Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 10), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 10)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 10) ≤ 6; decide +kernel)) = canonicalInput11699.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 28 10) =
      Integer.Sparse.eval reductionProjection904 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 10), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 10)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 10) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound11699 hH))).trans (reductionSound904 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 10), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 10)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 10) ≤ 6; decide +kernel)) = canonicalInput10363.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 10) =
      Integer.Sparse.eval reductionProjection2071 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 10), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 10)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 10) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound10363 hH))).trans (reductionSound2071 hH)
  have hw : 450 * CornerPairs.weight 28 * CornerPairs.weight 10 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild28_10Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild28_11Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (720) oldProjection618)
    (Integer.Sparse.scale (1) oldProjection1003)

theorem targetCornerChild28_11 {H : CMatrix} (hH : IsHadamard H) :
    (2560 : ℝ) * targetCornerTerm H 28 11 =
      Integer.Sparse.eval targetCornerChild28_11Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 11), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 11)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 11) ≤ 6; decide +kernel)) = canonicalInput61.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 28 11) =
      Integer.Sparse.eval oldProjection618 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 11), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 11)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 11) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound61 hH))).trans (oldProjectionSound618 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 11), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 11)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 11) ≤ 6; decide +kernel)) = canonicalInput32747.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (720 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 11) =
      Integer.Sparse.eval oldProjection1003 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 11), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 11)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 11) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound32747 hH))).trans (oldProjectionSound1003 hH)
  have hw : 450 * CornerPairs.weight 28 * CornerPairs.weight 11 =
      (9 : ℝ) / 32 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild28_11Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (720 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetCornerChild28_12Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) oldProjection686)
    (Integer.Sparse.scale (9) reductionProjection2388)

theorem targetCornerChild28_12 {H : CMatrix} (hH : IsHadamard H) :
    (32 : ℝ) * targetCornerTerm H 28 12 =
      Integer.Sparse.eval targetCornerChild28_12Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 12), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 12)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 12) ≤ 6; decide +kernel)) = canonicalInput5783.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 28 12) =
      Integer.Sparse.eval oldProjection686 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 12), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 12)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 12) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound5783 hH))).trans (oldProjectionSound686 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 12), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 12)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 12) ≤ 6; decide +kernel)) = canonicalInput12311.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 12) =
      Integer.Sparse.eval reductionProjection2388 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 12), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 12)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 12) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound12311 hH))).trans (reductionSound2388 hH)
  have hw : 450 * CornerPairs.weight 28 * CornerPairs.weight 12 =
      (9 : ℝ) / 32 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild28_12Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild28_13Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection3151)
    (Integer.Sparse.scale (9) reductionProjection2045)

theorem targetCornerChild28_13 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 28 13 =
      Integer.Sparse.eval targetCornerChild28_13Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 13), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 13)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 13) ≤ 6; decide +kernel)) = canonicalInput23367.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 28 13) =
      Integer.Sparse.eval reductionProjection3151 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 13), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 13)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 13) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound23367 hH))).trans (reductionSound3151 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 13), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 13)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 13) ≤ 6; decide +kernel)) = canonicalInput656.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 13) =
      Integer.Sparse.eval reductionProjection2045 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 13), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 13)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 13) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound656 hH))).trans (reductionSound2045 hH)
  have hw : 450 * CornerPairs.weight 28 * CornerPairs.weight 13 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild28_13Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild28_14Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) oldProjection513)
    (Integer.Sparse.scale (9) reductionProjection2060)

theorem targetCornerChild28_14 {H : CMatrix} (hH : IsHadamard H) :
    (32 : ℝ) * targetCornerTerm H 28 14 =
      Integer.Sparse.eval targetCornerChild28_14Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 14), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 14)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 14) ≤ 6; decide +kernel)) = canonicalInput18543.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 28 14) =
      Integer.Sparse.eval oldProjection513 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 14), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 14)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 14) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound18543 hH))).trans (oldProjectionSound513 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 14), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 14)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 14) ≤ 6; decide +kernel)) = canonicalInput883.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 14) =
      Integer.Sparse.eval reductionProjection2060 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 14), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 14)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 14) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound883 hH))).trans (reductionSound2060 hH)
  have hw : 450 * CornerPairs.weight 28 * CornerPairs.weight 14 =
      (9 : ℝ) / 32 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild28_14Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild28_15Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) oldProjection614)
    (Integer.Sparse.scale (9) reductionProjection7909)

theorem targetCornerChild28_15 {H : CMatrix} (hH : IsHadamard H) :
    (32 : ℝ) * targetCornerTerm H 28 15 =
      Integer.Sparse.eval targetCornerChild28_15Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 15), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 15)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 15) ≤ 6; decide +kernel)) = canonicalInput22804.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 28 15) =
      Integer.Sparse.eval oldProjection614 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 15), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 15)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 15) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound22804 hH))).trans (oldProjectionSound614 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 15), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 15)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 15) ≤ 6; decide +kernel)) = canonicalInput804.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 15) =
      Integer.Sparse.eval reductionProjection7909 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 15), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 15)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 15) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound804 hH))).trans (reductionSound7909 hH)
  have hw : 450 * CornerPairs.weight 28 * CornerPairs.weight 15 =
      (9 : ℝ) / 32 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild28_15Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild28_16Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection566)
    (Integer.Sparse.scale (9) oldProjection475)

theorem targetCornerChild28_16 {H : CMatrix} (hH : IsHadamard H) :
    (32 : ℝ) * targetCornerTerm H 28 16 =
      Integer.Sparse.eval targetCornerChild28_16Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 16), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 16)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 16) ≤ 6; decide +kernel)) = canonicalInput23773.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 28 16) =
      Integer.Sparse.eval reductionProjection566 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 16), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 16)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 16) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound23773 hH))).trans (reductionSound566 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 16), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 16)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 16) ≤ 6; decide +kernel)) = canonicalInput547.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 16) =
      Integer.Sparse.eval oldProjection475 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 16), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 16)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 16) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound547 hH))).trans (oldProjectionSound475 hH)
  have hw : 450 * CornerPairs.weight 28 * CornerPairs.weight 16 =
      (9 : ℝ) / 32 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild28_16Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild28_17Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (3) oldProjection275)
    (Integer.Sparse.scale (3) oldProjection220)

theorem targetCornerChild28_17 {H : CMatrix} (hH : IsHadamard H) :
    (32 : ℝ) * targetCornerTerm H 28 17 =
      Integer.Sparse.eval targetCornerChild28_17Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 17), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 17)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 17) ≤ 6; decide +kernel)) = canonicalInput23623.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 28 17) =
      Integer.Sparse.eval oldProjection275 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 17), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 17)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 17) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound23623 hH))).trans (oldProjectionSound275 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 17), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 17)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 17) ≤ 6; decide +kernel)) = canonicalInput626.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 17) =
      Integer.Sparse.eval oldProjection220 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 17), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 17)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 17) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound626 hH))).trans (oldProjectionSound220 hH)
  have hw : 450 * CornerPairs.weight 28 * CornerPairs.weight 17 =
      (3 : ℝ) / 32 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((1 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild28_17Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerChild28_18Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) oldProjection513)
    (Integer.Sparse.scale (9) reductionProjection2060)

theorem targetCornerChild28_18 {H : CMatrix} (hH : IsHadamard H) :
    (32 : ℝ) * targetCornerTerm H 28 18 =
      Integer.Sparse.eval targetCornerChild28_18Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 18), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 18)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 18) ≤ 6; decide +kernel)) = canonicalInput23436.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 28 18) =
      Integer.Sparse.eval oldProjection513 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 18), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 18)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 18) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound23436 hH))).trans (oldProjectionSound513 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 18), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 18)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 18) ≤ 6; decide +kernel)) = canonicalInput648.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 18) =
      Integer.Sparse.eval reductionProjection2060 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 18), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 18)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 18) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound648 hH))).trans (reductionSound2060 hH)
  have hw : 450 * CornerPairs.weight 28 * CornerPairs.weight 18 =
      (9 : ℝ) / 32 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild28_18Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild28_19Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (3) oldProjection276)
    (Integer.Sparse.scale (3) oldProjection98)

theorem targetCornerChild28_19 {H : CMatrix} (hH : IsHadamard H) :
    (32 : ℝ) * targetCornerTerm H 28 19 =
      Integer.Sparse.eval targetCornerChild28_19Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 19), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 19)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 19) ≤ 6; decide +kernel)) = canonicalInput18942.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 28 19) =
      Integer.Sparse.eval oldProjection276 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 19), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 19)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 19) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound18942 hH))).trans (oldProjectionSound276 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 19), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 19)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 19) ≤ 6; decide +kernel)) = canonicalInput866.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 19) =
      Integer.Sparse.eval oldProjection98 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 19), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 19)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 19) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound866 hH))).trans (oldProjectionSound98 hH)
  have hw : 450 * CornerPairs.weight 28 * CornerPairs.weight 19 =
      (3 : ℝ) / 32 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((1 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild28_19Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerChild28_20Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection904)
    (Integer.Sparse.scale (9) reductionProjection2071)

theorem targetCornerChild28_20 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 28 20 =
      Integer.Sparse.eval targetCornerChild28_20Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 20), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 20)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 20) ≤ 6; decide +kernel)) = canonicalInput12253.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 28 20) =
      Integer.Sparse.eval reductionProjection904 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 20), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 20)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 20) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound12253 hH))).trans (reductionSound904 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 20), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 20)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 20) ≤ 6; decide +kernel)) = canonicalInput8103.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 20) =
      Integer.Sparse.eval reductionProjection2071 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 20), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 20)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 20) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound8103 hH))).trans (reductionSound2071 hH)
  have hw : 450 * CornerPairs.weight 28 * CornerPairs.weight 20 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild28_20Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild28_21Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (720) oldProjection618)
    (Integer.Sparse.scale (1) oldProjection1003)

theorem targetCornerChild28_21 {H : CMatrix} (hH : IsHadamard H) :
    (2560 : ℝ) * targetCornerTerm H 28 21 =
      Integer.Sparse.eval targetCornerChild28_21Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 21), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 21)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 21) ≤ 6; decide +kernel)) = canonicalInput105.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 28 21) =
      Integer.Sparse.eval oldProjection618 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 21), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 21)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 21) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound105 hH))).trans (oldProjectionSound618 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 21), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 21)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 21) ≤ 6; decide +kernel)) = canonicalInput31767.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (720 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 21) =
      Integer.Sparse.eval oldProjection1003 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 21), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 21)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 21) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound31767 hH))).trans (oldProjectionSound1003 hH)
  have hw : 450 * CornerPairs.weight 28 * CornerPairs.weight 21 =
      (9 : ℝ) / 32 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild28_21Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (720 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetCornerChild28_22Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) oldProjection513)
    (Integer.Sparse.scale (9) reductionProjection2060)

theorem targetCornerChild28_22 {H : CMatrix} (hH : IsHadamard H) :
    (32 : ℝ) * targetCornerTerm H 28 22 =
      Integer.Sparse.eval targetCornerChild28_22Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 22), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 22)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 22) ≤ 6; decide +kernel)) = canonicalInput12079.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 28 22) =
      Integer.Sparse.eval oldProjection513 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 22), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 22)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 22) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound12079 hH))).trans (oldProjectionSound513 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 22), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 22)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 22) ≤ 6; decide +kernel)) = canonicalInput9626.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 22) =
      Integer.Sparse.eval reductionProjection2060 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 22), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 22)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 22) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound9626 hH))).trans (reductionSound2060 hH)
  have hw : 450 * CornerPairs.weight 28 * CornerPairs.weight 22 =
      (9 : ℝ) / 32 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild28_22Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild28_23Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) oldProjection686)
    (Integer.Sparse.scale (9) reductionProjection2388)

theorem targetCornerChild28_23 {H : CMatrix} (hH : IsHadamard H) :
    (32 : ℝ) * targetCornerTerm H 28 23 =
      Integer.Sparse.eval targetCornerChild28_23Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 23), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 23)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel)) = canonicalInput23776.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 28 23) =
      Integer.Sparse.eval oldProjection686 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 23), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 23)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound23776 hH))).trans (oldProjectionSound686 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 23), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 23)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel)) = canonicalInput544.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 23) =
      Integer.Sparse.eval reductionProjection2388 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 23), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 23)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound544 hH))).trans (reductionSound2388 hH)
  have hw : 450 * CornerPairs.weight 28 * CornerPairs.weight 23 =
      (9 : ℝ) / 32 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild28_23Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild28_24Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (3) oldProjection276)
    (Integer.Sparse.scale (3) oldProjection98)

theorem targetCornerChild28_24 {H : CMatrix} (hH : IsHadamard H) :
    (32 : ℝ) * targetCornerTerm H 28 24 =
      Integer.Sparse.eval targetCornerChild28_24Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 24), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 24)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel)) = canonicalInput23627.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 28 24) =
      Integer.Sparse.eval oldProjection276 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 24), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 24)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound23627 hH))).trans (oldProjectionSound276 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 24), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 24)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel)) = canonicalInput623.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 24) =
      Integer.Sparse.eval oldProjection98 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 24), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 24)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound623 hH))).trans (oldProjectionSound98 hH)
  have hw : 450 * CornerPairs.weight 28 * CornerPairs.weight 24 =
      (3 : ℝ) / 32 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((1 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild28_24Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerChild28_25Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection566)
    (Integer.Sparse.scale (9) oldProjection475)

theorem targetCornerChild28_25 {H : CMatrix} (hH : IsHadamard H) :
    (32 : ℝ) * targetCornerTerm H 28 25 =
      Integer.Sparse.eval targetCornerChild28_25Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 25), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 25)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 25) ≤ 6; decide +kernel)) = canonicalInput12266.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 28 25) =
      Integer.Sparse.eval reductionProjection566 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 25), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 25)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 25) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound12266 hH))).trans (reductionSound566 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 25), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 25)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 25) ≤ 6; decide +kernel)) = canonicalInput8080.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 25) =
      Integer.Sparse.eval oldProjection475 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 25), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 25)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 25) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound8080 hH))).trans (oldProjectionSound475 hH)
  have hw : 450 * CornerPairs.weight 28 * CornerPairs.weight 25 =
      (9 : ℝ) / 32 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild28_25Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild28_26Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (24) oldProjection134)
    (Integer.Sparse.scale (3) oldProjection63)

theorem targetCornerChild28_26 {H : CMatrix} (hH : IsHadamard H) :
    (256 : ℝ) * targetCornerTerm H 28 26 =
      Integer.Sparse.eval targetCornerChild28_26Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 26), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 26)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 26) ≤ 6; decide +kernel)) = canonicalInput162.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 28 26) =
      Integer.Sparse.eval oldProjection134 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 26), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 26)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 26) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound162 hH))).trans (oldProjectionSound134 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 26), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 26)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 26) ≤ 6; decide +kernel)) = canonicalInput30895.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (8 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 26) =
      Integer.Sparse.eval oldProjection63 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (8 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 26), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 26)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 26) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound30895 hH))).trans (oldProjectionSound63 hH)
  have hw : 450 * CornerPairs.weight 28 * CornerPairs.weight 26 =
      (3 : ℝ) / 32 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((1 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild28_26Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (24 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerChild28_27Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (720) reductionProjection912)
    (Integer.Sparse.scale (1) reductionProjection3591)

theorem targetCornerChild28_27 {H : CMatrix} (hH : IsHadamard H) :
    (1280 : ℝ) * targetCornerTerm H 28 27 =
      Integer.Sparse.eval targetCornerChild28_27Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 27), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 27)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 27) ≤ 6; decide +kernel)) = canonicalInput11696.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 28 27) =
      Integer.Sparse.eval reductionProjection912 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 27), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 27)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 27) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound11696 hH))).trans (reductionSound912 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 27), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 27)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 27) ≤ 6; decide +kernel)) = canonicalInput10366.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (720 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 27) =
      Integer.Sparse.eval reductionProjection3591 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 27), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 27)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 27) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound10366 hH))).trans (reductionSound3591 hH)
  have hw : 450 * CornerPairs.weight 28 * CornerPairs.weight 27 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild28_27Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (720 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetCornerChild28_28Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (360) reductionProjection7859)
    (Integer.Sparse.scale (1) oldProjection1045)

theorem targetCornerChild28_28 {H : CMatrix} (hH : IsHadamard H) :
    (1280 : ℝ) * targetCornerTerm H 28 28 =
      Integer.Sparse.eval targetCornerChild28_28Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 28), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 28)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel)) = canonicalInput60.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 28 28) =
      Integer.Sparse.eval reductionProjection7859 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 28), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 28)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound60 hH))).trans (reductionSound7859 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 28), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 28)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel)) = canonicalInput32748.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 28) =
      Integer.Sparse.eval oldProjection1045 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 28), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 28)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound32748 hH))).trans (oldProjectionSound1045 hH)
  have hw : 450 * CornerPairs.weight 28 * CornerPairs.weight 28 =
      (9 : ℝ) / 32 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild28_28Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (360 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetCornerChild28_29Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (720) oldProjection618)
    (Integer.Sparse.scale (1) oldProjection1003)

theorem targetCornerChild28_29 {H : CMatrix} (hH : IsHadamard H) :
    (2560 : ℝ) * targetCornerTerm H 28 29 =
      Integer.Sparse.eval targetCornerChild28_29Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 29), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 29)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 29) ≤ 6; decide +kernel)) = canonicalInput5782.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 28 29) =
      Integer.Sparse.eval oldProjection618 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 29), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 29)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 29) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound5782 hH))).trans (oldProjectionSound618 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 29), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 29)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 29) ≤ 6; decide +kernel)) = canonicalInput12312.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (720 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 29) =
      Integer.Sparse.eval oldProjection1003 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 29), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 29)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 29) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound12312 hH))).trans (oldProjectionSound1003 hH)
  have hw : 450 * CornerPairs.weight 28 * CornerPairs.weight 29 =
      (9 : ℝ) / 32 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild28_29Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (720 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetCornerChild28_30Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (720) oldProjection618)
    (Integer.Sparse.scale (1) oldProjection1003)

theorem targetCornerChild28_30 {H : CMatrix} (hH : IsHadamard H) :
    (2560 : ℝ) * targetCornerTerm H 28 30 =
      Integer.Sparse.eval targetCornerChild28_30Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 30), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 30)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 30) ≤ 6; decide +kernel)) = canonicalInput23439.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 28 30) =
      Integer.Sparse.eval oldProjection618 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 30), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 30)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 30) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound23439 hH))).trans (oldProjectionSound618 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 30), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 30)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 30) ≤ 6; decide +kernel)) = canonicalInput645.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (720 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 30) =
      Integer.Sparse.eval oldProjection1003 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 30), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 30)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 30) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound645 hH))).trans (oldProjectionSound1003 hH)
  have hw : 450 * CornerPairs.weight 28 * CornerPairs.weight 30 =
      (9 : ℝ) / 32 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild28_30Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (720 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetCornerChild28_31Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (24) oldProjection134)
    (Integer.Sparse.scale (3) oldProjection63)

theorem targetCornerChild28_31 {H : CMatrix} (hH : IsHadamard H) :
    (256 : ℝ) * targetCornerTerm H 28 31 =
      Integer.Sparse.eval targetCornerChild28_31Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 31), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 31)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 31) ≤ 6; decide +kernel)) = canonicalInput18946.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 28 31) =
      Integer.Sparse.eval oldProjection134 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 31), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 31)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 31) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound18946 hH))).trans (oldProjectionSound134 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 31), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 31)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 31) ≤ 6; decide +kernel)) = canonicalInput862.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (8 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 31) =
      Integer.Sparse.eval oldProjection63 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (8 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 31), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 31)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 31) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound862 hH))).trans (oldProjectionSound63 hH)
  have hw : 450 * CornerPairs.weight 28 * CornerPairs.weight 31 =
      (3 : ℝ) / 32 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((1 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild28_31Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (24 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerChild28_32Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (180) reductionProjection1554)
    (Integer.Sparse.scale (1) oldProjection1002)

theorem targetCornerChild28_32 {H : CMatrix} (hH : IsHadamard H) :
    (640 : ℝ) * targetCornerTerm H 28 32 =
      Integer.Sparse.eval targetCornerChild28_32Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 32), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 32)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 32) ≤ 6; decide +kernel)) = canonicalInput12269.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 28 32) =
      Integer.Sparse.eval reductionProjection1554 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 32), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 32)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 32) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound12269 hH))).trans (reductionSound1554 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 32), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 32)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 32) ≤ 6; decide +kernel)) = canonicalInput8077.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (180 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 32) =
      Integer.Sparse.eval oldProjection1002 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 32), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 32)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 32) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound8077 hH))).trans (oldProjectionSound1002 hH)
  have hw : 450 * CornerPairs.weight 28 * CornerPairs.weight 32 =
      (9 : ℝ) / 32 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild28_32Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (180 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetCornerChild28_33Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (60) reductionProjection44)
    (Integer.Sparse.scale (3) oldProjection11)

theorem targetCornerChild28_33 {H : CMatrix} (hH : IsHadamard H) :
    (640 : ℝ) * targetCornerTerm H 28 33 =
      Integer.Sparse.eval targetCornerChild28_33Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 33), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 33)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 33) ≤ 6; decide +kernel)) = canonicalInput163.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 28 33) =
      Integer.Sparse.eval reductionProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 33), (CornerPairs.overlapExponent cubicExponent cubicExponent 28 33)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 33) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound163 hH))).trans (reductionSound44 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 33), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 33)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 33) ≤ 6; decide +kernel)) = canonicalInput30894.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (20 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 33) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 28), (CornerPairs.blocks 33), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 28 33)⟩ : ExponentCode) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 33) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound30894 hH))).trans (oldProjectionSound11 hH)
  have hw : 450 * CornerPairs.weight 28 * CornerPairs.weight 33 =
      (3 : ℝ) / 32 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((1 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild28_33Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (60 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerRow28Projection : Integer.Sparse (Fin 1613) := [(0, 38), (15, 240), (58, 480), (80, -960), (81, 960), (87, 480), (94, 10), (214, 2880), (216, 1440), (228, 960), (425, 8640), (430, 2880), (431, 1440), (506, 2880), (600, 2880), (601, 2880), (602, -2880), (610, 2880), (616, 2880), (681, -960), (697, 2400), (698, -7360), (947, 2880), (948, 2880), (954, 720), (957, 720), (963, 1440), (964, 1440), (978, 2880), (1007, 8640), (1008, 1440), (1009, 1440), (1014, 2880), (1025, 720), (1034, -960), (1055, 960), (1058, 3840), (1059, -880), (1142, 1440), (1157, 2880), (1158, 2880), (1212, -1920), (1217, 240), (1219, 1440), (1220, -5760), (1221, 480), (1223, 1920), (1226, -3040), (1227, -4640), (1250, -120), (1251, 1220), (1272, 2880), (1388, 240), (1389, 2880)]

theorem targetCornerRow28 {H : CMatrix} (hH : IsHadamard H) :
    (2560 : ℝ) * (∑ i : Fin 34, (targetCornerTerm H 28) i) =
      Integer.Sparse.eval targetCornerRow28Projection (Normalization.momentVector H) := by
  have hc : ∀ i : Fin 34, ((![2560, 1280, 16, 16, 16, 32, 32, 16, 640, 32, 16, 2560, 32, 16, 32, 32, 32, 32, 32, 32, 16, 2560, 32, 32, 32, 32, 256, 1280, 1280, 2560, 2560, 256, 640, 640] : Fin 34 → ℤ) i : ℝ) * ((targetCornerTerm H 28) i) =
      Integer.Sparse.eval (![targetCornerChild28_0Projection, targetCornerChild28_1Projection, targetCornerChild28_2Projection, targetCornerChild28_3Projection, targetCornerChild28_4Projection, targetCornerChild28_5Projection, targetCornerChild28_6Projection, targetCornerChild28_7Projection, targetCornerChild28_8Projection, targetCornerChild28_9Projection, targetCornerChild28_10Projection, targetCornerChild28_11Projection, targetCornerChild28_12Projection, targetCornerChild28_13Projection, targetCornerChild28_14Projection, targetCornerChild28_15Projection, targetCornerChild28_16Projection, targetCornerChild28_17Projection, targetCornerChild28_18Projection, targetCornerChild28_19Projection, targetCornerChild28_20Projection, targetCornerChild28_21Projection, targetCornerChild28_22Projection, targetCornerChild28_23Projection, targetCornerChild28_24Projection, targetCornerChild28_25Projection, targetCornerChild28_26Projection, targetCornerChild28_27Projection, targetCornerChild28_28Projection, targetCornerChild28_29Projection, targetCornerChild28_30Projection, targetCornerChild28_31Projection, targetCornerChild28_32Projection, targetCornerChild28_33Projection] i) (Normalization.momentVector H) := by
    intro i
    fin_cases i
    · exact targetCornerChild28_0 hH
    · exact targetCornerChild28_1 hH
    · exact targetCornerChild28_2 hH
    · exact targetCornerChild28_3 hH
    · exact targetCornerChild28_4 hH
    · exact targetCornerChild28_5 hH
    · exact targetCornerChild28_6 hH
    · exact targetCornerChild28_7 hH
    · exact targetCornerChild28_8 hH
    · exact targetCornerChild28_9 hH
    · exact targetCornerChild28_10 hH
    · exact targetCornerChild28_11 hH
    · exact targetCornerChild28_12 hH
    · exact targetCornerChild28_13 hH
    · exact targetCornerChild28_14 hH
    · exact targetCornerChild28_15 hH
    · exact targetCornerChild28_16 hH
    · exact targetCornerChild28_17 hH
    · exact targetCornerChild28_18 hH
    · exact targetCornerChild28_19 hH
    · exact targetCornerChild28_20 hH
    · exact targetCornerChild28_21 hH
    · exact targetCornerChild28_22 hH
    · exact targetCornerChild28_23 hH
    · exact targetCornerChild28_24 hH
    · exact targetCornerChild28_25 hH
    · exact targetCornerChild28_26 hH
    · exact targetCornerChild28_27 hH
    · exact targetCornerChild28_28 hH
    · exact targetCornerChild28_29 hH
    · exact targetCornerChild28_30 hH
    · exact targetCornerChild28_31 hH
    · exact targetCornerChild28_32 hH
    · exact targetCornerChild28_33 hH
  exact integer_projection (Normalization.momentVector H) (∑ i, (targetCornerTerm H 28) i) (targetCornerTerm H 28)
    (-1) 2560 2560 (-1) ![2560, 1280, 16, 16, 16, 32, 32, 16, 640, 32, 16, 2560, 32, 16, 32, 32, 32, 32, 32, 32, 16, 2560, 32, 32, 32, 32, 256, 1280, 1280, 2560, 2560, 256, 640, 640] ![1, 2, 160, 160, 160, 80, 80, 160, 4, 80, 160, 1, 80, 160, 80, 80, 80, 80, 80, 80, 160, 1, 80, 80, 80, 80, 10, 2, 2, 1, 1, 10, 4, 4] targetCornerRow28Projection ![targetCornerChild28_0Projection, targetCornerChild28_1Projection, targetCornerChild28_2Projection, targetCornerChild28_3Projection, targetCornerChild28_4Projection, targetCornerChild28_5Projection, targetCornerChild28_6Projection, targetCornerChild28_7Projection, targetCornerChild28_8Projection, targetCornerChild28_9Projection, targetCornerChild28_10Projection, targetCornerChild28_11Projection, targetCornerChild28_12Projection, targetCornerChild28_13Projection, targetCornerChild28_14Projection, targetCornerChild28_15Projection, targetCornerChild28_16Projection, targetCornerChild28_17Projection, targetCornerChild28_18Projection, targetCornerChild28_19Projection, targetCornerChild28_20Projection, targetCornerChild28_21Projection, targetCornerChild28_22Projection, targetCornerChild28_23Projection, targetCornerChild28_24Projection, targetCornerChild28_25Projection, targetCornerChild28_26Projection, targetCornerChild28_27Projection, targetCornerChild28_28Projection, targetCornerChild28_29Projection, targetCornerChild28_30Projection, targetCornerChild28_31Projection, targetCornerChild28_32Projection, targetCornerChild28_33Projection]
    (by decide +kernel) (by decide +kernel)
    (by intro i; fin_cases i <;> decide +kernel) (by ring) hc (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
