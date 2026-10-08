import CompleteReducedAtlas

/-! Independent consumers of the finite symmetry reduction and ray direction. -/
namespace FourPhaseCoverageReview
open Matrix Mub6.Numerical Mub6.Classification.GoodMinor
open Mub6.Classification.CompactCover Mub6.Classification.FourPhase
noncomputable section

theorem trailing_action_preserves_seed (p q : Equiv.Perm (Fin 3)) (H : Mat6) :
    northwest (trailingReindex p q H) = northwest H := by
  ext i j
  simp only [northwest, Matrix.submatrix_apply, trailingReindex, trailingPerm_front]

theorem inverse_row_map_is_correct (p q : Equiv.Perm (Fin 3)) (H : Mat6) (z : Mub6.Vector) :
    IsRawCommonRay (trailingReindex p q H) z ↔
      IsRawCommonRay H (permuteRay (trailingPerm q.symm) z) := by
  constructor
  · intro hz
    have h := trailingReindex_commonRay p.symm q.symm hz
    simpa only [trailingReindex_inverse] using h
  · intro hz
    have h := trailingReindex_commonRay p q hz
    have hi := trailingRay_inverse q.symm z
    simp only [Equiv.symm_symm] at hi
    rw [hi] at h
    exact h

theorem reduced_transport_preserves_every_pair {H : Mat6} (hH : PhaseHadamard H)
    (k : Fin 20) (q : Equiv.Perm (Fin 3)) :
    ∀ z w, rawOverlap (reducedRayTransport H k q z) (reducedRayTransport H k q w) =
      rawOverlap z w :=
  reducedRayTransport_rawOverlap hH k q

#print axioms trailing_action_preserves_seed
#print axioms inverse_row_map_is_correct
#print axioms reduced_transport_preserves_every_pair
#check normalized_reduced_physical_cover
#print axioms normalized_reduced_physical_cover
#check reduced_tag_count
#print axioms reduced_tag_count
#check reduced_circle_tag_count
#print axioms reduced_circle_tag_count
#print ReducedAtlasWitness
#check phaseHadamard_complete_reduced_atlas
#print axioms phaseHadamard_complete_reduced_atlas

end
end FourPhaseCoverageReview
