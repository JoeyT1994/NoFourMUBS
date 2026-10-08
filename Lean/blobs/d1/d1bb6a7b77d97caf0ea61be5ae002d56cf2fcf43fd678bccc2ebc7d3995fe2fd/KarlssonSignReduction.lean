import KarlssonNumericalInterface
import Hadamard6.H2RawPairSigns

namespace Mub6.Classification.KarlssonCover
open Complex Hadamard6 Mub6.Numerical.CircleCharts
noncomputable section

theorem equal_square_sign {z w : ℂ} (h : z^2=w^2) : z=w ∨ z= -w := by
  have hh : (z-w)*(z+w)=0 := by linear_combination h
  rcases mul_eq_zero.mp hh with hh | hh
  · exact Or.inl (sub_eq_zero.mp hh)
  · exact Or.inr ((eq_neg_iff_add_eq_zero).mpr hh)

/-- All four phase-square-root signs are row/column-pair gauge, with no guards. -/
theorem equal_squares_equivalent (t : ℝ) (p : ℂ) (z w : Fin 4 → ℂ)
    (h : ∀ i, (z i)^2=(w i)^2) :
    Equivalent (karlssonRawMatrix t p (z 0) (z 1) (z 2) (z 3))
      (karlssonRawMatrix t p (w 0) (w 1) (w 2) (w 3)) := by
  have h₀ : Equivalent (karlssonRawMatrix t p (z 0) (z 1) (z 2) (z 3))
      (karlssonRawMatrix t p (w 0) (z 1) (z 2) (z 3)) := by
    rcases equal_square_sign (h 0) with he | he
    · rw [he]; exact equivalent_refl _
    · rw [he]
      simpa using equivalent_karlssonRawMatrix_neg_z₁ t p (-(w 0)) (z 1) (z 2) (z 3)
  have h₁ : Equivalent (karlssonRawMatrix t p (w 0) (z 1) (z 2) (z 3))
      (karlssonRawMatrix t p (w 0) (w 1) (z 2) (z 3)) := by
    rcases equal_square_sign (h 1) with he | he
    · rw [he]; exact equivalent_refl _
    · rw [he]
      simpa using equivalent_karlssonRawMatrix_neg_z₂ t p (w 0) (-(w 1)) (z 2) (z 3)
  have h₂ : Equivalent (karlssonRawMatrix t p (w 0) (w 1) (z 2) (z 3))
      (karlssonRawMatrix t p (w 0) (w 1) (w 2) (z 3)) := by
    rcases equal_square_sign (h 2) with he | he
    · rw [he]; exact equivalent_refl _
    · rw [he]
      simpa using equivalent_karlssonRawMatrix_neg_z₃ t p (w 0) (w 1) (-(w 2)) (z 3)
  have h₃ : Equivalent (karlssonRawMatrix t p (w 0) (w 1) (w 2) (z 3))
      (karlssonRawMatrix t p (w 0) (w 1) (w 2) (w 3)) := by
    rcases equal_square_sign (h 3) with he | he
    · rw [he]; exact equivalent_refl _
    · rw [he]
      simpa using equivalent_karlssonRawMatrix_neg_z₄ t p (w 0) (w 1) (w 2) (-(w 3))
  exact equivalent_trans h₀ (equivalent_trans h₁ (equivalent_trans h₂ h₃))

theorem rootPhases_sq (chart : Chart) (signs : Fin 3 → Bool) (a b c d z : ℂ)
    (i : Fin 4) :
    (rootPhases chart signs a b c d z i)^2 = phaseSquares chart a b c d (z^2) i := by
  cases chart <;> fin_cases i <;>
    simp [rootPhases, phaseSquares, root_branch_square]

/-- Removing all three dependent root signs and the free-phase sign divides
the raw finite label count by sixteen. Coordinates and singular guards stay put. -/
theorem rawChart_sign_reduction (chart : Chart) (signs : Fin 3 → Bool)
    (pSign zSign : Bool) (s q r : ℝ) :
    Equivalent (rawChart chart signs pSign zSign s q r)
      (rawChart chart (fun _ => false) pSign false s q r) := by
  unfold rawChart
  apply equal_squares_equivalent
  intro i
  rw [rootPhases_sq, rootPhases_sq]
  have hz : (signedCircle zSign r)^2=(signedCircle false r)^2 := by
    cases zSign <;> simp [signedCircle,signValue]
  rw [hz]

abbrev ReducedLabel := Chart × Bool
theorem reduced_label_count : Fintype.card ReducedLabel = 10 := by decide
def reducedMatrix (label : ReducedLabel) (x : Fin 3 → ℝ) : Mat6 :=
  rawChart label.1 (fun _ => false) label.2 false (x 0) (x 1) (x 2)
def reducedGuard (label : ReducedLabel) (x : Fin 3 → ℝ) : Prop :=
  RawGuard label.1 label.2 (x 0) (x 1)
def ReducedHit {depth : ℕ} (label : ReducedLabel) (cell : RawCell depth) (H : Mat6) : Prop :=
  ∃ x : Fin 3 → ℝ, 0<x 0 ∧ x 0<1 ∧ RawContains cell x ∧ reducedGuard label x ∧
    Equivalent H (reducedMatrix label x)

/-- Ten raw three-parameter charts plus the explicitly retained Fourier seams. -/
theorem reduced_finite_three_parameter_cover (depth : ℕ) {H : Mat6}
    (hH : IsHadamard H) (h₂ : HasHadamardTwoByTwo H) :
    (∃ label : ReducedLabel, ∃ cell : RawCell depth, ReducedHit label cell H) ∨
    (∃ label : SeamLabel, ∃ cell : SeamCell depth, SeamHit label cell H) := by
  rcases finite_three_parameter_cover depth hH h₂ with hr | hs
  · rcases hr with ⟨⟨chart,signs,ps,zs⟩,cell,x,hlo,hhi,hcell,hguard,he⟩
    exact Or.inl ⟨(chart,ps),cell,x,hlo,hhi,hcell,hguard,
      equivalent_trans he (rawChart_sign_reduction chart signs ps zs (x 0) (x 1) (x 2))⟩
  · exact Or.inr hs

/-- A useful interval compiler may pick local square-root signs per cell.
It must supply the gauge witness along with each carrier enclosure. -/
structure GaugeEnclosureProvider (depth : ℕ) where
  raw : ReducedLabel → RawCell depth → Mub6.Numerical.CarrierRegion
  seam : SeamLabel → SeamCell depth → Mub6.Numerical.CarrierRegion
  raw_sound : ∀ label cell x, 0<x 0 → x 0<1 → RawContains cell x → reducedGuard label x →
    IsHadamard (reducedMatrix label x) → ∃ K : Mat6,
      Equivalent (reducedMatrix label x) K ∧
      Mub6.Numerical.CarrierBox (raw label cell) (ClassificationCover.toNumerical K)
  seam_sound : ∀ label cell x, SeamContains cell x → IsHadamard (seamMatrix label x) →
    ∃ K : Mat6, Equivalent (seamMatrix label x) K ∧
      Mub6.Numerical.CarrierBox (seam label cell) (ClassificationCover.toNumerical K)

open Mub6 Mub6.Numerical in
theorem reduced_quartet_finite_enclosures (depth : ℕ) (provider : GaugeEnclosureProvider depth)
    {H : BasisMatrix} (hH : OccursAsQuartetEdge H)
    (h₂ : HasHadamardTwoByTwo (ClassificationCover.toPublic (phaseScale (Real.sqrt 6) H))) :
    ∃ K : Mat6,
      OccursAsQuartetEdge (phaseScale (Real.sqrt 6)⁻¹ (ClassificationCover.toNumerical K)) ∧
      ((∃ label cell, CarrierBox (provider.raw label cell) (ClassificationCover.toNumerical K)) ∨
       (∃ label cell, CarrierBox (provider.seam label cell) (ClassificationCover.toNumerical K))) := by
  have hp : IsHadamard (ClassificationCover.toPublic (phaseScale (Real.sqrt 6) H)) := by
    rcases hH with ⟨B,hB,a,b,hab,rfl⟩
    exact ClassificationCover.public_of_boundary_phase (actual_edge_sqrt_six_phaseHadamard hB a b hab)
  rcases reduced_finite_three_parameter_cover depth hp h₂ with hr | hs
  · rcases hr with ⟨label,cell,x,hlo,hhi,hcell,hguard,he⟩
    rcases provider.raw_sound label cell x hlo hhi hcell hguard
      ((equivalent_isHadamard_iff he).mp hp) with ⟨K,heK,hbox⟩
    exact ⟨K,ClassificationCover.normalized_public_representative_occurs hH (equivalent_trans he heK),
      Or.inl ⟨label,cell,hbox⟩⟩
  · rcases hs with ⟨label,cell,x,hcell,he⟩
    rcases provider.seam_sound label cell x hcell ((equivalent_isHadamard_iff he).mp hp) with ⟨K,heK,hbox⟩
    exact ⟨K,ClassificationCover.normalized_public_representative_occurs hH (equivalent_trans he heK),
      Or.inr ⟨label,cell,hbox⟩⟩

end
end Mub6.Classification.KarlssonCover
