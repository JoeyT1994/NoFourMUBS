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
import NoFourMUBs.Step2.SOS.Canonical297
import NoFourMUBs.Step2.SOS.Canonical356
import NoFourMUBs.Step2.SOS.Canonical364
import NoFourMUBs.Step2.SOS.Canonical365
import NoFourMUBs.Step2.SOS.Canonical366
import NoFourMUBs.Step2.SOS.Canonical367
import NoFourMUBs.Step2.SOS.Canonical370
import NoFourMUBs.Step2.SOS.Canonical371
import NoFourMUBs.Step2.SOS.Canonical474
import NoFourMUBs.Step2.SOS.Canonical478
import NoFourMUBs.Step2.SOS.Canonical496
import NoFourMUBs.Step2.SOS.Canonical511
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.Reductions000
import NoFourMUBs.Step2.SOS.Reductions001
import NoFourMUBs.Step2.SOS.Reductions002
import NoFourMUBs.Step2.SOS.Reductions012
import NoFourMUBs.Step2.SOS.Reductions084
import NoFourMUBs.Step2.SOS.Reductions290
import NoFourMUBs.Step2.SOS.Reductions291
import NoFourMUBs.Step2.SOS.TargetProjectionTerms

noncomputable section
namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000

def targetCornerChild24_0Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (4) reductionProjection9303)
    (Integer.Sparse.scale (5) reductionProjection9313)

theorem targetCornerChild24_0 {H : CMatrix} (hH : IsHadamard H) :
    (2560 : ℝ) * targetCornerTerm H 24 0 =
      Integer.Sparse.eval targetCornerChild24_0Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 0), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 0)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 0) ≤ 6; decide +kernel)) = canonicalInput11522.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (120 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 24 0) =
      Integer.Sparse.eval reductionProjection9303 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 0), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 0)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 0) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound11522 hH))).trans (reductionSound9303 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 0), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 0)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 0) ≤ 6; decide +kernel)) = canonicalInput10967.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 0) =
      Integer.Sparse.eval reductionProjection9313 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 0), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 0)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 0) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound10967 hH))).trans (reductionSound9313 hH)
  have hw : 450 * CornerPairs.weight 24 * CornerPairs.weight 0 =
      (3 : ℝ) / 16 := by
    change (450 : ℝ) * (((1 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild24_0Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (4 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetCornerChild24_1Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (3) reductionProjection2692)
    (Integer.Sparse.scale (3) reductionProjection389)

theorem targetCornerChild24_1 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 24 1 =
      Integer.Sparse.eval targetCornerChild24_1Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 1), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 1)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 1) ≤ 6; decide +kernel)) = canonicalInput23371.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 24 1) =
      Integer.Sparse.eval reductionProjection2692 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 1), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 1)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 1) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound23371 hH))).trans (reductionSound2692 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 1), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 1)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 1) ≤ 6; decide +kernel)) = canonicalInput652.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 1) =
      Integer.Sparse.eval reductionProjection389 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 1), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 1)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 1) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound652 hH))).trans (reductionSound389 hH)
  have hw : 450 * CornerPairs.weight 24 * CornerPairs.weight 1 =
      (3 : ℝ) / 16 := by
    change (450 : ℝ) * (((1 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild24_1Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerChild24_2Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (3) reductionProjection2692)
    (Integer.Sparse.scale (3) reductionProjection389)

theorem targetCornerChild24_2 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 24 2 =
      Integer.Sparse.eval targetCornerChild24_2Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 2), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 2)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 2) ≤ 6; decide +kernel)) = canonicalInput12257.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 24 2) =
      Integer.Sparse.eval reductionProjection2692 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 2), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 2)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 2) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound12257 hH))).trans (reductionSound2692 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 2), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 2)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 2) ≤ 6; decide +kernel)) = canonicalInput8099.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 2) =
      Integer.Sparse.eval reductionProjection389 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 2), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 2)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 2) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound8099 hH))).trans (reductionSound389 hH)
  have hw : 450 * CornerPairs.weight 24 * CornerPairs.weight 2 =
      (3 : ℝ) / 16 := by
    change (450 : ℝ) * (((1 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild24_2Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerChild24_3Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (3) reductionProjection64)
    (Integer.Sparse.scale (3) oldProjection276)

theorem targetCornerChild24_3 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 24 3 =
      Integer.Sparse.eval targetCornerChild24_3Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 3), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 3)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel)) = canonicalInput11700.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 24 3) =
      Integer.Sparse.eval reductionProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 3), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 3)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound11700 hH))).trans (reductionSound64 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 3), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 3)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel)) = canonicalInput10362.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 3) =
      Integer.Sparse.eval oldProjection276 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 3), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 3)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound10362 hH))).trans (oldProjectionSound276 hH)
  have hw : 450 * CornerPairs.weight 24 * CornerPairs.weight 3 =
      (3 : ℝ) / 16 := by
    change (450 : ℝ) * (((1 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild24_3Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerChild24_4Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (3) reductionProjection64)
    (Integer.Sparse.scale (3) oldProjection276)

theorem targetCornerChild24_4 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 24 4 =
      Integer.Sparse.eval targetCornerChild24_4Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 4), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 4)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel)) = canonicalInput38.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 24 4) =
      Integer.Sparse.eval reductionProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 4), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 4)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound38 hH))).trans (reductionSound64 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 4), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 4)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel)) = canonicalInput32766.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 4) =
      Integer.Sparse.eval oldProjection276 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 4), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 4)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound32766 hH))).trans (oldProjectionSound276 hH)
  have hw : 450 * CornerPairs.weight 24 * CornerPairs.weight 4 =
      (3 : ℝ) / 16 := by
    change (450 : ℝ) * (((1 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild24_4Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerChild24_5Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (24) oldProjection134)
    (Integer.Sparse.scale (3) oldProjection63)

theorem targetCornerChild24_5 {H : CMatrix} (hH : IsHadamard H) :
    (256 : ℝ) * targetCornerTerm H 24 5 =
      Integer.Sparse.eval targetCornerChild24_5Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 5), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 5)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 5) ≤ 6; decide +kernel)) = canonicalInput110.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 24 5) =
      Integer.Sparse.eval oldProjection134 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 5), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 5)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 5) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound110 hH))).trans (oldProjectionSound134 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 5), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 5)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 5) ≤ 6; decide +kernel)) = canonicalInput31762.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (8 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 5) =
      Integer.Sparse.eval oldProjection63 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (8 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 5), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 5)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 5) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound31762 hH))).trans (oldProjectionSound63 hH)
  have hw : 450 * CornerPairs.weight 24 * CornerPairs.weight 5 =
      (3 : ℝ) / 32 := by
    change (450 : ℝ) * (((1 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild24_5Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (24 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerChild24_6Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (60) reductionProjection44)
    (Integer.Sparse.scale (3) oldProjection11)

theorem targetCornerChild24_6 {H : CMatrix} (hH : IsHadamard H) :
    (640 : ℝ) * targetCornerTerm H 24 6 =
      Integer.Sparse.eval targetCornerChild24_6Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 6), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 6)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 6) ≤ 6; decide +kernel)) = canonicalInput65.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 24 6) =
      Integer.Sparse.eval reductionProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 6), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 6)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 6) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound65 hH))).trans (reductionSound44 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 6), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 6)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 6) ≤ 6; decide +kernel)) = canonicalInput32743.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (20 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 6) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 6), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 6)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 6) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound32743 hH))).trans (oldProjectionSound11 hH)
  have hw : 450 * CornerPairs.weight 24 * CornerPairs.weight 6 =
      (3 : ℝ) / 32 := by
    change (450 : ℝ) * (((1 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild24_6Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (60 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerChild24_7Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (3) reductionProjection2692)
    (Integer.Sparse.scale (3) reductionProjection389)

theorem targetCornerChild24_7 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 24 7 =
      Integer.Sparse.eval targetCornerChild24_7Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 7), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 7)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 7) ≤ 6; decide +kernel)) = canonicalInput4639.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 24 7) =
      Integer.Sparse.eval reductionProjection2692 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 7), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 7)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 7) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound4639 hH))).trans (reductionSound2692 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 7), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 7)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 7) ≤ 6; decide +kernel)) = canonicalInput12317.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 7) =
      Integer.Sparse.eval reductionProjection389 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 7), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 7)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 7) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound12317 hH))).trans (reductionSound389 hH)
  have hw : 450 * CornerPairs.weight 24 * CornerPairs.weight 7 =
      (3 : ℝ) / 16 := by
    change (450 : ℝ) * (((1 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild24_7Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerChild24_8Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (3) oldProjection276)
    (Integer.Sparse.scale (3) oldProjection98)

theorem targetCornerChild24_8 {H : CMatrix} (hH : IsHadamard H) :
    (32 : ℝ) * targetCornerTerm H 24 8 =
      Integer.Sparse.eval targetCornerChild24_8Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 8), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 8)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 8) ≤ 6; decide +kernel)) = canonicalInput18547.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 24 8) =
      Integer.Sparse.eval oldProjection276 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 8), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 8)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 8) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound18547 hH))).trans (oldProjectionSound276 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 8), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 8)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 8) ≤ 6; decide +kernel)) = canonicalInput879.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 8) =
      Integer.Sparse.eval oldProjection98 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 8), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 8)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 8) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound879 hH))).trans (oldProjectionSound98 hH)
  have hw : 450 * CornerPairs.weight 24 * CornerPairs.weight 8 =
      (3 : ℝ) / 32 := by
    change (450 : ℝ) * (((1 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild24_8Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerChild24_9Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (24) oldProjection134)
    (Integer.Sparse.scale (3) oldProjection63)

theorem targetCornerChild24_9 {H : CMatrix} (hH : IsHadamard H) :
    (256 : ℝ) * targetCornerTerm H 24 9 =
      Integer.Sparse.eval targetCornerChild24_9Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 9), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 9)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 9) ≤ 6; decide +kernel)) = canonicalInput5787.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 24 9) =
      Integer.Sparse.eval oldProjection134 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 9), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 9)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 9) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound5787 hH))).trans (oldProjectionSound134 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 9), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 9)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 9) ≤ 6; decide +kernel)) = canonicalInput12307.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (8 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 9) =
      Integer.Sparse.eval oldProjection63 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (8 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 9), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 9)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 9) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound12307 hH))).trans (oldProjectionSound63 hH)
  have hw : 450 * CornerPairs.weight 24 * CornerPairs.weight 9 =
      (3 : ℝ) / 32 := by
    change (450 : ℝ) * (((1 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild24_9Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (24 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerChild24_10Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (3) reductionProjection2692)
    (Integer.Sparse.scale (3) reductionProjection389)

theorem targetCornerChild24_10 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 24 10 =
      Integer.Sparse.eval targetCornerChild24_10Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 10), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 10)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 10) ≤ 6; decide +kernel)) = canonicalInput9983.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 24 10) =
      Integer.Sparse.eval reductionProjection2692 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 10), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 10)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 10) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound9983 hH))).trans (reductionSound2692 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 10), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 10)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 10) ≤ 6; decide +kernel)) = canonicalInput11783.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 10) =
      Integer.Sparse.eval reductionProjection389 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 10), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 10)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 10) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound11783 hH))).trans (reductionSound389 hH)
  have hw : 450 * CornerPairs.weight 24 * CornerPairs.weight 10 =
      (3 : ℝ) / 16 := by
    change (450 : ℝ) * (((1 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild24_10Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerChild24_11Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (3) oldProjection275)
    (Integer.Sparse.scale (3) oldProjection220)

theorem targetCornerChild24_11 {H : CMatrix} (hH : IsHadamard H) :
    (32 : ℝ) * targetCornerTerm H 24 11 =
      Integer.Sparse.eval targetCornerChild24_11Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 11), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 11)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 11) ≤ 6; decide +kernel)) = canonicalInput22808.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 24 11) =
      Integer.Sparse.eval oldProjection275 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 11), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 11)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 11) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound22808 hH))).trans (oldProjectionSound275 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 11), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 11)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 11) ≤ 6; decide +kernel)) = canonicalInput800.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 11) =
      Integer.Sparse.eval oldProjection220 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 11), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 11)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 11) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound800 hH))).trans (oldProjectionSound220 hH)
  have hw : 450 * CornerPairs.weight 24 * CornerPairs.weight 11 =
      (3 : ℝ) / 32 := by
    change (450 : ℝ) * (((1 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild24_11Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerChild24_12Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (3) oldProjection276)
    (Integer.Sparse.scale (3) oldProjection98)

theorem targetCornerChild24_12 {H : CMatrix} (hH : IsHadamard H) :
    (32 : ℝ) * targetCornerTerm H 24 12 =
      Integer.Sparse.eval targetCornerChild24_12Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 12), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 12)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 12) ≤ 6; decide +kernel)) = canonicalInput12083.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 24 12) =
      Integer.Sparse.eval oldProjection276 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 12), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 12)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 12) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound12083 hH))).trans (oldProjectionSound276 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 12), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 12)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 12) ≤ 6; decide +kernel)) = canonicalInput9622.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 12) =
      Integer.Sparse.eval oldProjection98 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 12), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 12)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 12) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound9622 hH))).trans (oldProjectionSound98 hH)
  have hw : 450 * CornerPairs.weight 24 * CornerPairs.weight 12 =
      (3 : ℝ) / 32 := by
    change (450 : ℝ) * (((1 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild24_12Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerChild24_13Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (3) reductionProjection2692)
    (Integer.Sparse.scale (3) reductionProjection389)

theorem targetCornerChild24_13 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 24 13 =
      Integer.Sparse.eval targetCornerChild24_13Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 13), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 13)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 13) ≤ 6; decide +kernel)) = canonicalInput23322.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 24 13) =
      Integer.Sparse.eval reductionProjection2692 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 13), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 13)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 13) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound23322 hH))).trans (reductionSound2692 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 13), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 13)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 13) ≤ 6; decide +kernel)) = canonicalInput711.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 13) =
      Integer.Sparse.eval reductionProjection389 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 13), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 13)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 13) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound711 hH))).trans (reductionSound389 hH)
  have hw : 450 * CornerPairs.weight 24 * CornerPairs.weight 13 =
      (3 : ℝ) / 16 := by
    change (450 : ℝ) * (((1 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild24_13Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerChild24_14Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (3) oldProjection276)
    (Integer.Sparse.scale (3) oldProjection98)

theorem targetCornerChild24_14 {H : CMatrix} (hH : IsHadamard H) :
    (32 : ℝ) * targetCornerTerm H 24 14 =
      Integer.Sparse.eval targetCornerChild24_14Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 14), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 14)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 14) ≤ 6; decide +kernel)) = canonicalInput23772.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 24 14) =
      Integer.Sparse.eval oldProjection276 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 14), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 14)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 14) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound23772 hH))).trans (oldProjectionSound276 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 14), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 14)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 14) ≤ 6; decide +kernel)) = canonicalInput548.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 14) =
      Integer.Sparse.eval oldProjection98 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 14), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 14)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 14) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound548 hH))).trans (oldProjectionSound98 hH)
  have hw : 450 * CornerPairs.weight 24 * CornerPairs.weight 14 =
      (3 : ℝ) / 32 := by
    change (450 : ℝ) * (((1 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild24_14Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerChild24_15Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (24) oldProjection134)
    (Integer.Sparse.scale (3) oldProjection63)

theorem targetCornerChild24_15 {H : CMatrix} (hH : IsHadamard H) :
    (256 : ℝ) * targetCornerTerm H 24 15 =
      Integer.Sparse.eval targetCornerChild24_15Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 15), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 15)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 15) ≤ 6; decide +kernel)) = canonicalInput23435.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 24 15) =
      Integer.Sparse.eval oldProjection134 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 15), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 15)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 15) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound23435 hH))).trans (oldProjectionSound134 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 15), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 15)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 15) ≤ 6; decide +kernel)) = canonicalInput649.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (8 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 15) =
      Integer.Sparse.eval oldProjection63 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (8 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 15), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 15)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 15) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound649 hH))).trans (oldProjectionSound63 hH)
  have hw : 450 * CornerPairs.weight 24 * CornerPairs.weight 15 =
      (3 : ℝ) / 32 := by
    change (450 : ℝ) * (((1 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild24_15Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (24 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerChild24_16Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (3) oldProjection275)
    (Integer.Sparse.scale (3) oldProjection220)

theorem targetCornerChild24_16 {H : CMatrix} (hH : IsHadamard H) :
    (32 : ℝ) * targetCornerTerm H 24 16 =
      Integer.Sparse.eval targetCornerChild24_16Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 16), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 16)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 16) ≤ 6; decide +kernel)) = canonicalInput18542.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 24 16) =
      Integer.Sparse.eval oldProjection275 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 16), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 16)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 16) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound18542 hH))).trans (oldProjectionSound275 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 16), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 16)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 16) ≤ 6; decide +kernel)) = canonicalInput884.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 16) =
      Integer.Sparse.eval oldProjection220 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 16), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 16)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 16) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound884 hH))).trans (oldProjectionSound220 hH)
  have hw : 450 * CornerPairs.weight 24 * CornerPairs.weight 16 =
      (3 : ℝ) / 32 := by
    change (450 : ℝ) * (((1 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild24_16Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerChild24_17Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (1) oldProjection35)
    (Integer.Sparse.scale (1) oldProjection3)

theorem targetCornerChild24_17 {H : CMatrix} (hH : IsHadamard H) :
    (32 : ℝ) * targetCornerTerm H 24 17 =
      Integer.Sparse.eval targetCornerChild24_17Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 17), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 17)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 17) ≤ 6; decide +kernel)) = canonicalInput18812.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 24 17) =
      Integer.Sparse.eval oldProjection35 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 17), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 17)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 17) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound18812 hH))).trans (oldProjectionSound35 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 17), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 17)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 17) ≤ 6; decide +kernel)) = canonicalInput873.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 17) =
      Integer.Sparse.eval oldProjection3 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 17), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 17)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 17) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound873 hH))).trans (oldProjectionSound3 hH)
  have hw : 450 * CornerPairs.weight 24 * CornerPairs.weight 17 =
      (1 : ℝ) / 32 := by
    change (450 : ℝ) * (((1 : ℕ) : ℝ) / 120) * (((1 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild24_17Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (1 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetCornerChild24_18Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (3) oldProjection276)
    (Integer.Sparse.scale (3) oldProjection98)

theorem targetCornerChild24_18 {H : CMatrix} (hH : IsHadamard H) :
    (32 : ℝ) * targetCornerTerm H 24 18 =
      Integer.Sparse.eval targetCornerChild24_18Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 18), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 18)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 18) ≤ 6; decide +kernel)) = canonicalInput22803.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 24 18) =
      Integer.Sparse.eval oldProjection276 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 18), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 18)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 18) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound22803 hH))).trans (oldProjectionSound276 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 18), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 18)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 18) ≤ 6; decide +kernel)) = canonicalInput805.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 18) =
      Integer.Sparse.eval oldProjection98 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 18), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 18)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 18) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound805 hH))).trans (oldProjectionSound98 hH)
  have hw : 450 * CornerPairs.weight 24 * CornerPairs.weight 18 =
      (3 : ℝ) / 32 := by
    change (450 : ℝ) * (((1 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild24_18Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerChild24_19Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (1) oldProjection44)
    (Integer.Sparse.scale (1) oldProjection19)

theorem targetCornerChild24_19 {H : CMatrix} (hH : IsHadamard H) :
    (32 : ℝ) * targetCornerTerm H 24 19 =
      Integer.Sparse.eval targetCornerChild24_19Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 19), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 19)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 19) ≤ 6; decide +kernel)) = canonicalInput23526.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 24 19) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 19), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 19)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 19) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound23526 hH))).trans (oldProjectionSound44 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 19), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 19)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 19) ≤ 6; decide +kernel)) = canonicalInput635.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 19) =
      Integer.Sparse.eval oldProjection19 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 19), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 19)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 19) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound635 hH))).trans (oldProjectionSound19 hH)
  have hw : 450 * CornerPairs.weight 24 * CornerPairs.weight 19 =
      (1 : ℝ) / 32 := by
    change (450 : ℝ) * (((1 : ℕ) : ℝ) / 120) * (((1 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild24_19Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (1 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetCornerChild24_20Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (3) reductionProjection64)
    (Integer.Sparse.scale (3) oldProjection276)

theorem targetCornerChild24_20 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 24 20 =
      Integer.Sparse.eval targetCornerChild24_20Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 20), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 20)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 20) ≤ 6; decide +kernel)) = canonicalInput12216.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 24 20) =
      Integer.Sparse.eval reductionProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 20), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 20)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 20) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound12216 hH))).trans (reductionSound64 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 20), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 20)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 20) ≤ 6; decide +kernel)) = canonicalInput9246.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 20) =
      Integer.Sparse.eval oldProjection276 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 20), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 20)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 20) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound9246 hH))).trans (oldProjectionSound276 hH)
  have hw : 450 * CornerPairs.weight 24 * CornerPairs.weight 20 =
      (3 : ℝ) / 16 := by
    change (450 : ℝ) * (((1 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild24_20Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerChild24_21Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (24) oldProjection134)
    (Integer.Sparse.scale (3) oldProjection63)

theorem targetCornerChild24_21 {H : CMatrix} (hH : IsHadamard H) :
    (256 : ℝ) * targetCornerTerm H 24 21 =
      Integer.Sparse.eval targetCornerChild24_21Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 21), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 21)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 21) ≤ 6; decide +kernel)) = canonicalInput23777.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 24 21) =
      Integer.Sparse.eval oldProjection134 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 21), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 21)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 21) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound23777 hH))).trans (oldProjectionSound134 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 21), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 21)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 21) ≤ 6; decide +kernel)) = canonicalInput543.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (8 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 21) =
      Integer.Sparse.eval oldProjection63 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (8 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 21), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 21)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 21) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound543 hH))).trans (oldProjectionSound63 hH)
  have hw : 450 * CornerPairs.weight 24 * CornerPairs.weight 21 =
      (3 : ℝ) / 32 := by
    change (450 : ℝ) * (((1 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild24_21Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (24 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerChild24_22Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (60) reductionProjection44)
    (Integer.Sparse.scale (3) oldProjection11)

theorem targetCornerChild24_22 {H : CMatrix} (hH : IsHadamard H) :
    (640 : ℝ) * targetCornerTerm H 24 22 =
      Integer.Sparse.eval targetCornerChild24_22Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 22), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 22)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 22) ≤ 6; decide +kernel)) = canonicalInput12265.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 24 22) =
      Integer.Sparse.eval reductionProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 22), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 22)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 22) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound12265 hH))).trans (reductionSound44 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 22), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 22)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 22) ≤ 6; decide +kernel)) = canonicalInput8081.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (20 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 22) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 22), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 22)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 22) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound8081 hH))).trans (oldProjectionSound11 hH)
  have hw : 450 * CornerPairs.weight 24 * CornerPairs.weight 22 =
      (3 : ℝ) / 32 := by
    change (450 : ℝ) * (((1 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild24_22Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (60 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerChild24_23Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (60) reductionProjection44)
    (Integer.Sparse.scale (3) oldProjection11)

theorem targetCornerChild24_23 {H : CMatrix} (hH : IsHadamard H) :
    (640 : ℝ) * targetCornerTerm H 24 23 =
      Integer.Sparse.eval targetCornerChild24_23Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 23), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 23)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel)) = canonicalInput108.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 24 23) =
      Integer.Sparse.eval reductionProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 23), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 23)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound108 hH))).trans (reductionSound44 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 23), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 23)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel)) = canonicalInput31764.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (20 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 23) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 23), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 23)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound31764 hH))).trans (oldProjectionSound11 hH)
  have hw : 450 * CornerPairs.weight 24 * CornerPairs.weight 23 =
      (3 : ℝ) / 32 := by
    change (450 : ℝ) * (((1 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild24_23Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (60 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerChild24_24Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (1) reductionProjection30)
    (Integer.Sparse.scale (1) oldProjection0)

theorem targetCornerChild24_24 {H : CMatrix} (hH : IsHadamard H) :
    (32 : ℝ) * targetCornerTerm H 24 24 =
      Integer.Sparse.eval targetCornerChild24_24Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 24), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 24)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel)) = canonicalInput165.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 24 24) =
      Integer.Sparse.eval reductionProjection30 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 24), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 24)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound165 hH))).trans (reductionSound30 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 24), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 24)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel)) = canonicalInput30605.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 24) =
      Integer.Sparse.eval oldProjection0 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 24), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 24)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound30605 hH))).trans (oldProjectionSound0 hH)
  have hw : 450 * CornerPairs.weight 24 * CornerPairs.weight 24 =
      (1 : ℝ) / 32 := by
    change (450 : ℝ) * (((1 : ℕ) : ℝ) / 120) * (((1 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild24_24Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (1 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetCornerChild24_25Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (24) oldProjection134)
    (Integer.Sparse.scale (3) oldProjection63)

theorem targetCornerChild24_25 {H : CMatrix} (hH : IsHadamard H) :
    (256 : ℝ) * targetCornerTerm H 24 25 =
      Integer.Sparse.eval targetCornerChild24_25Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 25), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 25)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 25) ≤ 6; decide +kernel)) = canonicalInput12078.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 24 25) =
      Integer.Sparse.eval oldProjection134 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 25), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 25)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 25) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound12078 hH))).trans (oldProjectionSound134 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 25), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 25)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 25) ≤ 6; decide +kernel)) = canonicalInput9627.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (8 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 25) =
      Integer.Sparse.eval oldProjection63 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (8 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 25), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 25)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 25) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound9627 hH))).trans (oldProjectionSound63 hH)
  have hw : 450 * CornerPairs.weight 24 * CornerPairs.weight 25 =
      (3 : ℝ) / 32 := by
    change (450 : ℝ) * (((1 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild24_25Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (24 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerChild24_26Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (1) oldProjection35)
    (Integer.Sparse.scale (1) oldProjection3)

theorem targetCornerChild24_26 {H : CMatrix} (hH : IsHadamard H) :
    (32 : ℝ) * targetCornerTerm H 24 26 =
      Integer.Sparse.eval targetCornerChild24_26Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 26), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 26)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 26) ≤ 6; decide +kernel)) = canonicalInput23691.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 24 26) =
      Integer.Sparse.eval oldProjection35 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 26), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 26)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 26) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound23691 hH))).trans (oldProjectionSound35 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 26), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 26)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 26) ≤ 6; decide +kernel)) = canonicalInput619.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 26) =
      Integer.Sparse.eval oldProjection3 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 26), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 26)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 26) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound619 hH))).trans (oldProjectionSound3 hH)
  have hw : 450 * CornerPairs.weight 24 * CornerPairs.weight 26 =
      (1 : ℝ) / 32 := by
    change (450 : ℝ) * (((1 : ℕ) : ℝ) / 120) * (((1 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild24_26Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (1 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetCornerChild24_27Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (3) reductionProjection2692)
    (Integer.Sparse.scale (3) reductionProjection389)

theorem targetCornerChild24_27 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 24 27 =
      Integer.Sparse.eval targetCornerChild24_27Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 27), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 27)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 27) ≤ 6; decide +kernel)) = canonicalInput11547.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 24 27) =
      Integer.Sparse.eval reductionProjection2692 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 27), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 27)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 27) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound11547 hH))).trans (reductionSound2692 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 27), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 27)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 27) ≤ 6; decide +kernel)) = canonicalInput10861.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 27) =
      Integer.Sparse.eval reductionProjection389 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 27), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 27)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 27) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound10861 hH))).trans (reductionSound389 hH)
  have hw : 450 * CornerPairs.weight 24 * CornerPairs.weight 27 =
      (3 : ℝ) / 16 := by
    change (450 : ℝ) * (((1 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild24_27Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerChild24_28Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (3) oldProjection276)
    (Integer.Sparse.scale (3) oldProjection98)

theorem targetCornerChild24_28 {H : CMatrix} (hH : IsHadamard H) :
    (32 : ℝ) * targetCornerTerm H 24 28 =
      Integer.Sparse.eval targetCornerChild24_28Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 28), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 28)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel)) = canonicalInput23440.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 24 28) =
      Integer.Sparse.eval oldProjection276 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 28), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 28)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound23440 hH))).trans (oldProjectionSound276 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 28), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 28)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel)) = canonicalInput644.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 28) =
      Integer.Sparse.eval oldProjection98 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 28), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 28)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound644 hH))).trans (oldProjectionSound98 hH)
  have hw : 450 * CornerPairs.weight 24 * CornerPairs.weight 28 =
      (3 : ℝ) / 32 := by
    change (450 : ℝ) * (((1 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild24_28Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerChild24_29Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (3) oldProjection275)
    (Integer.Sparse.scale (3) oldProjection220)

theorem targetCornerChild24_29 {H : CMatrix} (hH : IsHadamard H) :
    (32 : ℝ) * targetCornerTerm H 24 29 =
      Integer.Sparse.eval targetCornerChild24_29Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 29), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 29)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 29) ≤ 6; decide +kernel)) = canonicalInput12270.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 24 29) =
      Integer.Sparse.eval oldProjection275 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 29), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 29)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 29) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound12270 hH))).trans (oldProjectionSound275 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 29), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 29)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 29) ≤ 6; decide +kernel)) = canonicalInput8076.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 29) =
      Integer.Sparse.eval oldProjection220 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 29), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 29)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 29) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound8076 hH))).trans (oldProjectionSound220 hH)
  have hw : 450 * CornerPairs.weight 24 * CornerPairs.weight 29 =
      (3 : ℝ) / 32 := by
    change (450 : ℝ) * (((1 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild24_29Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerChild24_30Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (24) oldProjection134)
    (Integer.Sparse.scale (3) oldProjection63)

theorem targetCornerChild24_30 {H : CMatrix} (hH : IsHadamard H) :
    (256 : ℝ) * targetCornerTerm H 24 30 =
      Integer.Sparse.eval targetCornerChild24_30Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 30), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 30)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 30) ≤ 6; decide +kernel)) = canonicalInput63.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 24 30) =
      Integer.Sparse.eval oldProjection134 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 30), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 30)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 30) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound63 hH))).trans (oldProjectionSound134 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 30), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 30)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 30) ≤ 6; decide +kernel)) = canonicalInput32745.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (8 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 30) =
      Integer.Sparse.eval oldProjection63 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (8 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 30), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 30)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 30) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound32745 hH))).trans (oldProjectionSound63 hH)
  have hw : 450 * CornerPairs.weight 24 * CornerPairs.weight 30 =
      (3 : ℝ) / 32 := by
    change (450 : ℝ) * (((1 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild24_30Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (24 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerChild24_31Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (1) oldProjection35)
    (Integer.Sparse.scale (1) oldProjection3)

theorem targetCornerChild24_31 {H : CMatrix} (hH : IsHadamard H) :
    (32 : ℝ) * targetCornerTerm H 24 31 =
      Integer.Sparse.eval targetCornerChild24_31Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 31), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 31)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 31) ≤ 6; decide +kernel)) = canonicalInput167.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 24 31) =
      Integer.Sparse.eval oldProjection35 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 31), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 31)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 31) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound167 hH))).trans (oldProjectionSound35 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 31), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 31)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 31) ≤ 6; decide +kernel)) = canonicalInput30372.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 31) =
      Integer.Sparse.eval oldProjection3 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 31), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 31)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 31) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound30372 hH))).trans (oldProjectionSound3 hH)
  have hw : 450 * CornerPairs.weight 24 * CornerPairs.weight 31 =
      (1 : ℝ) / 32 := by
    change (450 : ℝ) * (((1 : ℕ) : ℝ) / 120) * (((1 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild24_31Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (1 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetCornerChild24_32Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (3) oldProjection276)
    (Integer.Sparse.scale (3) oldProjection98)

theorem targetCornerChild24_32 {H : CMatrix} (hH : IsHadamard H) :
    (32 : ℝ) * targetCornerTerm H 24 32 =
      Integer.Sparse.eval targetCornerChild24_32Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 32), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 32)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 32) ≤ 6; decide +kernel)) = canonicalInput5785.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 24 32) =
      Integer.Sparse.eval oldProjection276 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 32), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 32)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 32) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound5785 hH))).trans (oldProjectionSound276 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 32), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 32)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 32) ≤ 6; decide +kernel)) = canonicalInput12309.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 32) =
      Integer.Sparse.eval oldProjection98 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 32), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 32)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 32) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound12309 hH))).trans (oldProjectionSound98 hH)
  have hw : 450 * CornerPairs.weight 24 * CornerPairs.weight 32 =
      (3 : ℝ) / 32 := by
    change (450 : ℝ) * (((1 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild24_32Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerChild24_33Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (1) oldProjection44)
    (Integer.Sparse.scale (1) oldProjection19)

theorem targetCornerChild24_33 {H : CMatrix} (hH : IsHadamard H) :
    (32 : ℝ) * targetCornerTerm H 24 33 =
      Integer.Sparse.eval targetCornerChild24_33Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 33), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 33)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 33) ≤ 6; decide +kernel)) = canonicalInput19044.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 24 33) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 33), (CornerPairs.overlapExponent cubicExponent cubicExponent 24 33)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 33) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound19044 hH))).trans (oldProjectionSound44 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 33), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 33)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 33) ≤ 6; decide +kernel)) = canonicalInput857.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 33) =
      Integer.Sparse.eval oldProjection19 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 24), (CornerPairs.blocks 33), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 24 33)⟩ : ExponentCode) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 33) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound857 hH))).trans (oldProjectionSound19 hH)
  have hw : 450 * CornerPairs.weight 24 * CornerPairs.weight 33 =
      (1 : ℝ) / 32 := by
    change (450 : ℝ) * (((1 : ℕ) : ℝ) / 120) * (((1 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild24_33Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (1 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetCornerRow24Projection : Integer.Sparse (Fin 1613) := [(0, 107), (14, 1920), (15, 720), (16, 80), (58, 1440), (60, 160), (67, 480), (80, 1920), (81, -1920), (87, -960), (94, 510), (228, 960), (247, 240), (681, 960), (682, -480), (697, -960), (698, 2880), (1034, 1440), (1055, -960), (1210, 3840), (1212, 5760), (1217, 720), (1219, -1920), (1220, 2400), (1221, -960), (1226, 1200), (1227, 2080), (1250, 120), (1251, -405), (1388, 720), (1389, 960)]

theorem targetCornerRow24 {H : CMatrix} (hH : IsHadamard H) :
    (2560 : ℝ) * (∑ i : Fin 34, (targetCornerTerm H 24) i) =
      Integer.Sparse.eval targetCornerRow24Projection (Normalization.momentVector H) := by
  have hc : ∀ i : Fin 34, ((![2560, 16, 16, 16, 16, 256, 640, 16, 32, 256, 16, 32, 32, 16, 32, 256, 32, 32, 32, 32, 16, 256, 640, 640, 32, 256, 32, 16, 32, 32, 256, 32, 32, 32] : Fin 34 → ℤ) i : ℝ) * ((targetCornerTerm H 24) i) =
      Integer.Sparse.eval (![targetCornerChild24_0Projection, targetCornerChild24_1Projection, targetCornerChild24_2Projection, targetCornerChild24_3Projection, targetCornerChild24_4Projection, targetCornerChild24_5Projection, targetCornerChild24_6Projection, targetCornerChild24_7Projection, targetCornerChild24_8Projection, targetCornerChild24_9Projection, targetCornerChild24_10Projection, targetCornerChild24_11Projection, targetCornerChild24_12Projection, targetCornerChild24_13Projection, targetCornerChild24_14Projection, targetCornerChild24_15Projection, targetCornerChild24_16Projection, targetCornerChild24_17Projection, targetCornerChild24_18Projection, targetCornerChild24_19Projection, targetCornerChild24_20Projection, targetCornerChild24_21Projection, targetCornerChild24_22Projection, targetCornerChild24_23Projection, targetCornerChild24_24Projection, targetCornerChild24_25Projection, targetCornerChild24_26Projection, targetCornerChild24_27Projection, targetCornerChild24_28Projection, targetCornerChild24_29Projection, targetCornerChild24_30Projection, targetCornerChild24_31Projection, targetCornerChild24_32Projection, targetCornerChild24_33Projection] i) (Normalization.momentVector H) := by
    intro i
    fin_cases i
    · exact targetCornerChild24_0 hH
    · exact targetCornerChild24_1 hH
    · exact targetCornerChild24_2 hH
    · exact targetCornerChild24_3 hH
    · exact targetCornerChild24_4 hH
    · exact targetCornerChild24_5 hH
    · exact targetCornerChild24_6 hH
    · exact targetCornerChild24_7 hH
    · exact targetCornerChild24_8 hH
    · exact targetCornerChild24_9 hH
    · exact targetCornerChild24_10 hH
    · exact targetCornerChild24_11 hH
    · exact targetCornerChild24_12 hH
    · exact targetCornerChild24_13 hH
    · exact targetCornerChild24_14 hH
    · exact targetCornerChild24_15 hH
    · exact targetCornerChild24_16 hH
    · exact targetCornerChild24_17 hH
    · exact targetCornerChild24_18 hH
    · exact targetCornerChild24_19 hH
    · exact targetCornerChild24_20 hH
    · exact targetCornerChild24_21 hH
    · exact targetCornerChild24_22 hH
    · exact targetCornerChild24_23 hH
    · exact targetCornerChild24_24 hH
    · exact targetCornerChild24_25 hH
    · exact targetCornerChild24_26 hH
    · exact targetCornerChild24_27 hH
    · exact targetCornerChild24_28 hH
    · exact targetCornerChild24_29 hH
    · exact targetCornerChild24_30 hH
    · exact targetCornerChild24_31 hH
    · exact targetCornerChild24_32 hH
    · exact targetCornerChild24_33 hH
  exact integer_projection (Normalization.momentVector H) (∑ i, (targetCornerTerm H 24) i) (targetCornerTerm H 24)
    (-1) 2560 2560 (-1) ![2560, 16, 16, 16, 16, 256, 640, 16, 32, 256, 16, 32, 32, 16, 32, 256, 32, 32, 32, 32, 16, 256, 640, 640, 32, 256, 32, 16, 32, 32, 256, 32, 32, 32] ![1, 160, 160, 160, 160, 10, 4, 160, 80, 10, 160, 80, 80, 160, 80, 10, 80, 80, 80, 80, 160, 10, 4, 4, 80, 10, 80, 160, 80, 80, 10, 80, 80, 80] targetCornerRow24Projection ![targetCornerChild24_0Projection, targetCornerChild24_1Projection, targetCornerChild24_2Projection, targetCornerChild24_3Projection, targetCornerChild24_4Projection, targetCornerChild24_5Projection, targetCornerChild24_6Projection, targetCornerChild24_7Projection, targetCornerChild24_8Projection, targetCornerChild24_9Projection, targetCornerChild24_10Projection, targetCornerChild24_11Projection, targetCornerChild24_12Projection, targetCornerChild24_13Projection, targetCornerChild24_14Projection, targetCornerChild24_15Projection, targetCornerChild24_16Projection, targetCornerChild24_17Projection, targetCornerChild24_18Projection, targetCornerChild24_19Projection, targetCornerChild24_20Projection, targetCornerChild24_21Projection, targetCornerChild24_22Projection, targetCornerChild24_23Projection, targetCornerChild24_24Projection, targetCornerChild24_25Projection, targetCornerChild24_26Projection, targetCornerChild24_27Projection, targetCornerChild24_28Projection, targetCornerChild24_29Projection, targetCornerChild24_30Projection, targetCornerChild24_31Projection, targetCornerChild24_32Projection, targetCornerChild24_33Projection]
    (by decide +kernel) (by decide +kernel)
    (by intro i; fin_cases i <;> decide +kernel) (by ring) hc (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
