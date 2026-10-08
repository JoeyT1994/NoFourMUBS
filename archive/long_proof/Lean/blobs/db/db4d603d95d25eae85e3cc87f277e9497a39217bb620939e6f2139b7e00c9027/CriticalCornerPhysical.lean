import CriticalMomentBinding
import GlobalCornerSelectedColumns

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalPhysical20261003
open Mub6 Mub6.Numerical Mub6.Classification
open CompactCover GoodMinor FourierSeedBinding FourPhase CanonicalCorners GlobalCornerDomain
noncomputable section

def sideP (A : CompactCover.Mat3) : ℝ := momentP (sideS A) (sideT A) (sideR A)
def sideJ (A : CompactCover.Mat3) : ℝ := momentJ (sideS A) (sideT A) (sideR A)
def sideW (A : CompactCover.Mat3) : ℝ := momentW (sideS A) (sideT A) (sideR A)

theorem side_R_score (A : CompactCover.Mat3) :
    CriticalScalarReduction20261003.R (sideP A) (sideJ A) (sideW A) =
      physicalSideScore A := R_binding _ _ _

theorem side_R_complex (A : CompactCover.Mat3) :
    CriticalScalarReduction20261003.R (sideP A) (sideJ A) (sideW A) =
      (ShoulderPhaseGate20261002.radicand (sideS A) (sideT A) (sideR A)).re := by
  rw [side_R_score]
  exact congrArg Complex.re (gram_radicand_complex (sideS A) (sideT A) (sideR A))

theorem side_eta_nonnegative {A : CompactCover.Mat3}
    (hA : ∀ i j, IsPhase (A i j)) :
    0 ≤ FourierGramNumerators.eta (sideS A) (sideT A) (sideR A) :=
  unit_side_eta_nonnegative (A 1 0) (A 1 1) (A 1 2) (A 2 0) (A 2 1) (A 2 2)
    (hA 1 0) (hA 1 1) (hA 1 2) (hA 2 0) (hA 2 1) (hA 2 2)

/-- Literal complementary moments, in the same row-Gram convention as R. -/
theorem normalized_complementary_moments {H : CompactCover.Mat6}
    (hH : NormalizedCarrier H) :
    sideS (northeast H) = -sideS (northwest H) ∧
    sideT (northeast H) = -sideT (northwest H) ∧
    sideR (northeast H) = -sideR (northwest H) := by
  obtain ⟨hs,ht,hr⟩ := normalized_horizontal_moments hH
  rw [hs,ht,hr,normalized_seed hH]
  simp [sideS,sideT,sideR,FourierPhysicalSide.s,FourierPhysicalSide.t,
    FourierPhysicalSide.r,seed,rowS,rowT,rowR]

/-- These closed scalar bounds hold on every normalized physical carrier;
all-criticality and determinant nonvanishing are unnecessary. -/
theorem normalized_scalar_bounds {H : CompactCover.Mat6}
    (hH : NormalizedCarrier H) :
    0 ≤ sideP (northwest H) ∧
      sideP (northwest H)+|sideJ (northwest H)| ≤ 9 := by
  obtain ⟨hs,ht,hr⟩ := normalized_complementary_moments hH
  have he := side_eta_nonnegative (A := northwest H)
    (fun i j => hH.1.1 (front i) (front j))
  have hb := side_eta_nonnegative (A := northeast H)
    (fun i j => hH.1.1 (front i) (back j))
  rw [hs,ht,hr] at hb
  exact ⟨momentP_nonnegative _ _ _, complementary_eta_bound _ _ _ he hb⟩

/-- Every selected raw three-column radicand vanishes in the actual all-critical
branch. This reuses the checked all-corner cap and unit-phase nonnegativity. -/
theorem allCritical_selected_R_zero {H : CompactCover.Mat6} (hH : AllCritical H)
    (c : Fin 3 → Fin 6) (hc : Function.Injective c) :
    CriticalScalarReduction20261003.R
      (sideP (H.submatrix front c)) (sideJ (H.submatrix front c))
      (sideW (H.submatrix front c)) = 0 := by
  have hz := allCritical_globalZero hH
  have hu := globalMax_selected_columns_radicand hz.1 false c hc
  change (ShoulderPhaseGate20261002.radicand (sideS (H.submatrix front c))
    (sideT (H.submatrix front c)) (sideR (H.submatrix front c))).re ≤ score H at hu
  have hl := physical_side_radicand_nonneg (H.submatrix front c)
    (fun i j => hH.1.1.1 (front i) (c j))
  rw [← side_R_complex] at hu hl
  rw [hz.2] at hu
  exact le_antisymm hu hl

/-- The complementary actual corner has the opposite J and unchanged P,W. -/
theorem normalized_complementary_invariants {H : CompactCover.Mat6}
    (hH : NormalizedCarrier H) :
    sideP (northeast H)=sideP (northwest H) ∧
    sideJ (northeast H)=-sideJ (northwest H) ∧
    sideW (northeast H)=sideW (northwest H) := by
  obtain ⟨hs,ht,hr⟩ := normalized_complementary_moments hH
  simp only [sideP,sideJ,sideW,hs,ht,hr,momentP_neg,momentJ_neg,momentW_neg,
    and_self]

/-- Actual all-critical corners supply exactly the scalar premises used by
the critical reduction, retaining J=0, p=9 and all singular boundaries. -/
theorem allCritical_scalar_premises {H : CompactCover.Mat6} (hH : AllCritical H) :
    0 ≤ sideP (northwest H) ∧
    sideP (northwest H)+|sideJ (northwest H)| ≤ 9 ∧
    CriticalScalarReduction20261003.R
      (sideP (northwest H)) (sideJ (northwest H)) (sideW (northwest H))=0 ∧
    CriticalScalarReduction20261003.R
      (sideP (northwest H)) (-sideJ (northwest H)) (sideW (northwest H))=0 := by
  have hb := normalized_scalar_bounds hH.1
  have hf : Function.Injective front := by
    intro a b hab
    exact Fin.ext (congrArg (fun x : Fin 6 => x.val) hab)
  have hplus := allCritical_selected_R_zero hH front hf
  have hminus : CriticalScalarReduction20261003.R
      (sideP (northeast H)) (sideJ (northeast H)) (sideW (northeast H))=0 := by
    rw [side_R_score,← normalized_score_sideScore hH.1]
    exact (allCritical_globalZero hH).2
  obtain ⟨hp,hj,hw⟩ := normalized_complementary_invariants hH.1
  rw [hp,hj,hw] at hminus
  exact ⟨hb.1,hb.2,hplus,hminus⟩

/-- Normalizing another ordered corner retains the full all-critical branch. -/
theorem allCritical_candidate {H : CompactCover.Mat6} (hH : AllCritical H)
    (p q : Perm) : AllCritical (candidate H p q) := by
  refine ⟨candidate_normalized hH.1.1 p q, ?_⟩
  intro r s
  rw [candidate_comp hH.1.1 p q r s]
  exact hH.2 (r.trans p) (s.trans q)

theorem allCritical_candidate_scalar_premises {H : CompactCover.Mat6}
    (hH : AllCritical H) (p q : Perm) :
    let E := northwest (candidate H p q)
    0 ≤ sideP E ∧ sideP E+|sideJ E| ≤ 9 ∧
    CriticalScalarReduction20261003.R (sideP E) (sideJ E) (sideW E)=0 ∧
    CriticalScalarReduction20261003.R (sideP E) (-sideJ E) (sideW E)=0 :=
  allCritical_scalar_premises (allCritical_candidate hH p q)

end
#print axioms side_R_score
#print axioms side_R_complex
#print axioms side_eta_nonnegative
#print axioms normalized_complementary_moments
#print axioms normalized_scalar_bounds
#print axioms allCritical_selected_R_zero
#print axioms normalized_complementary_invariants
#print axioms allCritical_scalar_premises
#print axioms allCritical_candidate
#print axioms allCritical_candidate_scalar_premises
end CriticalPhysical20261003
