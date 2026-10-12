import NoFourMUBs.Step2.SOS.Canonical000
import NoFourMUBs.Step2.SOS.Canonical001
import NoFourMUBs.Step2.SOS.Canonical002
import NoFourMUBs.Step2.SOS.Canonical008
import NoFourMUBs.Step2.SOS.Canonical009
import NoFourMUBs.Step2.SOS.Canonical010
import NoFourMUBs.Step2.SOS.Canonical011
import NoFourMUBs.Step2.SOS.Canonical012
import NoFourMUBs.Step2.SOS.Canonical013
import NoFourMUBs.Step2.SOS.Canonical072
import NoFourMUBs.Step2.SOS.Canonical090
import NoFourMUBs.Step2.SOS.Canonical126
import NoFourMUBs.Step2.SOS.Canonical144
import NoFourMUBs.Step2.SOS.Canonical150
import NoFourMUBs.Step2.SOS.Canonical155
import NoFourMUBs.Step2.SOS.Canonical161
import NoFourMUBs.Step2.SOS.Canonical169
import NoFourMUBs.Step2.SOS.Canonical171
import NoFourMUBs.Step2.SOS.Canonical180
import NoFourMUBs.Step2.SOS.Canonical182
import NoFourMUBs.Step2.SOS.Canonical184
import NoFourMUBs.Step2.SOS.Canonical188
import NoFourMUBs.Step2.SOS.Canonical190
import NoFourMUBs.Step2.SOS.Canonical191
import NoFourMUBs.Step2.SOS.Canonical192
import NoFourMUBs.Step2.SOS.Canonical289
import NoFourMUBs.Step2.SOS.Canonical293
import NoFourMUBs.Step2.SOS.Canonical298
import NoFourMUBs.Step2.SOS.Canonical356
import NoFourMUBs.Step2.SOS.Canonical364
import NoFourMUBs.Step2.SOS.Canonical365
import NoFourMUBs.Step2.SOS.Canonical366
import NoFourMUBs.Step2.SOS.Canonical367
import NoFourMUBs.Step2.SOS.Canonical370
import NoFourMUBs.Step2.SOS.Canonical371
import NoFourMUBs.Step2.SOS.Canonical474
import NoFourMUBs.Step2.SOS.Canonical481
import NoFourMUBs.Step2.SOS.Canonical496
import NoFourMUBs.Step2.SOS.Canonical511
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

def targetCornerChild23_0Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (1) reductionProjection7883)
    (Integer.Sparse.scale (1) reductionProjection7947)

theorem targetCornerChild23_0 {H : CMatrix} (hH : IsHadamard H) :
    (2560 : ℝ) * targetCornerTerm H 23 0 =
      Integer.Sparse.eval targetCornerChild23_0Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 0), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 0)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 0) ≤ 6; decide +kernel)) = canonicalInput11521.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 23 0) =
      Integer.Sparse.eval reductionProjection7883 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 0), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 0)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 0) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound11521 hH))).trans (reductionSound7883 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 0), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 0)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 0) ≤ 6; decide +kernel)) = canonicalInput10968.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 0) =
      Integer.Sparse.eval reductionProjection7947 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 0), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 0)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 0) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound10968 hH))).trans (reductionSound7947 hH)
  have hw : 450 * CornerPairs.weight 23 * CornerPairs.weight 0 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild23_0Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (1 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetCornerChild23_1Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection904)
    (Integer.Sparse.scale (9) reductionProjection2071)

theorem targetCornerChild23_1 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 23 1 =
      Integer.Sparse.eval targetCornerChild23_1Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 1), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 1)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 1) ≤ 6; decide +kernel)) = canonicalInput23372.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 23 1) =
      Integer.Sparse.eval reductionProjection904 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 1), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 1)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 1) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound23372 hH))).trans (reductionSound904 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 1), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 1)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 1) ≤ 6; decide +kernel)) = canonicalInput651.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 1) =
      Integer.Sparse.eval reductionProjection2071 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 1), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 1)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 1) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound651 hH))).trans (reductionSound2071 hH)
  have hw : 450 * CornerPairs.weight 23 * CornerPairs.weight 1 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild23_1Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild23_2Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection904)
    (Integer.Sparse.scale (9) reductionProjection2071)

theorem targetCornerChild23_2 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 23 2 =
      Integer.Sparse.eval targetCornerChild23_2Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 2), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 2)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 2) ≤ 6; decide +kernel)) = canonicalInput12258.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 23 2) =
      Integer.Sparse.eval reductionProjection904 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 2), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 2)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 2) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound12258 hH))).trans (reductionSound904 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 2), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 2)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 2) ≤ 6; decide +kernel)) = canonicalInput8098.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 2) =
      Integer.Sparse.eval reductionProjection2071 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 2), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 2)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 2) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound8098 hH))).trans (reductionSound2071 hH)
  have hw : 450 * CornerPairs.weight 23 * CornerPairs.weight 2 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild23_2Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild23_3Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection901)
    (Integer.Sparse.scale (9) reductionProjection3671)

theorem targetCornerChild23_3 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 23 3 =
      Integer.Sparse.eval targetCornerChild23_3Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 3), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 3)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel)) = canonicalInput11701.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 23 3) =
      Integer.Sparse.eval reductionProjection901 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 3), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 3)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound11701 hH))).trans (reductionSound901 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 3), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 3)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel)) = canonicalInput10361.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 3) =
      Integer.Sparse.eval reductionProjection3671 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 3), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 3)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound10361 hH))).trans (reductionSound3671 hH)
  have hw : 450 * CornerPairs.weight 23 * CornerPairs.weight 3 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild23_3Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild23_4Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (720) reductionProjection912)
    (Integer.Sparse.scale (1) reductionProjection3591)

theorem targetCornerChild23_4 {H : CMatrix} (hH : IsHadamard H) :
    (1280 : ℝ) * targetCornerTerm H 23 4 =
      Integer.Sparse.eval targetCornerChild23_4Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 4), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 4)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel)) = canonicalInput37.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 23 4) =
      Integer.Sparse.eval reductionProjection912 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 4), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 4)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound37 hH))).trans (reductionSound912 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 4), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 4)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel)) = canonicalInput32767.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (720 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 4) =
      Integer.Sparse.eval reductionProjection3591 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 4), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 4)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound32767 hH))).trans (reductionSound3591 hH)
  have hw : 450 * CornerPairs.weight 23 * CornerPairs.weight 4 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild23_4Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (720 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetCornerChild23_5Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (720) oldProjection618)
    (Integer.Sparse.scale (1) oldProjection1003)

theorem targetCornerChild23_5 {H : CMatrix} (hH : IsHadamard H) :
    (2560 : ℝ) * targetCornerTerm H 23 5 =
      Integer.Sparse.eval targetCornerChild23_5Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 5), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 5)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 5) ≤ 6; decide +kernel)) = canonicalInput109.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 23 5) =
      Integer.Sparse.eval oldProjection618 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 5), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 5)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 5) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound109 hH))).trans (oldProjectionSound618 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 5), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 5)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 5) ≤ 6; decide +kernel)) = canonicalInput31763.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (720 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 5) =
      Integer.Sparse.eval oldProjection1003 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 5), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 5)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 5) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound31763 hH))).trans (oldProjectionSound1003 hH)
  have hw : 450 * CornerPairs.weight 23 * CornerPairs.weight 5 =
      (9 : ℝ) / 32 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild23_5Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (720 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetCornerChild23_6Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (180) reductionProjection1554)
    (Integer.Sparse.scale (1) oldProjection1002)

theorem targetCornerChild23_6 {H : CMatrix} (hH : IsHadamard H) :
    (640 : ℝ) * targetCornerTerm H 23 6 =
      Integer.Sparse.eval targetCornerChild23_6Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 6), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 6)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 6) ≤ 6; decide +kernel)) = canonicalInput64.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 23 6) =
      Integer.Sparse.eval reductionProjection1554 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 6), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 6)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 6) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound64 hH))).trans (reductionSound1554 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 6), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 6)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 6) ≤ 6; decide +kernel)) = canonicalInput32744.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (180 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 6) =
      Integer.Sparse.eval oldProjection1002 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 6), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 6)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 6) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound32744 hH))).trans (oldProjectionSound1002 hH)
  have hw : 450 * CornerPairs.weight 23 * CornerPairs.weight 6 =
      (9 : ℝ) / 32 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild23_6Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (180 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetCornerChild23_7Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection3151)
    (Integer.Sparse.scale (9) reductionProjection2045)

theorem targetCornerChild23_7 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 23 7 =
      Integer.Sparse.eval targetCornerChild23_7Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 7), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 7)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 7) ≤ 6; decide +kernel)) = canonicalInput4638.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 23 7) =
      Integer.Sparse.eval reductionProjection3151 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 7), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 7)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 7) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound4638 hH))).trans (reductionSound3151 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 7), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 7)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 7) ≤ 6; decide +kernel)) = canonicalInput12318.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 7) =
      Integer.Sparse.eval reductionProjection2045 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 7), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 7)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 7) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound12318 hH))).trans (reductionSound2045 hH)
  have hw : 450 * CornerPairs.weight 23 * CornerPairs.weight 7 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild23_7Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild23_8Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) oldProjection513)
    (Integer.Sparse.scale (9) reductionProjection2060)

theorem targetCornerChild23_8 {H : CMatrix} (hH : IsHadamard H) :
    (32 : ℝ) * targetCornerTerm H 23 8 =
      Integer.Sparse.eval targetCornerChild23_8Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 8), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 8)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 8) ≤ 6; decide +kernel)) = canonicalInput18548.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 23 8) =
      Integer.Sparse.eval oldProjection513 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 8), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 8)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 8) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound18548 hH))).trans (oldProjectionSound513 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 8), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 8)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 8) ≤ 6; decide +kernel)) = canonicalInput878.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 8) =
      Integer.Sparse.eval reductionProjection2060 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 8), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 8)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 8) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound878 hH))).trans (reductionSound2060 hH)
  have hw : 450 * CornerPairs.weight 23 * CornerPairs.weight 8 =
      (9 : ℝ) / 32 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild23_8Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild23_9Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection566)
    (Integer.Sparse.scale (9) oldProjection475)

theorem targetCornerChild23_9 {H : CMatrix} (hH : IsHadamard H) :
    (32 : ℝ) * targetCornerTerm H 23 9 =
      Integer.Sparse.eval targetCornerChild23_9Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 9), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 9)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 9) ≤ 6; decide +kernel)) = canonicalInput5786.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 23 9) =
      Integer.Sparse.eval reductionProjection566 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 9), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 9)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 9) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound5786 hH))).trans (reductionSound566 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 9), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 9)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 9) ≤ 6; decide +kernel)) = canonicalInput12308.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 9) =
      Integer.Sparse.eval oldProjection475 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 9), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 9)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 9) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound12308 hH))).trans (oldProjectionSound475 hH)
  have hw : 450 * CornerPairs.weight 23 * CornerPairs.weight 9 =
      (9 : ℝ) / 32 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild23_9Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild23_10Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection904)
    (Integer.Sparse.scale (9) reductionProjection2071)

theorem targetCornerChild23_10 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 23 10 =
      Integer.Sparse.eval targetCornerChild23_10Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 10), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 10)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 10) ≤ 6; decide +kernel)) = canonicalInput9982.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 23 10) =
      Integer.Sparse.eval reductionProjection904 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 10), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 10)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 10) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound9982 hH))).trans (reductionSound904 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 10), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 10)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 10) ≤ 6; decide +kernel)) = canonicalInput11784.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 10) =
      Integer.Sparse.eval reductionProjection2071 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 10), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 10)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 10) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound11784 hH))).trans (reductionSound2071 hH)
  have hw : 450 * CornerPairs.weight 23 * CornerPairs.weight 10 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild23_10Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild23_11Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection566)
    (Integer.Sparse.scale (9) oldProjection475)

theorem targetCornerChild23_11 {H : CMatrix} (hH : IsHadamard H) :
    (32 : ℝ) * targetCornerTerm H 23 11 =
      Integer.Sparse.eval targetCornerChild23_11Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 11), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 11)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 11) ≤ 6; decide +kernel)) = canonicalInput22809.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 23 11) =
      Integer.Sparse.eval reductionProjection566 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 11), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 11)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 11) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound22809 hH))).trans (reductionSound566 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 11), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 11)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 11) ≤ 6; decide +kernel)) = canonicalInput799.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 11) =
      Integer.Sparse.eval oldProjection475 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 11), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 11)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 11) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound799 hH))).trans (oldProjectionSound475 hH)
  have hw : 450 * CornerPairs.weight 23 * CornerPairs.weight 11 =
      (9 : ℝ) / 32 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild23_11Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild23_12Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) oldProjection686)
    (Integer.Sparse.scale (9) reductionProjection2388)

theorem targetCornerChild23_12 {H : CMatrix} (hH : IsHadamard H) :
    (32 : ℝ) * targetCornerTerm H 23 12 =
      Integer.Sparse.eval targetCornerChild23_12Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 12), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 12)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 12) ≤ 6; decide +kernel)) = canonicalInput12084.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 23 12) =
      Integer.Sparse.eval oldProjection686 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 12), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 12)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 12) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound12084 hH))).trans (oldProjectionSound686 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 12), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 12)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 12) ≤ 6; decide +kernel)) = canonicalInput9621.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 12) =
      Integer.Sparse.eval reductionProjection2388 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 12), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 12)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 12) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound9621 hH))).trans (reductionSound2388 hH)
  have hw : 450 * CornerPairs.weight 23 * CornerPairs.weight 12 =
      (9 : ℝ) / 32 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild23_12Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild23_13Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection3151)
    (Integer.Sparse.scale (9) reductionProjection2045)

theorem targetCornerChild23_13 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 23 13 =
      Integer.Sparse.eval targetCornerChild23_13Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 13), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 13)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 13) ≤ 6; decide +kernel)) = canonicalInput23321.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 23 13) =
      Integer.Sparse.eval reductionProjection3151 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 13), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 13)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 13) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound23321 hH))).trans (reductionSound3151 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 13), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 13)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 13) ≤ 6; decide +kernel)) = canonicalInput712.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 13) =
      Integer.Sparse.eval reductionProjection2045 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 13), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 13)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 13) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound712 hH))).trans (reductionSound2045 hH)
  have hw : 450 * CornerPairs.weight 23 * CornerPairs.weight 13 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild23_13Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild23_14Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) oldProjection513)
    (Integer.Sparse.scale (9) reductionProjection2060)

theorem targetCornerChild23_14 {H : CMatrix} (hH : IsHadamard H) :
    (32 : ℝ) * targetCornerTerm H 23 14 =
      Integer.Sparse.eval targetCornerChild23_14Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 14), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 14)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 14) ≤ 6; decide +kernel)) = canonicalInput23771.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 23 14) =
      Integer.Sparse.eval oldProjection513 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 14), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 14)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 14) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound23771 hH))).trans (oldProjectionSound513 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 14), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 14)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 14) ≤ 6; decide +kernel)) = canonicalInput549.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 14) =
      Integer.Sparse.eval reductionProjection2060 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 14), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 14)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 14) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound549 hH))).trans (reductionSound2060 hH)
  have hw : 450 * CornerPairs.weight 23 * CornerPairs.weight 14 =
      (9 : ℝ) / 32 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild23_14Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild23_15Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection566)
    (Integer.Sparse.scale (9) oldProjection475)

theorem targetCornerChild23_15 {H : CMatrix} (hH : IsHadamard H) :
    (32 : ℝ) * targetCornerTerm H 23 15 =
      Integer.Sparse.eval targetCornerChild23_15Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 15), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 15)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 15) ≤ 6; decide +kernel)) = canonicalInput23434.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 23 15) =
      Integer.Sparse.eval reductionProjection566 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 15), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 15)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 15) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound23434 hH))).trans (reductionSound566 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 15), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 15)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 15) ≤ 6; decide +kernel)) = canonicalInput650.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 15) =
      Integer.Sparse.eval oldProjection475 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 15), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 15)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 15) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound650 hH))).trans (oldProjectionSound475 hH)
  have hw : 450 * CornerPairs.weight 23 * CornerPairs.weight 15 =
      (9 : ℝ) / 32 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild23_15Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild23_16Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) oldProjection614)
    (Integer.Sparse.scale (9) reductionProjection7909)

theorem targetCornerChild23_16 {H : CMatrix} (hH : IsHadamard H) :
    (32 : ℝ) * targetCornerTerm H 23 16 =
      Integer.Sparse.eval targetCornerChild23_16Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 16), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 16)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 16) ≤ 6; decide +kernel)) = canonicalInput18541.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 23 16) =
      Integer.Sparse.eval oldProjection614 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 16), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 16)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 16) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound18541 hH))).trans (oldProjectionSound614 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 16), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 16)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 16) ≤ 6; decide +kernel)) = canonicalInput885.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 16) =
      Integer.Sparse.eval reductionProjection7909 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 16), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 16)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 16) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound885 hH))).trans (reductionSound7909 hH)
  have hw : 450 * CornerPairs.weight 23 * CornerPairs.weight 16 =
      (9 : ℝ) / 32 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild23_16Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild23_17Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (3) oldProjection275)
    (Integer.Sparse.scale (3) oldProjection220)

theorem targetCornerChild23_17 {H : CMatrix} (hH : IsHadamard H) :
    (32 : ℝ) * targetCornerTerm H 23 17 =
      Integer.Sparse.eval targetCornerChild23_17Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 17), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 17)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 17) ≤ 6; decide +kernel)) = canonicalInput18811.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 23 17) =
      Integer.Sparse.eval oldProjection275 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 17), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 17)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 17) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound18811 hH))).trans (oldProjectionSound275 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 17), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 17)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 17) ≤ 6; decide +kernel)) = canonicalInput874.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 17) =
      Integer.Sparse.eval oldProjection220 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 17), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 17)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 17) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound874 hH))).trans (oldProjectionSound220 hH)
  have hw : 450 * CornerPairs.weight 23 * CornerPairs.weight 17 =
      (3 : ℝ) / 32 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((1 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild23_17Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerChild23_18Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) oldProjection513)
    (Integer.Sparse.scale (9) reductionProjection2060)

theorem targetCornerChild23_18 {H : CMatrix} (hH : IsHadamard H) :
    (32 : ℝ) * targetCornerTerm H 23 18 =
      Integer.Sparse.eval targetCornerChild23_18Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 18), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 18)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 18) ≤ 6; decide +kernel)) = canonicalInput22802.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 23 18) =
      Integer.Sparse.eval oldProjection513 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 18), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 18)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 18) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound22802 hH))).trans (oldProjectionSound513 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 18), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 18)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 18) ≤ 6; decide +kernel)) = canonicalInput806.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 18) =
      Integer.Sparse.eval reductionProjection2060 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 18), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 18)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 18) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound806 hH))).trans (reductionSound2060 hH)
  have hw : 450 * CornerPairs.weight 23 * CornerPairs.weight 18 =
      (9 : ℝ) / 32 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild23_18Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild23_19Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (3) oldProjection276)
    (Integer.Sparse.scale (3) oldProjection98)

theorem targetCornerChild23_19 {H : CMatrix} (hH : IsHadamard H) :
    (32 : ℝ) * targetCornerTerm H 23 19 =
      Integer.Sparse.eval targetCornerChild23_19Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 19), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 19)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 19) ≤ 6; decide +kernel)) = canonicalInput23493.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 23 19) =
      Integer.Sparse.eval oldProjection276 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 19), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 19)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 19) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound23493 hH))).trans (oldProjectionSound276 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 19), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 19)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 19) ≤ 6; decide +kernel)) = canonicalInput636.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 19) =
      Integer.Sparse.eval oldProjection98 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 19), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 19)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 19) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound636 hH))).trans (oldProjectionSound98 hH)
  have hw : 450 * CornerPairs.weight 23 * CornerPairs.weight 19 =
      (3 : ℝ) / 32 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((1 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild23_19Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerChild23_20Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (720) reductionProjection912)
    (Integer.Sparse.scale (1) reductionProjection3591)

theorem targetCornerChild23_20 {H : CMatrix} (hH : IsHadamard H) :
    (1280 : ℝ) * targetCornerTerm H 23 20 =
      Integer.Sparse.eval targetCornerChild23_20Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 20), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 20)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 20) ≤ 6; decide +kernel)) = canonicalInput12215.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 23 20) =
      Integer.Sparse.eval reductionProjection912 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 20), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 20)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 20) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound12215 hH))).trans (reductionSound912 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 20), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 20)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 20) ≤ 6; decide +kernel)) = canonicalInput9247.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (720 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 20) =
      Integer.Sparse.eval reductionProjection3591 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 20), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 20)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 20) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound9247 hH))).trans (reductionSound3591 hH)
  have hw : 450 * CornerPairs.weight 23 * CornerPairs.weight 20 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild23_20Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (720 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetCornerChild23_21Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (720) oldProjection618)
    (Integer.Sparse.scale (1) oldProjection1003)

theorem targetCornerChild23_21 {H : CMatrix} (hH : IsHadamard H) :
    (2560 : ℝ) * targetCornerTerm H 23 21 =
      Integer.Sparse.eval targetCornerChild23_21Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 21), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 21)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 21) ≤ 6; decide +kernel)) = canonicalInput23778.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 23 21) =
      Integer.Sparse.eval oldProjection618 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 21), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 21)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 21) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound23778 hH))).trans (oldProjectionSound618 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 21), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 21)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 21) ≤ 6; decide +kernel)) = canonicalInput542.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (720 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 21) =
      Integer.Sparse.eval oldProjection1003 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 21), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 21)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 21) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound542 hH))).trans (oldProjectionSound1003 hH)
  have hw : 450 * CornerPairs.weight 23 * CornerPairs.weight 21 =
      (9 : ℝ) / 32 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild23_21Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (720 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetCornerChild23_22Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (180) reductionProjection1554)
    (Integer.Sparse.scale (1) oldProjection1002)

theorem targetCornerChild23_22 {H : CMatrix} (hH : IsHadamard H) :
    (640 : ℝ) * targetCornerTerm H 23 22 =
      Integer.Sparse.eval targetCornerChild23_22Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 22), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 22)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 22) ≤ 6; decide +kernel)) = canonicalInput12264.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 23 22) =
      Integer.Sparse.eval reductionProjection1554 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 22), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 22)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 22) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound12264 hH))).trans (reductionSound1554 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 22), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 22)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 22) ≤ 6; decide +kernel)) = canonicalInput8082.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (180 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 22) =
      Integer.Sparse.eval oldProjection1002 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 22), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 22)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 22) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound8082 hH))).trans (oldProjectionSound1002 hH)
  have hw : 450 * CornerPairs.weight 23 * CornerPairs.weight 22 =
      (9 : ℝ) / 32 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild23_22Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (180 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetCornerChild23_23Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (360) reductionProjection7859)
    (Integer.Sparse.scale (1) oldProjection1045)

theorem targetCornerChild23_23 {H : CMatrix} (hH : IsHadamard H) :
    (1280 : ℝ) * targetCornerTerm H 23 23 =
      Integer.Sparse.eval targetCornerChild23_23Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 23), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 23)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel)) = canonicalInput107.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 23 23) =
      Integer.Sparse.eval reductionProjection7859 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 23), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 23)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound107 hH))).trans (reductionSound7859 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 23), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 23)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel)) = canonicalInput31765.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 23) =
      Integer.Sparse.eval oldProjection1045 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 23), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 23)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound31765 hH))).trans (oldProjectionSound1045 hH)
  have hw : 450 * CornerPairs.weight 23 * CornerPairs.weight 23 =
      (9 : ℝ) / 32 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild23_23Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (360 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetCornerChild23_24Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (60) reductionProjection44)
    (Integer.Sparse.scale (3) oldProjection11)

theorem targetCornerChild23_24 {H : CMatrix} (hH : IsHadamard H) :
    (640 : ℝ) * targetCornerTerm H 23 24 =
      Integer.Sparse.eval targetCornerChild23_24Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 24), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 24)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel)) = canonicalInput164.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 23 24) =
      Integer.Sparse.eval reductionProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 24), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 24)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound164 hH))).trans (reductionSound44 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 24), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 24)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel)) = canonicalInput30828.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (20 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 24) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 24), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 24)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound30828 hH))).trans (oldProjectionSound11 hH)
  have hw : 450 * CornerPairs.weight 23 * CornerPairs.weight 24 =
      (3 : ℝ) / 32 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((1 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild23_24Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (60 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerChild23_25Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (720) oldProjection618)
    (Integer.Sparse.scale (1) oldProjection1003)

theorem targetCornerChild23_25 {H : CMatrix} (hH : IsHadamard H) :
    (2560 : ℝ) * targetCornerTerm H 23 25 =
      Integer.Sparse.eval targetCornerChild23_25Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 25), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 25)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 25) ≤ 6; decide +kernel)) = canonicalInput12077.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 23 25) =
      Integer.Sparse.eval oldProjection618 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 25), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 25)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 25) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound12077 hH))).trans (oldProjectionSound618 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 25), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 25)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 25) ≤ 6; decide +kernel)) = canonicalInput9628.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (720 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 25) =
      Integer.Sparse.eval oldProjection1003 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 25), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 25)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 25) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound9628 hH))).trans (oldProjectionSound1003 hH)
  have hw : 450 * CornerPairs.weight 23 * CornerPairs.weight 25 =
      (9 : ℝ) / 32 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild23_25Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (720 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetCornerChild23_26Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (24) oldProjection134)
    (Integer.Sparse.scale (3) oldProjection63)

theorem targetCornerChild23_26 {H : CMatrix} (hH : IsHadamard H) :
    (256 : ℝ) * targetCornerTerm H 23 26 =
      Integer.Sparse.eval targetCornerChild23_26Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 26), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 26)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 26) ≤ 6; decide +kernel)) = canonicalInput23692.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 23 26) =
      Integer.Sparse.eval oldProjection134 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 26), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 26)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 26) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound23692 hH))).trans (oldProjectionSound134 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 26), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 26)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 26) ≤ 6; decide +kernel)) = canonicalInput618.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (8 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 26) =
      Integer.Sparse.eval oldProjection63 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (8 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 26), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 26)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 26) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound618 hH))).trans (oldProjectionSound63 hH)
  have hw : 450 * CornerPairs.weight 23 * CornerPairs.weight 26 =
      (3 : ℝ) / 32 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((1 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild23_26Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (24 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerChild23_27Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection904)
    (Integer.Sparse.scale (9) reductionProjection2071)

theorem targetCornerChild23_27 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 23 27 =
      Integer.Sparse.eval targetCornerChild23_27Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 27), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 27)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 27) ≤ 6; decide +kernel)) = canonicalInput11546.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 23 27) =
      Integer.Sparse.eval reductionProjection904 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 27), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 27)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 27) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound11546 hH))).trans (reductionSound904 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 27), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 27)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 27) ≤ 6; decide +kernel)) = canonicalInput10862.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 27) =
      Integer.Sparse.eval reductionProjection2071 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 27), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 27)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 27) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound10862 hH))).trans (reductionSound2071 hH)
  have hw : 450 * CornerPairs.weight 23 * CornerPairs.weight 27 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild23_27Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild23_28Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) oldProjection686)
    (Integer.Sparse.scale (9) reductionProjection2388)

theorem targetCornerChild23_28 {H : CMatrix} (hH : IsHadamard H) :
    (32 : ℝ) * targetCornerTerm H 23 28 =
      Integer.Sparse.eval targetCornerChild23_28Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 28), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 28)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel)) = canonicalInput23441.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 23 28) =
      Integer.Sparse.eval oldProjection686 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 28), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 28)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound23441 hH))).trans (oldProjectionSound686 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 28), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 28)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel)) = canonicalInput643.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 28) =
      Integer.Sparse.eval reductionProjection2388 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 28), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 28)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound643 hH))).trans (reductionSound2388 hH)
  have hw : 450 * CornerPairs.weight 23 * CornerPairs.weight 28 =
      (9 : ℝ) / 32 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild23_28Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild23_29Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection566)
    (Integer.Sparse.scale (9) oldProjection475)

theorem targetCornerChild23_29 {H : CMatrix} (hH : IsHadamard H) :
    (32 : ℝ) * targetCornerTerm H 23 29 =
      Integer.Sparse.eval targetCornerChild23_29Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 29), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 29)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 29) ≤ 6; decide +kernel)) = canonicalInput12271.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 23 29) =
      Integer.Sparse.eval reductionProjection566 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 29), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 29)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 29) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound12271 hH))).trans (reductionSound566 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 29), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 29)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 29) ≤ 6; decide +kernel)) = canonicalInput8075.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 29) =
      Integer.Sparse.eval oldProjection475 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 29), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 29)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 29) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound8075 hH))).trans (oldProjectionSound475 hH)
  have hw : 450 * CornerPairs.weight 23 * CornerPairs.weight 29 =
      (9 : ℝ) / 32 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild23_29Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild23_30Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (720) oldProjection618)
    (Integer.Sparse.scale (1) oldProjection1003)

theorem targetCornerChild23_30 {H : CMatrix} (hH : IsHadamard H) :
    (2560 : ℝ) * targetCornerTerm H 23 30 =
      Integer.Sparse.eval targetCornerChild23_30Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 30), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 30)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 30) ≤ 6; decide +kernel)) = canonicalInput62.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 23 30) =
      Integer.Sparse.eval oldProjection618 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 30), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 30)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 30) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound62 hH))).trans (oldProjectionSound618 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 30), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 30)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 30) ≤ 6; decide +kernel)) = canonicalInput32746.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (720 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 30) =
      Integer.Sparse.eval oldProjection1003 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 30), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 30)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 30) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound32746 hH))).trans (oldProjectionSound1003 hH)
  have hw : 450 * CornerPairs.weight 23 * CornerPairs.weight 30 =
      (9 : ℝ) / 32 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild23_30Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (720 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetCornerChild23_31Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (24) oldProjection134)
    (Integer.Sparse.scale (3) oldProjection63)

theorem targetCornerChild23_31 {H : CMatrix} (hH : IsHadamard H) :
    (256 : ℝ) * targetCornerTerm H 23 31 =
      Integer.Sparse.eval targetCornerChild23_31Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 31), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 31)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 31) ≤ 6; decide +kernel)) = canonicalInput166.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 23 31) =
      Integer.Sparse.eval oldProjection134 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 31), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 31)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 31) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound166 hH))).trans (oldProjectionSound134 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 31), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 31)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 31) ≤ 6; decide +kernel)) = canonicalInput30373.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (8 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 31) =
      Integer.Sparse.eval oldProjection63 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (8 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 31), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 31)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 31) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound30373 hH))).trans (oldProjectionSound63 hH)
  have hw : 450 * CornerPairs.weight 23 * CornerPairs.weight 31 =
      (3 : ℝ) / 32 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((1 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild23_31Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (24 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerChild23_32Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) oldProjection513)
    (Integer.Sparse.scale (9) reductionProjection2060)

theorem targetCornerChild23_32 {H : CMatrix} (hH : IsHadamard H) :
    (32 : ℝ) * targetCornerTerm H 23 32 =
      Integer.Sparse.eval targetCornerChild23_32Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 32), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 32)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 32) ≤ 6; decide +kernel)) = canonicalInput5784.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 23 32) =
      Integer.Sparse.eval oldProjection513 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 32), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 32)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 32) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound5784 hH))).trans (oldProjectionSound513 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 32), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 32)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 32) ≤ 6; decide +kernel)) = canonicalInput12310.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 32) =
      Integer.Sparse.eval reductionProjection2060 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 32), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 32)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 32) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound12310 hH))).trans (reductionSound2060 hH)
  have hw : 450 * CornerPairs.weight 23 * CornerPairs.weight 32 =
      (9 : ℝ) / 32 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild23_32Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild23_33Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (3) oldProjection276)
    (Integer.Sparse.scale (3) oldProjection98)

theorem targetCornerChild23_33 {H : CMatrix} (hH : IsHadamard H) :
    (32 : ℝ) * targetCornerTerm H 23 33 =
      Integer.Sparse.eval targetCornerChild23_33Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 33), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 33)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 33) ≤ 6; decide +kernel)) = canonicalInput19073.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 23 33) =
      Integer.Sparse.eval oldProjection276 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 33), (CornerPairs.overlapExponent cubicExponent cubicExponent 23 33)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 33) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound19073 hH))).trans (oldProjectionSound276 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 33), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 33)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 33) ≤ 6; decide +kernel)) = canonicalInput856.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 33) =
      Integer.Sparse.eval oldProjection98 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 23), (CornerPairs.blocks 33), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 23 33)⟩ : ExponentCode) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 33) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound856 hH))).trans (oldProjectionSound98 hH)
  have hw : 450 * CornerPairs.weight 23 * CornerPairs.weight 33 =
      (3 : ℝ) / 32 := by
    change (450 : ℝ) * (((3 : ℕ) : ℝ) / 120) * (((1 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild23_33Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerRow23Projection : Integer.Sparse (Fin 1613) := [(0, 38), (15, 240), (58, 480), (80, -960), (81, 960), (87, 480), (94, 10), (214, 2880), (216, 1440), (228, 960), (425, 8640), (430, 2880), (431, 1440), (506, 2880), (600, 2880), (601, 2880), (602, -2880), (610, 2880), (616, 2880), (681, -960), (697, 2400), (698, -7360), (947, 2880), (948, 2880), (954, 720), (957, 720), (963, 1440), (964, 1440), (978, 2880), (1007, 8640), (1008, 1440), (1009, 1440), (1014, 2880), (1025, 720), (1034, -960), (1055, 960), (1058, 3840), (1059, -880), (1142, 1440), (1157, 2880), (1158, 2880), (1212, -1920), (1217, 240), (1219, 1440), (1220, -5760), (1221, 480), (1223, 1920), (1226, -3040), (1227, -4640), (1250, -120), (1251, 1220), (1272, 2880), (1388, 240), (1389, 2880)]

theorem targetCornerRow23 {H : CMatrix} (hH : IsHadamard H) :
    (2560 : ℝ) * (∑ i : Fin 34, (targetCornerTerm H 23) i) =
      Integer.Sparse.eval targetCornerRow23Projection (Normalization.momentVector H) := by
  have hc : ∀ i : Fin 34, ((![2560, 16, 16, 16, 1280, 2560, 640, 16, 32, 32, 16, 32, 32, 16, 32, 32, 32, 32, 32, 32, 1280, 2560, 640, 1280, 640, 2560, 256, 16, 32, 32, 2560, 256, 32, 32] : Fin 34 → ℤ) i : ℝ) * ((targetCornerTerm H 23) i) =
      Integer.Sparse.eval (![targetCornerChild23_0Projection, targetCornerChild23_1Projection, targetCornerChild23_2Projection, targetCornerChild23_3Projection, targetCornerChild23_4Projection, targetCornerChild23_5Projection, targetCornerChild23_6Projection, targetCornerChild23_7Projection, targetCornerChild23_8Projection, targetCornerChild23_9Projection, targetCornerChild23_10Projection, targetCornerChild23_11Projection, targetCornerChild23_12Projection, targetCornerChild23_13Projection, targetCornerChild23_14Projection, targetCornerChild23_15Projection, targetCornerChild23_16Projection, targetCornerChild23_17Projection, targetCornerChild23_18Projection, targetCornerChild23_19Projection, targetCornerChild23_20Projection, targetCornerChild23_21Projection, targetCornerChild23_22Projection, targetCornerChild23_23Projection, targetCornerChild23_24Projection, targetCornerChild23_25Projection, targetCornerChild23_26Projection, targetCornerChild23_27Projection, targetCornerChild23_28Projection, targetCornerChild23_29Projection, targetCornerChild23_30Projection, targetCornerChild23_31Projection, targetCornerChild23_32Projection, targetCornerChild23_33Projection] i) (Normalization.momentVector H) := by
    intro i
    fin_cases i
    · exact targetCornerChild23_0 hH
    · exact targetCornerChild23_1 hH
    · exact targetCornerChild23_2 hH
    · exact targetCornerChild23_3 hH
    · exact targetCornerChild23_4 hH
    · exact targetCornerChild23_5 hH
    · exact targetCornerChild23_6 hH
    · exact targetCornerChild23_7 hH
    · exact targetCornerChild23_8 hH
    · exact targetCornerChild23_9 hH
    · exact targetCornerChild23_10 hH
    · exact targetCornerChild23_11 hH
    · exact targetCornerChild23_12 hH
    · exact targetCornerChild23_13 hH
    · exact targetCornerChild23_14 hH
    · exact targetCornerChild23_15 hH
    · exact targetCornerChild23_16 hH
    · exact targetCornerChild23_17 hH
    · exact targetCornerChild23_18 hH
    · exact targetCornerChild23_19 hH
    · exact targetCornerChild23_20 hH
    · exact targetCornerChild23_21 hH
    · exact targetCornerChild23_22 hH
    · exact targetCornerChild23_23 hH
    · exact targetCornerChild23_24 hH
    · exact targetCornerChild23_25 hH
    · exact targetCornerChild23_26 hH
    · exact targetCornerChild23_27 hH
    · exact targetCornerChild23_28 hH
    · exact targetCornerChild23_29 hH
    · exact targetCornerChild23_30 hH
    · exact targetCornerChild23_31 hH
    · exact targetCornerChild23_32 hH
    · exact targetCornerChild23_33 hH
  exact integer_projection (Normalization.momentVector H) (∑ i, (targetCornerTerm H 23) i) (targetCornerTerm H 23)
    (-1) 2560 2560 (-1) ![2560, 16, 16, 16, 1280, 2560, 640, 16, 32, 32, 16, 32, 32, 16, 32, 32, 32, 32, 32, 32, 1280, 2560, 640, 1280, 640, 2560, 256, 16, 32, 32, 2560, 256, 32, 32] ![1, 160, 160, 160, 2, 1, 4, 160, 80, 80, 160, 80, 80, 160, 80, 80, 80, 80, 80, 80, 2, 1, 4, 2, 4, 1, 10, 160, 80, 80, 1, 10, 80, 80] targetCornerRow23Projection ![targetCornerChild23_0Projection, targetCornerChild23_1Projection, targetCornerChild23_2Projection, targetCornerChild23_3Projection, targetCornerChild23_4Projection, targetCornerChild23_5Projection, targetCornerChild23_6Projection, targetCornerChild23_7Projection, targetCornerChild23_8Projection, targetCornerChild23_9Projection, targetCornerChild23_10Projection, targetCornerChild23_11Projection, targetCornerChild23_12Projection, targetCornerChild23_13Projection, targetCornerChild23_14Projection, targetCornerChild23_15Projection, targetCornerChild23_16Projection, targetCornerChild23_17Projection, targetCornerChild23_18Projection, targetCornerChild23_19Projection, targetCornerChild23_20Projection, targetCornerChild23_21Projection, targetCornerChild23_22Projection, targetCornerChild23_23Projection, targetCornerChild23_24Projection, targetCornerChild23_25Projection, targetCornerChild23_26Projection, targetCornerChild23_27Projection, targetCornerChild23_28Projection, targetCornerChild23_29Projection, targetCornerChild23_30Projection, targetCornerChild23_31Projection, targetCornerChild23_32Projection, targetCornerChild23_33Projection]
    (by decide +kernel) (by decide +kernel)
    (by intro i; fin_cases i <;> decide +kernel) (by ring) hc (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
