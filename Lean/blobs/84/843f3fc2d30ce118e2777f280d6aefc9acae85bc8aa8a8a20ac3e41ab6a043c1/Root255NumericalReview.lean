import Root255Numerical

set_option autoImplicit false
namespace GlobalAssemblyRoot255NumericalReview20261003
open Mub6 Mub6.Numerical Mub6.Classification
open Mub6.Classification.GlobalCornerDomain
open Mub6.Classification.RadianFrontier20261003
open ShoulderRadian20261003

/-- The public Sum-index convention keeps the actual four entries. -/
theorem four_entries_preserved (H : CompactCover.Mat6) :
    ClassificationCover.toPublic H (Sum.inl (1 : Fin 3)) (Sum.inl (1 : Fin 3)) = H 1 1 ∧
    ClassificationCover.toPublic H (Sum.inl (1 : Fin 3)) (Sum.inl (2 : Fin 3)) = H 1 2 ∧
    ClassificationCover.toPublic H (Sum.inl (2 : Fin 3)) (Sum.inl (1 : Fin 3)) = H 2 1 ∧
    ClassificationCover.toPublic H (Sum.inl (2 : Fin 3)) (Sum.inl (2 : Fin 3)) = H 2 2 :=
  ⟨rfl, rfl, rfl, rfl⟩

/-- Expected physical type with every coordinate and closed boundary displayed.
This is a review probe, not a second cube exclusion or independent review of
the imported grid-geometry helper authored in this same review directory. -/
theorem literal_closed_radian_exclusion {H : CompactCover.Mat6}
    (hH : PhaseHadamard H)
    (hrow : ∀ j, H 0 j = 1) (hcol : ∀ i, H i 0 = 1)
    (θ : Fin 4 → ℝ)
    (hb : (-253 / 256 ≤ θ 0 ∧ θ 0 ≤ -252 / 256) ∧
      (281 / 256 ≤ θ 1 ∧ θ 1 ≤ 282 / 256) ∧
      (282 / 256 ≤ θ 2 ∧ θ 2 ≤ 283 / 256) ∧
      (-254 / 256 ≤ θ 3 ∧ θ 3 ≤ -253 / 256))
    (h11 : H 1 1 = cis (θ 0)) (h12 : H 1 2 = cis (θ 1))
    (h21 : H 2 1 = cis (θ 2)) (h22 : H 2 2 = cis (θ 3)) : False := by
  apply root255_no_normalized_carrier ⟨hH, hrow, hcol⟩
  refine ⟨θ, ?_, h11, h12, h21, h22⟩
  exact (root255_parameters_iff θ).mpr
    ((GlobalAssemblyCoverageReview20261003.root255_cube_iff_grid θ).mpr hb)

#print axioms four_entries_preserved
#print axioms literal_closed_radian_exclusion
#print axioms Mub6.Classification.RadianFrontier20261003.root255_closed
#print axioms Mub6.Classification.RadianFrontier20261003.root255_no_global_max
end GlobalAssemblyRoot255NumericalReview20261003
