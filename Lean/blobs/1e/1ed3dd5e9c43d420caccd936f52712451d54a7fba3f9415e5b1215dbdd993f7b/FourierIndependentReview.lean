import FourierEndpoint
import Worker12.BoundaryTargets

set_option autoImplicit false
set_option maxHeartbeats 1000000

namespace FourierIndependentReview20261003
open Mub6 Mub6.Numerical Mub6.Numerical.GraphKernel
open FourierExactCarrier20261003
noncomputable section

theorem omega_squared : omega ^ 2 = star omega := by
  have hs := Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 3)
  apply Complex.ext <;>
    simp [omega, pow_two, Complex.mul_re, Complex.mul_im] <;> nlinarith

theorem omega_cubed : omega ^ 3 = 1 := by
  calc
    omega ^ 3 = (omega - 1) * (omega ^ 2 + omega + 1) + 1 := by ring
    _ = 1 := by rw [primitive.2]; ring

theorem omega_ne_one : omega ≠ 1 := by
  intro h
  have hr := congrArg Complex.re h
  norm_num [omega] at hr

theorem primitive_target : Worker12.PrimitiveCubicPhase omega := primitive

def tensorIndex (a : Fin 2) (b : Fin 3) : Fin 6 :=
  ⟨3 * a.val + b.val, by omega⟩

/-- This is the full six-index order, with no omitted rows or columns. -/
theorem tensor_index_unique : ∀ i : Fin 6,
    ∃! p : Fin 2 × Fin 3, tensorIndex p.1 p.2 = i := by
  simp only [ExistsUnique]
  decide +kernel

/-- Literal F₂ ⊗ F₃ entry formula in the exporter's row and column order. -/
theorem tensor_entries (a c : Fin 2) (b d : Fin 3) :
    matrix (tensorIndex a b) (tensorIndex c d) =
      (-1 : ℂ) ^ (a.val * c.val) * omega ^ (b.val * d.val) := by
  have h4 : omega ^ 4 = omega := by
    rw [show (4 : ℕ) = 3 + 1 from rfl, pow_succ, omega_cubed, one_mul]
  fin_cases a <;> fin_cases c <;> fin_cases b <;> fin_cases d <;>
    norm_num [tensorIndex, matrix, omega_squared, h4]

/-- The exact fixed member of the existing family interface, with p=q=1. -/
theorem equals_worker12_exact : matrix = Worker12.fourierPhase omega 1 1 := by
  funext i j
  obtain ⟨i,rfl⟩ := Worker12.splitIndex.surjective i
  obtain ⟨j,rfl⟩ := Worker12.splitIndex.surjective j
  simp only [Worker12.fourierPhase, Worker12.unsplitMatrix, Equiv.symm_apply_apply]
  rcases i with i | i <;> rcases j with j | j <;> fin_cases i <;> fin_cases j <;>
    norm_num [matrix, Worker12.fourierPhase, Worker12.fourier3,
      Worker12.phaseVector, Worker12.unsplitMatrix, Worker12.splitIndex,
      finSumFinEquiv, Matrix.fromBlocks, Matrix.neg_apply, Pi.neg_apply,
      Fin.castAdd, Fin.addNat, omega_squared]
  all_goals first | rfl | (change _ = -((1 : ℂ) * _); simp only [one_mul]; rfl)

/-- Check the actual imported physical definition, including the dimension,
normalization, every basis, and every pair of distinct bases. -/
theorem physical_quartet_definition (B : Fin 4 → BasisMatrix) :
    IsMUBQuartet B ↔
      ((∀ a : Fin 4, ∀ i j : Fin 6,
        (∑ r : Fin 6, star (B a r i) * B a r j) = if i = j then 1 else 0) ∧
      ∀ a b : Fin 4, a ≠ b → ∀ i j : Fin 6,
        Complex.normSq (∑ r : Fin 6, star (B a r i) * B b r j) = (1 : ℝ) / 6) :=
  Iff.rfl

/-- An actual occurrence supplies two five-ray frames without a cover premise.
All four bases remain present through the standard-pair rebase. -/
theorem occurrence_supplies_five_pair {H : BasisMatrix}
    (hrow : ∀ j, H 0 j = 1)
    (ho : OccursAsQuartetEdge (phaseScale (Real.sqrt 6)⁻¹ H)) :
    ∃ z w : Fin 5 → Vector, IsRawFivePair H z w := by
  obtain ⟨B,hB,a,b,hab,ha,hb⟩ :=
    (occursAsQuartetEdge_iff_extendsStandardPair _).mp ho
  obtain ⟨c,d,hac,had,hbc,hbd,hcd⟩ := FourierPilot.remaining_basis_indices a b hab
  have hfB := FourierPilot.identity_unbiased_flat (ha ▸ hB.2 a b hab)
  have hfC := FourierPilot.identity_unbiased_flat (ha ▸ hB.2 a c hac)
  have hfD := FourierPilot.identity_unbiased_flat (ha ▸ hB.2 a d had)
  have hraw : rawCarrierOfFlatBasis (B b) = H := by
    rw [hb]
    exact FourierPilot.raw_of_scaled hrow
  refine ⟨firstFiveRays (B c), firstFiveRays (B d), ?_⟩
  rw [← hraw]
  exact normalized_flat_pair_gives_raw_pair (hB.1 c) (hB.1 d) hfB hfC hfD
    (hB.2 b c hbc) (hB.2 b d hbd) (hB.2 c d hcd)

/-- Full quantifiers of the only remaining research premise. -/
theorem cover_is_full_ray_quantification : FourierEndpoint20261003.CoverObligation ↔
    ∀ H : BasisMatrix, PhaseHadamard H →
      CarrierBox FourierPilotCircleData.physicalCarrier H →
      ∀ z : Vector, IsRawCommonRay H z →
        ∃ v : Fin 48, MemRawRayBox (FourierPilotCircleData.boxes v) z := Iff.rfl

/-- Injective labels and disjoint frame labels follow from the small-box
capacity theorem; they are not assumptions on the catalogue. -/
theorem arbitrary_covered_frames_force_graph_pair {H : BasisMatrix}
    (hcover : CompleteRayCover H FourierPilot.boxes)
    {z w : Fin 5 → Vector} (hp : IsRawFivePair H z w) :
    HasPair FourierPilot.O FourierPilot.U Finset.univ Finset.univ 5 :=
  raw_five_pair_has_graph_pair hcover FourierPilot.boxes_small
    FourierPilot.sound_stored_graph hp

/-- Literal physical endpoint, explicitly conditional on all-ray coverage. -/
theorem quartet_cannot_contain_exact_if_cover
    (hcover : FourierEndpoint20261003.CoverObligation)
    (B : Fin 4 → BasisMatrix) (hB : IsMUBQuartet B)
    (a b : Fin 4) (hab : a ≠ b) :
    overlap (B a) (B b) ≠ phaseScale (Real.sqrt 6)⁻¹ matrix := by
  intro hedge
  exact FourierEndpoint20261003.exact_exclusion_of_cover hcover
    ⟨B,hB,a,b,hab,hedge⟩

theorem exact_family_member_excluded_if_cover
    (hcover : FourierEndpoint20261003.CoverObligation) :
    ¬ OccursAsQuartetEdge (Worker12.physicalNormalize
      (Worker12.fourierPhase omega 1 1)) := by
  rw [← equals_worker12_exact]
  simpa [Worker12.physicalNormalize, one_div, FourierEndpoint20261003.normalized] using
    FourierEndpoint20261003.exact_exclusion_of_cover hcover

theorem conjugate_excluded_if_cover
    (hcover : FourierEndpoint20261003.CoverObligation) :
    ¬ OccursAsQuartetEdge (conjugateBasis (phaseScale (Real.sqrt 6)⁻¹ matrix)) :=
  FourierEndpoint20261003.conjugate_exclusion_of_cover hcover

theorem monomial_class_excluded_if_cover
    (hcover : FourierEndpoint20261003.CoverObligation)
    {H : BasisMatrix} (hH : MonomialEquivalent H matrix) :
    ¬ OccursAsQuartetEdge (phaseScale (Real.sqrt 6)⁻¹ H) :=
  FourierEndpoint20261003.monomial_class_exclusion_of_cover hcover hH

end

#print axioms omega_squared
#print axioms omega_cubed
#print axioms omega_ne_one
#print axioms primitive_target
#print axioms tensor_index_unique
#print axioms tensor_entries
#print axioms equals_worker12_exact
#print axioms physical_quartet_definition
#print axioms occurrence_supplies_five_pair
#print axioms cover_is_full_ray_quantification
#print axioms arbitrary_covered_frames_force_graph_pair
#print axioms quartet_cannot_contain_exact_if_cover
#print axioms exact_family_member_excluded_if_cover
#print axioms conjugate_excluded_if_cover
#print axioms monomial_class_excluded_if_cover

end FourierIndependentReview20261003
