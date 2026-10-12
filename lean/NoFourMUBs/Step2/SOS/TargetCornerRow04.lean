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
import NoFourMUBs.Step2.SOS.Canonical296
import NoFourMUBs.Step2.SOS.Canonical356
import NoFourMUBs.Step2.SOS.Canonical364
import NoFourMUBs.Step2.SOS.Canonical365
import NoFourMUBs.Step2.SOS.Canonical366
import NoFourMUBs.Step2.SOS.Canonical369
import NoFourMUBs.Step2.SOS.Canonical371
import NoFourMUBs.Step2.SOS.Canonical482
import NoFourMUBs.Step2.SOS.Canonical496
import NoFourMUBs.Step2.SOS.Canonical511
import NoFourMUBs.Step2.SOS.Canonical512
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

def targetCornerChild4_0Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (1) reductionProjection7142)
    (Integer.Sparse.scale (2) reductionProjection7171)

theorem targetCornerChild4_0 {H : CMatrix} (hH : IsHadamard H) :
    (1280 : ℝ) * targetCornerTerm H 4 0 =
      Integer.Sparse.eval targetCornerChild4_0Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 0), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 0)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 0) ≤ 6; decide +kernel)) = canonicalInput11524.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 4 0) =
      Integer.Sparse.eval reductionProjection7142 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 0), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 0)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 0) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound11524 hH))).trans (reductionSound7142 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 0), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 0)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 0) ≤ 6; decide +kernel)) = canonicalInput10965.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (720 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 0) =
      Integer.Sparse.eval reductionProjection7171 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 0), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 0)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 0) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound10965 hH))).trans (reductionSound7171 hH)
  have hw : 450 * CornerPairs.weight 4 * CornerPairs.weight 0 =
      (9 : ℝ) / 8 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild4_0Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (1 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetCornerChild4_1Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection7137)
    (Integer.Sparse.scale (9) reductionProjection2069)

theorem targetCornerChild4_1 {H : CMatrix} (hH : IsHadamard H) :
    (8 : ℝ) * targetCornerTerm H 4 1 =
      Integer.Sparse.eval targetCornerChild4_1Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 1), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 1)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 1) ≤ 6; decide +kernel)) = canonicalInput23369.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 4 1) =
      Integer.Sparse.eval reductionProjection7137 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 1), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 1)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 1) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound23369 hH))).trans (reductionSound7137 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 1), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 1)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 1) ≤ 6; decide +kernel)) = canonicalInput654.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 1) =
      Integer.Sparse.eval reductionProjection2069 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 1), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 1)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 1) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound654 hH))).trans (reductionSound2069 hH)
  have hw : 450 * CornerPairs.weight 4 * CornerPairs.weight 1 =
      (9 : ℝ) / 8 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild4_1Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild4_2Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection895)
    (Integer.Sparse.scale (9) reductionProjection4867)

theorem targetCornerChild4_2 {H : CMatrix} (hH : IsHadamard H) :
    (8 : ℝ) * targetCornerTerm H 4 2 =
      Integer.Sparse.eval targetCornerChild4_2Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 2), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 2)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 2) ≤ 6; decide +kernel)) = canonicalInput12255.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 4 2) =
      Integer.Sparse.eval reductionProjection895 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 2), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 2)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 2) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound12255 hH))).trans (reductionSound895 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 2), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 2)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 2) ≤ 6; decide +kernel)) = canonicalInput8101.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 2) =
      Integer.Sparse.eval reductionProjection4867 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 2), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 2)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 2) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound8101 hH))).trans (reductionSound4867 hH)
  have hw : 450 * CornerPairs.weight 4 * CornerPairs.weight 2 =
      (9 : ℝ) / 8 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild4_2Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild4_3Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection895)
    (Integer.Sparse.scale (9) reductionProjection4867)

theorem targetCornerChild4_3 {H : CMatrix} (hH : IsHadamard H) :
    (8 : ℝ) * targetCornerTerm H 4 3 =
      Integer.Sparse.eval targetCornerChild4_3Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 3), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 3)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel)) = canonicalInput11698.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 4 3) =
      Integer.Sparse.eval reductionProjection895 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 3), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 3)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound11698 hH))).trans (reductionSound895 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 3), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 3)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel)) = canonicalInput10364.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 3) =
      Integer.Sparse.eval reductionProjection4867 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 3), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 3)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 3) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound10364 hH))).trans (reductionSound4867 hH)
  have hw : 450 * CornerPairs.weight 4 * CornerPairs.weight 3 =
      (9 : ℝ) / 8 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild4_3Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild4_4Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection7211)
    (Integer.Sparse.scale (9) reductionProjection7154)

theorem targetCornerChild4_4 {H : CMatrix} (hH : IsHadamard H) :
    (8 : ℝ) * targetCornerTerm H 4 4 =
      Integer.Sparse.eval targetCornerChild4_4Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 4), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 4)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel)) = canonicalInput34.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 4 4) =
      Integer.Sparse.eval reductionProjection7211 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 4), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 4)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound34 hH))).trans (reductionSound7211 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 4), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 4)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel)) = canonicalInput32770.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 4) =
      Integer.Sparse.eval reductionProjection7154 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 4), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 4)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound32770 hH))).trans (reductionSound7154 hH)
  have hw : 450 * CornerPairs.weight 4 * CornerPairs.weight 4 =
      (9 : ℝ) / 8 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild4_4Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild4_5Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (720) reductionProjection912)
    (Integer.Sparse.scale (1) reductionProjection3591)

theorem targetCornerChild4_5 {H : CMatrix} (hH : IsHadamard H) :
    (1280 : ℝ) * targetCornerTerm H 4 5 =
      Integer.Sparse.eval targetCornerChild4_5Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 5), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 5)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 5) ≤ 6; decide +kernel)) = canonicalInput104.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 4 5) =
      Integer.Sparse.eval reductionProjection912 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 5), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 5)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 5) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound104 hH))).trans (reductionSound912 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 5), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 5)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 5) ≤ 6; decide +kernel)) = canonicalInput31768.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (720 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 5) =
      Integer.Sparse.eval reductionProjection3591 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 5), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 5)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 5) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound31768 hH))).trans (reductionSound3591 hH)
  have hw : 450 * CornerPairs.weight 4 * CornerPairs.weight 5 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild4_5Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (720 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetCornerChild4_6Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (720) reductionProjection912)
    (Integer.Sparse.scale (1) reductionProjection3591)

theorem targetCornerChild4_6 {H : CMatrix} (hH : IsHadamard H) :
    (1280 : ℝ) * targetCornerTerm H 4 6 =
      Integer.Sparse.eval targetCornerChild4_6Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 6), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 6)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 6) ≤ 6; decide +kernel)) = canonicalInput59.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 4 6) =
      Integer.Sparse.eval reductionProjection912 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 6), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 6)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 6) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound59 hH))).trans (reductionSound912 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 6), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 6)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 6) ≤ 6; decide +kernel)) = canonicalInput32749.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (720 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 6) =
      Integer.Sparse.eval reductionProjection3591 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 6), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 6)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 6) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound32749 hH))).trans (reductionSound3591 hH)
  have hw : 450 * CornerPairs.weight 4 * CornerPairs.weight 6 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild4_6Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (720 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetCornerChild4_7Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection7137)
    (Integer.Sparse.scale (9) reductionProjection2069)

theorem targetCornerChild4_7 {H : CMatrix} (hH : IsHadamard H) :
    (8 : ℝ) * targetCornerTerm H 4 7 =
      Integer.Sparse.eval targetCornerChild4_7Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 7), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 7)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 7) ≤ 6; decide +kernel)) = canonicalInput4635.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 4 7) =
      Integer.Sparse.eval reductionProjection7137 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 7), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 7)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 7) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound4635 hH))).trans (reductionSound7137 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 7), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 7)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 7) ≤ 6; decide +kernel)) = canonicalInput12321.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 7) =
      Integer.Sparse.eval reductionProjection2069 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 7), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 7)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 7) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound12321 hH))).trans (reductionSound2069 hH)
  have hw : 450 * CornerPairs.weight 4 * CornerPairs.weight 7 =
      (9 : ℝ) / 8 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild4_7Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild4_8Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection3151)
    (Integer.Sparse.scale (9) reductionProjection2045)

theorem targetCornerChild4_8 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 4 8 =
      Integer.Sparse.eval targetCornerChild4_8Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 8), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 8)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 8) ≤ 6; decide +kernel)) = canonicalInput18545.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 4 8) =
      Integer.Sparse.eval reductionProjection3151 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 8), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 8)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 8) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound18545 hH))).trans (reductionSound3151 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 8), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 8)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 8) ≤ 6; decide +kernel)) = canonicalInput881.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 8) =
      Integer.Sparse.eval reductionProjection2045 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 8), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 8)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 8) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound881 hH))).trans (reductionSound2045 hH)
  have hw : 450 * CornerPairs.weight 4 * CornerPairs.weight 8 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild4_8Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild4_9Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection904)
    (Integer.Sparse.scale (9) reductionProjection2071)

theorem targetCornerChild4_9 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 4 9 =
      Integer.Sparse.eval targetCornerChild4_9Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 9), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 9)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 9) ≤ 6; decide +kernel)) = canonicalInput5781.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 4 9) =
      Integer.Sparse.eval reductionProjection904 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 9), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 9)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 9) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound5781 hH))).trans (reductionSound904 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 9), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 9)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 9) ≤ 6; decide +kernel)) = canonicalInput12313.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 9) =
      Integer.Sparse.eval reductionProjection2071 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 9), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 9)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 9) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound12313 hH))).trans (reductionSound2071 hH)
  have hw : 450 * CornerPairs.weight 4 * CornerPairs.weight 9 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild4_9Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild4_10Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection7137)
    (Integer.Sparse.scale (9) reductionProjection2069)

theorem targetCornerChild4_10 {H : CMatrix} (hH : IsHadamard H) :
    (8 : ℝ) * targetCornerTerm H 4 10 =
      Integer.Sparse.eval targetCornerChild4_10Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 10), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 10)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 10) ≤ 6; decide +kernel)) = canonicalInput9979.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 4 10) =
      Integer.Sparse.eval reductionProjection7137 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 10), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 10)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 10) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound9979 hH))).trans (reductionSound7137 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 10), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 10)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 10) ≤ 6; decide +kernel)) = canonicalInput11787.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 10) =
      Integer.Sparse.eval reductionProjection2069 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 10), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 10)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 10) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound11787 hH))).trans (reductionSound2069 hH)
  have hw : 450 * CornerPairs.weight 4 * CornerPairs.weight 10 =
      (9 : ℝ) / 8 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild4_10Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild4_11Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection3151)
    (Integer.Sparse.scale (9) reductionProjection2045)

theorem targetCornerChild4_11 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 4 11 =
      Integer.Sparse.eval targetCornerChild4_11Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 11), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 11)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 11) ≤ 6; decide +kernel)) = canonicalInput22806.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 4 11) =
      Integer.Sparse.eval reductionProjection3151 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 11), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 11)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 11) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound22806 hH))).trans (reductionSound3151 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 11), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 11)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 11) ≤ 6; decide +kernel)) = canonicalInput802.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 11) =
      Integer.Sparse.eval reductionProjection2045 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 11), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 11)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 11) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound802 hH))).trans (reductionSound2045 hH)
  have hw : 450 * CornerPairs.weight 4 * CornerPairs.weight 11 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild4_11Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild4_12Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection904)
    (Integer.Sparse.scale (9) reductionProjection2071)

theorem targetCornerChild4_12 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 4 12 =
      Integer.Sparse.eval targetCornerChild4_12Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 12), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 12)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 12) ≤ 6; decide +kernel)) = canonicalInput12081.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 4 12) =
      Integer.Sparse.eval reductionProjection904 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 12), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 12)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 12) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound12081 hH))).trans (reductionSound904 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 12), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 12)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 12) ≤ 6; decide +kernel)) = canonicalInput9624.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 12) =
      Integer.Sparse.eval reductionProjection2071 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 12), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 12)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 12) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound9624 hH))).trans (reductionSound2071 hH)
  have hw : 450 * CornerPairs.weight 4 * CornerPairs.weight 12 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild4_12Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild4_13Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection7137)
    (Integer.Sparse.scale (9) reductionProjection2069)

theorem targetCornerChild4_13 {H : CMatrix} (hH : IsHadamard H) :
    (8 : ℝ) * targetCornerTerm H 4 13 =
      Integer.Sparse.eval targetCornerChild4_13Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 13), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 13)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 13) ≤ 6; decide +kernel)) = canonicalInput23324.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 4 13) =
      Integer.Sparse.eval reductionProjection7137 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 13), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 13)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 13) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound23324 hH))).trans (reductionSound7137 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 13), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 13)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 13) ≤ 6; decide +kernel)) = canonicalInput709.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 13) =
      Integer.Sparse.eval reductionProjection2069 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 13), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 13)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 13) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound709 hH))).trans (reductionSound2069 hH)
  have hw : 450 * CornerPairs.weight 4 * CornerPairs.weight 13 =
      (9 : ℝ) / 8 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild4_13Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild4_14Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection904)
    (Integer.Sparse.scale (9) reductionProjection2071)

theorem targetCornerChild4_14 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 4 14 =
      Integer.Sparse.eval targetCornerChild4_14Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 14), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 14)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 14) ≤ 6; decide +kernel)) = canonicalInput23774.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 4 14) =
      Integer.Sparse.eval reductionProjection904 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 14), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 14)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 14) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound23774 hH))).trans (reductionSound904 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 14), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 14)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 14) ≤ 6; decide +kernel)) = canonicalInput546.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 14) =
      Integer.Sparse.eval reductionProjection2071 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 14), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 14)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 14) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound546 hH))).trans (reductionSound2071 hH)
  have hw : 450 * CornerPairs.weight 4 * CornerPairs.weight 14 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild4_14Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild4_15Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection904)
    (Integer.Sparse.scale (9) reductionProjection2071)

theorem targetCornerChild4_15 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 4 15 =
      Integer.Sparse.eval targetCornerChild4_15Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 15), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 15)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 15) ≤ 6; decide +kernel)) = canonicalInput23437.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 4 15) =
      Integer.Sparse.eval reductionProjection904 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 15), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 15)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 15) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound23437 hH))).trans (reductionSound904 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 15), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 15)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 15) ≤ 6; decide +kernel)) = canonicalInput647.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 15) =
      Integer.Sparse.eval reductionProjection2071 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 15), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 15)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 15) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound647 hH))).trans (reductionSound2071 hH)
  have hw : 450 * CornerPairs.weight 4 * CornerPairs.weight 15 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild4_15Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild4_16Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection3151)
    (Integer.Sparse.scale (9) reductionProjection2045)

theorem targetCornerChild4_16 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 4 16 =
      Integer.Sparse.eval targetCornerChild4_16Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 16), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 16)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 16) ≤ 6; decide +kernel)) = canonicalInput18544.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 4 16) =
      Integer.Sparse.eval reductionProjection3151 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 16), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 16)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 16) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound18544 hH))).trans (reductionSound3151 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 16), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 16)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 16) ≤ 6; decide +kernel)) = canonicalInput882.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 16) =
      Integer.Sparse.eval reductionProjection2045 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 16), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 16)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 16) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound882 hH))).trans (reductionSound2045 hH)
  have hw : 450 * CornerPairs.weight 4 * CornerPairs.weight 16 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild4_16Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild4_17Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (3) reductionProjection2692)
    (Integer.Sparse.scale (3) reductionProjection389)

theorem targetCornerChild4_17 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 4 17 =
      Integer.Sparse.eval targetCornerChild4_17Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 17), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 17)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 17) ≤ 6; decide +kernel)) = canonicalInput18944.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 4 17) =
      Integer.Sparse.eval reductionProjection2692 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 17), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 17)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 17) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound18944 hH))).trans (reductionSound2692 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 17), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 17)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 17) ≤ 6; decide +kernel)) = canonicalInput864.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 17) =
      Integer.Sparse.eval reductionProjection389 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 17), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 17)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 17) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound864 hH))).trans (reductionSound389 hH)
  have hw : 450 * CornerPairs.weight 4 * CornerPairs.weight 17 =
      (3 : ℝ) / 16 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((1 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild4_17Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerChild4_18Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection3151)
    (Integer.Sparse.scale (9) reductionProjection2045)

theorem targetCornerChild4_18 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 4 18 =
      Integer.Sparse.eval targetCornerChild4_18Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 18), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 18)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 18) ≤ 6; decide +kernel)) = canonicalInput22805.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 4 18) =
      Integer.Sparse.eval reductionProjection3151 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 18), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 18)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 18) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound22805 hH))).trans (reductionSound3151 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 18), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 18)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 18) ≤ 6; decide +kernel)) = canonicalInput803.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 18) =
      Integer.Sparse.eval reductionProjection2045 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 18), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 18)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 18) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound803 hH))).trans (reductionSound2045 hH)
  have hw : 450 * CornerPairs.weight 4 * CornerPairs.weight 18 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild4_18Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild4_19Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (3) reductionProjection2692)
    (Integer.Sparse.scale (3) reductionProjection389)

theorem targetCornerChild4_19 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 4 19 =
      Integer.Sparse.eval targetCornerChild4_19Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 19), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 19)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 19) ≤ 6; decide +kernel)) = canonicalInput23625.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 4 19) =
      Integer.Sparse.eval reductionProjection2692 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 19), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 19)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 19) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound23625 hH))).trans (reductionSound2692 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 19), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 19)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 19) ≤ 6; decide +kernel)) = canonicalInput625.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 19) =
      Integer.Sparse.eval reductionProjection389 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 19), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 19)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 19) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound625 hH))).trans (reductionSound389 hH)
  have hw : 450 * CornerPairs.weight 4 * CornerPairs.weight 19 =
      (3 : ℝ) / 16 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((1 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild4_19Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerChild4_20Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection895)
    (Integer.Sparse.scale (9) reductionProjection4867)

theorem targetCornerChild4_20 {H : CMatrix} (hH : IsHadamard H) :
    (8 : ℝ) * targetCornerTerm H 4 20 =
      Integer.Sparse.eval targetCornerChild4_20Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 20), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 20)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 20) ≤ 6; decide +kernel)) = canonicalInput12218.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 4 20) =
      Integer.Sparse.eval reductionProjection895 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 20), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 20)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 20) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound12218 hH))).trans (reductionSound895 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 20), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 20)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 20) ≤ 6; decide +kernel)) = canonicalInput9244.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 20) =
      Integer.Sparse.eval reductionProjection4867 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 20), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 20)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 20) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound9244 hH))).trans (reductionSound4867 hH)
  have hw : 450 * CornerPairs.weight 4 * CornerPairs.weight 20 =
      (9 : ℝ) / 8 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild4_20Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild4_21Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection904)
    (Integer.Sparse.scale (9) reductionProjection2071)

theorem targetCornerChild4_21 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 4 21 =
      Integer.Sparse.eval targetCornerChild4_21Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 21), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 21)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 21) ≤ 6; decide +kernel)) = canonicalInput23775.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 4 21) =
      Integer.Sparse.eval reductionProjection904 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 21), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 21)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 21) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound23775 hH))).trans (reductionSound904 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 21), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 21)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 21) ≤ 6; decide +kernel)) = canonicalInput545.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 21) =
      Integer.Sparse.eval reductionProjection2071 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 21), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 21)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 21) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound545 hH))).trans (reductionSound2071 hH)
  have hw : 450 * CornerPairs.weight 4 * CornerPairs.weight 21 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild4_21Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild4_22Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection901)
    (Integer.Sparse.scale (9) reductionProjection3671)

theorem targetCornerChild4_22 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 4 22 =
      Integer.Sparse.eval targetCornerChild4_22Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 22), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 22)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 22) ≤ 6; decide +kernel)) = canonicalInput12267.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 4 22) =
      Integer.Sparse.eval reductionProjection901 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 22), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 22)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 22) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound12267 hH))).trans (reductionSound901 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 22), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 22)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 22) ≤ 6; decide +kernel)) = canonicalInput8079.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 22) =
      Integer.Sparse.eval reductionProjection3671 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 22), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 22)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 22) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound8079 hH))).trans (reductionSound3671 hH)
  have hw : 450 * CornerPairs.weight 4 * CornerPairs.weight 22 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild4_22Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild4_23Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (720) reductionProjection912)
    (Integer.Sparse.scale (1) reductionProjection3591)

theorem targetCornerChild4_23 {H : CMatrix} (hH : IsHadamard H) :
    (1280 : ℝ) * targetCornerTerm H 4 23 =
      Integer.Sparse.eval targetCornerChild4_23Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 23), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 23)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel)) = canonicalInput103.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 4 23) =
      Integer.Sparse.eval reductionProjection912 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 23), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 23)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound103 hH))).trans (reductionSound912 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 23), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 23)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel)) = canonicalInput31769.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (720 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 23) =
      Integer.Sparse.eval reductionProjection3591 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 23), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 23)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 23) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound31769 hH))).trans (reductionSound3591 hH)
  have hw : 450 * CornerPairs.weight 4 * CornerPairs.weight 23 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild4_23Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (720 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetCornerChild4_24Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (3) reductionProjection64)
    (Integer.Sparse.scale (3) oldProjection276)

theorem targetCornerChild4_24 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 4 24 =
      Integer.Sparse.eval targetCornerChild4_24Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 24), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 24)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel)) = canonicalInput160.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 4 24) =
      Integer.Sparse.eval reductionProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 24), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 24)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound160 hH))).trans (reductionSound64 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 24), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 24)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel)) = canonicalInput30897.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 24) =
      Integer.Sparse.eval oldProjection276 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 24), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 24)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 24) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound30897 hH))).trans (oldProjectionSound276 hH)
  have hw : 450 * CornerPairs.weight 4 * CornerPairs.weight 24 =
      (3 : ℝ) / 16 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((1 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild4_24Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerChild4_25Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection904)
    (Integer.Sparse.scale (9) reductionProjection2071)

theorem targetCornerChild4_25 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 4 25 =
      Integer.Sparse.eval targetCornerChild4_25Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 25), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 25)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 25) ≤ 6; decide +kernel)) = canonicalInput12080.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 4 25) =
      Integer.Sparse.eval reductionProjection904 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 25), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 25)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 25) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound12080 hH))).trans (reductionSound904 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 25), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 25)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 25) ≤ 6; decide +kernel)) = canonicalInput9625.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 25) =
      Integer.Sparse.eval reductionProjection2071 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 25), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 25)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 25) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound9625 hH))).trans (reductionSound2071 hH)
  have hw : 450 * CornerPairs.weight 4 * CornerPairs.weight 25 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild4_25Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild4_26Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (3) reductionProjection2692)
    (Integer.Sparse.scale (3) reductionProjection389)

theorem targetCornerChild4_26 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 4 26 =
      Integer.Sparse.eval targetCornerChild4_26Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 26), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 26)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 26) ≤ 6; decide +kernel)) = canonicalInput23626.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 4 26) =
      Integer.Sparse.eval reductionProjection2692 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 26), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 26)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 26) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound23626 hH))).trans (reductionSound2692 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 26), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 26)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 26) ≤ 6; decide +kernel)) = canonicalInput624.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 26) =
      Integer.Sparse.eval reductionProjection389 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 26), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 26)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 26) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound624 hH))).trans (reductionSound389 hH)
  have hw : 450 * CornerPairs.weight 4 * CornerPairs.weight 26 =
      (3 : ℝ) / 16 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((1 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild4_26Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerChild4_27Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection895)
    (Integer.Sparse.scale (9) reductionProjection4867)

theorem targetCornerChild4_27 {H : CMatrix} (hH : IsHadamard H) :
    (8 : ℝ) * targetCornerTerm H 4 27 =
      Integer.Sparse.eval targetCornerChild4_27Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 27), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 27)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 27) ≤ 6; decide +kernel)) = canonicalInput11549.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 4 27) =
      Integer.Sparse.eval reductionProjection895 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 27), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 27)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 27) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound11549 hH))).trans (reductionSound895 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 27), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 27)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 27) ≤ 6; decide +kernel)) = canonicalInput10859.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 27) =
      Integer.Sparse.eval reductionProjection4867 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 27), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 27)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 27) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound10859 hH))).trans (reductionSound4867 hH)
  have hw : 450 * CornerPairs.weight 4 * CornerPairs.weight 27 =
      (9 : ℝ) / 8 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((6 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild4_27Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild4_28Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection904)
    (Integer.Sparse.scale (9) reductionProjection2071)

theorem targetCornerChild4_28 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 4 28 =
      Integer.Sparse.eval targetCornerChild4_28Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 28), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 28)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel)) = canonicalInput23438.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 4 28) =
      Integer.Sparse.eval reductionProjection904 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 28), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 28)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound23438 hH))).trans (reductionSound904 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 28), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 28)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel)) = canonicalInput646.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 28) =
      Integer.Sparse.eval reductionProjection2071 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 28), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 28)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 28) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound646 hH))).trans (reductionSound2071 hH)
  have hw : 450 * CornerPairs.weight 4 * CornerPairs.weight 28 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild4_28Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild4_29Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection901)
    (Integer.Sparse.scale (9) reductionProjection3671)

theorem targetCornerChild4_29 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 4 29 =
      Integer.Sparse.eval targetCornerChild4_29Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 29), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 29)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 29) ≤ 6; decide +kernel)) = canonicalInput12268.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 4 29) =
      Integer.Sparse.eval reductionProjection901 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 29), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 29)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 29) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound12268 hH))).trans (reductionSound901 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 29), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 29)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 29) ≤ 6; decide +kernel)) = canonicalInput8078.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 29) =
      Integer.Sparse.eval reductionProjection3671 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 29), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 29)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 29) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound8078 hH))).trans (reductionSound3671 hH)
  have hw : 450 * CornerPairs.weight 4 * CornerPairs.weight 29 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild4_29Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild4_30Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (720) reductionProjection912)
    (Integer.Sparse.scale (1) reductionProjection3591)

theorem targetCornerChild4_30 {H : CMatrix} (hH : IsHadamard H) :
    (1280 : ℝ) * targetCornerTerm H 4 30 =
      Integer.Sparse.eval targetCornerChild4_30Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 30), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 30)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 30) ≤ 6; decide +kernel)) = canonicalInput58.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 4 30) =
      Integer.Sparse.eval reductionProjection912 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 30), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 30)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 30) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound58 hH))).trans (reductionSound912 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 30), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 30)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 30) ≤ 6; decide +kernel)) = canonicalInput32750.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (720 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 30) =
      Integer.Sparse.eval reductionProjection3591 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 30), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 30)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 30) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound32750 hH))).trans (reductionSound3591 hH)
  have hw : 450 * CornerPairs.weight 4 * CornerPairs.weight 30 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild4_30Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (720 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetCornerChild4_31Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (3) reductionProjection64)
    (Integer.Sparse.scale (3) oldProjection276)

theorem targetCornerChild4_31 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 4 31 =
      Integer.Sparse.eval targetCornerChild4_31Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 31), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 31)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 31) ≤ 6; decide +kernel)) = canonicalInput161.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 4 31) =
      Integer.Sparse.eval reductionProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 31), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 31)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 31) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound161 hH))).trans (reductionSound64 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 31), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 31)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 31) ≤ 6; decide +kernel)) = canonicalInput30896.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 31) =
      Integer.Sparse.eval oldProjection276 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 31), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 31)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 31) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound30896 hH))).trans (oldProjectionSound276 hH)
  have hw : 450 * CornerPairs.weight 4 * CornerPairs.weight 31 =
      (3 : ℝ) / 16 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((1 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild4_31Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerChild4_32Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) reductionProjection904)
    (Integer.Sparse.scale (9) reductionProjection2071)

theorem targetCornerChild4_32 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 4 32 =
      Integer.Sparse.eval targetCornerChild4_32Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 32), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 32)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 32) ≤ 6; decide +kernel)) = canonicalInput5780.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 4 32) =
      Integer.Sparse.eval reductionProjection904 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 32), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 32)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 32) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound5780 hH))).trans (reductionSound904 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 32), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 32)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 32) ≤ 6; decide +kernel)) = canonicalInput12314.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 32) =
      Integer.Sparse.eval reductionProjection2071 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 32), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 32)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 32) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound12314 hH))).trans (reductionSound2071 hH)
  have hw : 450 * CornerPairs.weight 4 * CornerPairs.weight 32 =
      (9 : ℝ) / 16 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((3 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild4_32Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (9 : ℝ) * hh1

def targetCornerChild4_33Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (3) reductionProjection2692)
    (Integer.Sparse.scale (3) reductionProjection389)

theorem targetCornerChild4_33 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetCornerTerm H 4 33 =
      Integer.Sparse.eval targetCornerChild4_33Projection (Normalization.momentVector H) := by
  have he0 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 33), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 33)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 33) ≤ 6; decide +kernel)) = canonicalInput18945.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent 4 33) =
      Integer.Sparse.eval reductionProjection2692 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 33), (CornerPairs.overlapExponent cubicExponent cubicExponent 4 33)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 33) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0)).trans (canonicalSound18945 hH))).trans (reductionSound2692 hH)
  have he1 : (tailPad6 (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 33), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 33)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 33) ≤ 6; decide +kernel)) = canonicalInput863.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 33) =
      Integer.Sparse.eval reductionProjection389 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((((tailPad6_moment (⟨(CornerPairs.blocks 4), (CornerPairs.blocks 33), (CornerPairs.overlapExponent cubicExponent (-cubicExponent) 4 33)⟩ : ExponentCode) (by change (CornerPairs.blocks 4) ≤ 6; decide +kernel) (by change (CornerPairs.blocks 33) ≤ 6; decide +kernel) H).symm).trans (congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1)).trans (canonicalSound863 hH))).trans (reductionSound389 hH)
  have hw : 450 * CornerPairs.weight 4 * CornerPairs.weight 33 =
      (3 : ℝ) / 16 := by
    change (450 : ℝ) * (((6 : ℕ) : ℝ) / 120) * (((1 : ℕ) : ℝ) / 120) = _
    norm_num
  rw [targetCornerTerm, hw]
  rw [targetCornerChild4_33Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetCornerRow4Projection : Integer.Sparse (Fin 1613) := [(0, 13), (14, 480), (81, -480), (87, -240), (94, 60), (145, 8640), (169, 2880), (214, 1440), (228, -240), (269, 7200), (287, 1440), (362, 2880), (366, 2880), (367, 2880), (379, 2880), (425, 5760), (426, 7920), (516, 2880), (523, 2880), (602, 5040), (635, 1440), (636, 1440), (638, 3600), (655, 8640), (666, 3600), (667, -1440), (697, -480), (698, 5520), (827, 1440), (828, 7200), (831, 1440), (848, -8640), (849, -1440), (850, -1440), (853, -1440), (854, -1440), (857, -1440), (859, -1440), (865, 720), (874, -1440), (875, -1440), (888, -1440), (890, 5760), (943, -2880), (947, 2880), (948, 2880), (955, 720), (956, 720), (978, 2880), (1007, 5760), (1015, 1440), (1016, 1440), (1026, 720), (1027, 720), (1050, -240), (1055, -240), (1058, -960), (1059, 640), (1210, 960), (1212, 1920), (1219, -480), (1220, 960), (1221, -240), (1223, -480), (1226, 2560), (1227, 1120), (1251, -745), (1272, 1440), (1389, 960)]

theorem targetCornerRow4 {H : CMatrix} (hH : IsHadamard H) :
    (1280 : ℝ) * (∑ i : Fin 34, (targetCornerTerm H 4) i) =
      Integer.Sparse.eval targetCornerRow4Projection (Normalization.momentVector H) := by
  have hc : ∀ i : Fin 34, ((![1280, 8, 8, 8, 8, 1280, 1280, 8, 16, 16, 8, 16, 16, 8, 16, 16, 16, 16, 16, 16, 8, 16, 16, 1280, 16, 16, 16, 8, 16, 16, 1280, 16, 16, 16] : Fin 34 → ℤ) i : ℝ) * ((targetCornerTerm H 4) i) =
      Integer.Sparse.eval (![targetCornerChild4_0Projection, targetCornerChild4_1Projection, targetCornerChild4_2Projection, targetCornerChild4_3Projection, targetCornerChild4_4Projection, targetCornerChild4_5Projection, targetCornerChild4_6Projection, targetCornerChild4_7Projection, targetCornerChild4_8Projection, targetCornerChild4_9Projection, targetCornerChild4_10Projection, targetCornerChild4_11Projection, targetCornerChild4_12Projection, targetCornerChild4_13Projection, targetCornerChild4_14Projection, targetCornerChild4_15Projection, targetCornerChild4_16Projection, targetCornerChild4_17Projection, targetCornerChild4_18Projection, targetCornerChild4_19Projection, targetCornerChild4_20Projection, targetCornerChild4_21Projection, targetCornerChild4_22Projection, targetCornerChild4_23Projection, targetCornerChild4_24Projection, targetCornerChild4_25Projection, targetCornerChild4_26Projection, targetCornerChild4_27Projection, targetCornerChild4_28Projection, targetCornerChild4_29Projection, targetCornerChild4_30Projection, targetCornerChild4_31Projection, targetCornerChild4_32Projection, targetCornerChild4_33Projection] i) (Normalization.momentVector H) := by
    intro i
    fin_cases i
    · exact targetCornerChild4_0 hH
    · exact targetCornerChild4_1 hH
    · exact targetCornerChild4_2 hH
    · exact targetCornerChild4_3 hH
    · exact targetCornerChild4_4 hH
    · exact targetCornerChild4_5 hH
    · exact targetCornerChild4_6 hH
    · exact targetCornerChild4_7 hH
    · exact targetCornerChild4_8 hH
    · exact targetCornerChild4_9 hH
    · exact targetCornerChild4_10 hH
    · exact targetCornerChild4_11 hH
    · exact targetCornerChild4_12 hH
    · exact targetCornerChild4_13 hH
    · exact targetCornerChild4_14 hH
    · exact targetCornerChild4_15 hH
    · exact targetCornerChild4_16 hH
    · exact targetCornerChild4_17 hH
    · exact targetCornerChild4_18 hH
    · exact targetCornerChild4_19 hH
    · exact targetCornerChild4_20 hH
    · exact targetCornerChild4_21 hH
    · exact targetCornerChild4_22 hH
    · exact targetCornerChild4_23 hH
    · exact targetCornerChild4_24 hH
    · exact targetCornerChild4_25 hH
    · exact targetCornerChild4_26 hH
    · exact targetCornerChild4_27 hH
    · exact targetCornerChild4_28 hH
    · exact targetCornerChild4_29 hH
    · exact targetCornerChild4_30 hH
    · exact targetCornerChild4_31 hH
    · exact targetCornerChild4_32 hH
    · exact targetCornerChild4_33 hH
  exact integer_projection (Normalization.momentVector H) (∑ i, (targetCornerTerm H 4) i) (targetCornerTerm H 4)
    (-1) 1280 1280 (-1) ![1280, 8, 8, 8, 8, 1280, 1280, 8, 16, 16, 8, 16, 16, 8, 16, 16, 16, 16, 16, 16, 8, 16, 16, 1280, 16, 16, 16, 8, 16, 16, 1280, 16, 16, 16] ![1, 160, 160, 160, 160, 1, 1, 160, 80, 80, 160, 80, 80, 160, 80, 80, 80, 80, 80, 80, 160, 80, 80, 1, 80, 80, 80, 160, 80, 80, 1, 80, 80, 80] targetCornerRow4Projection ![targetCornerChild4_0Projection, targetCornerChild4_1Projection, targetCornerChild4_2Projection, targetCornerChild4_3Projection, targetCornerChild4_4Projection, targetCornerChild4_5Projection, targetCornerChild4_6Projection, targetCornerChild4_7Projection, targetCornerChild4_8Projection, targetCornerChild4_9Projection, targetCornerChild4_10Projection, targetCornerChild4_11Projection, targetCornerChild4_12Projection, targetCornerChild4_13Projection, targetCornerChild4_14Projection, targetCornerChild4_15Projection, targetCornerChild4_16Projection, targetCornerChild4_17Projection, targetCornerChild4_18Projection, targetCornerChild4_19Projection, targetCornerChild4_20Projection, targetCornerChild4_21Projection, targetCornerChild4_22Projection, targetCornerChild4_23Projection, targetCornerChild4_24Projection, targetCornerChild4_25Projection, targetCornerChild4_26Projection, targetCornerChild4_27Projection, targetCornerChild4_28Projection, targetCornerChild4_29Projection, targetCornerChild4_30Projection, targetCornerChild4_31Projection, targetCornerChild4_32Projection, targetCornerChild4_33Projection]
    (by decide +kernel) (by decide +kernel)
    (by intro i; fin_cases i <;> decide +kernel) (by ring) hc (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
