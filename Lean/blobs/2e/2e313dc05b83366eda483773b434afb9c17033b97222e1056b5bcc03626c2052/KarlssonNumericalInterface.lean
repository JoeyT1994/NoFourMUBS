import KarlssonFiniteCover
import FormalCore

namespace Mub6.Classification.KarlssonCover
open Hadamard6 Mub6 Mub6.Numerical
noncomputable section

/-- Required contract for a useful numerical producer. The physical Hadamard
filter is explicit, so interval overestimates may safely use unit-entry bounds. -/
structure EnclosureProvider (depth : ℕ) where
  raw : RawLabel → RawCell depth → CarrierRegion
  seam : SeamLabel → SeamCell depth → CarrierRegion
  raw_sound : ∀ label cell x, 0<x 0 → x 0<1 → RawContains cell x → rawGuard label x →
    IsHadamard (rawMatrix label x) →
    CarrierBox (raw label cell) (ClassificationCover.toNumerical (rawMatrix label x))
  seam_sound : ∀ label cell x, SeamContains cell x → IsHadamard (seamMatrix label x) →
    CarrierBox (seam label cell) (ClassificationCover.toNumerical (seamMatrix label x))

def unitEntryBox : RationalRectangle := ⟨-1,1,-1,1⟩
def unitCarrier : CarrierRegion := fun _ _ => unitEntryBox

theorem unitCarrier_sound {H : Mat6} (hH : IsHadamard H) :
    CarrierBox unitCarrier (ClassificationCover.toNumerical H) := by
  intro i j
  have hb := Mub6.Numerical.unit_coordinate_bounds
    (hH.1 (ClassificationCover.indexEquiv.symm i) (ClassificationCover.indexEquiv.symm j))
  simpa [unitCarrier,unitEntryBox,MemRectangle,ClassificationCover.toNumerical]
    using And.intro hb.1.1 (And.intro hb.1.2 hb.2)

/-- Checked retention fallback, not a convergent or useful refinement compiler. -/
def fallbackProvider (depth : ℕ) : EnclosureProvider depth where
  raw := fun _ _ => unitCarrier
  seam := fun _ _ => unitCarrier
  raw_sound := fun _ _ _ _ _ _ _ hH => unitCarrier_sound hH
  seam_sound := fun _ _ _ _ hH => unitCarrier_sound hH

/-- Complete finite carrier-box coverage for any provider meeting the contract. -/
theorem physical_finite_enclosures (depth : ℕ) (provider : EnclosureProvider depth)
    {H : Mat6} (hH : IsHadamard H) (h₂ : HasHadamardTwoByTwo H) :
    ∃ K : Mat6, Equivalent H K ∧
      ((∃ label cell, CarrierBox (provider.raw label cell) (ClassificationCover.toNumerical K)) ∨
       (∃ label cell, CarrierBox (provider.seam label cell) (ClassificationCover.toNumerical K))) := by
  rcases finite_three_parameter_cover depth hH h₂ with hr | hs
  · rcases hr with ⟨label,cell,x,hlo,hhi,hcell,hguard,he⟩
    exact ⟨rawMatrix label x,he,Or.inl ⟨label,cell,
      provider.raw_sound label cell x hlo hhi hcell hguard ((equivalent_isHadamard_iff he).mp hH)⟩⟩
  · rcases hs with ⟨label,cell,x,hcell,he⟩
    exact ⟨seamMatrix label x,he,Or.inr ⟨label,cell,
      provider.seam_sound label cell x hcell ((equivalent_isHadamard_iff he).mp hH)⟩⟩

/-- The same cover preserves occurrence in a full quartet, including the two
unsearched bases. This transports the entire physical configuration. -/
theorem quartet_finite_enclosures (depth : ℕ) (provider : EnclosureProvider depth)
    {H : BasisMatrix} (hH : OccursAsQuartetEdge H)
    (h₂ : HasHadamardTwoByTwo (ClassificationCover.toPublic (phaseScale (Real.sqrt 6) H))) :
    ∃ K : Mat6,
      OccursAsQuartetEdge (phaseScale (Real.sqrt 6)⁻¹ (ClassificationCover.toNumerical K)) ∧
      ((∃ label cell, CarrierBox (provider.raw label cell) (ClassificationCover.toNumerical K)) ∨
       (∃ label cell, CarrierBox (provider.seam label cell) (ClassificationCover.toNumerical K))) := by
  have hp : IsHadamard (ClassificationCover.toPublic (phaseScale (Real.sqrt 6) H)) := by
    rcases hH with ⟨B,hB,a,b,hab,rfl⟩
    exact ClassificationCover.public_of_boundary_phase (actual_edge_sqrt_six_phaseHadamard hB a b hab)
  rcases physical_finite_enclosures depth provider hp h₂ with ⟨K,he,hbox⟩
  exact ⟨K,ClassificationCover.normalized_public_representative_occurs hH he,hbox⟩

end
end Mub6.Classification.KarlssonCover
