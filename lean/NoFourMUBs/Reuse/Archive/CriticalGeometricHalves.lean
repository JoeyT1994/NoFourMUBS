import NoFourMUBs.Reuse.Archive.CriticalStripPhysical
import NoFourMUBs.Reuse.Archive.CriticalTriplesComplement

set_option autoImplicit false
namespace CriticalGeometricStrip20261003
open Matrix NoFourMUBs.Step2.Critical
open CriticalPhysical20261003 CriticalRowSum20261003
noncomputable section

/-- The exact chosen and complementary triples cover all six original
columns. No independent phase may be selected in the second half. -/
theorem common_phase_halves (H : OAI.MUB6.CMatrix) (c : Fin 20) (κ : ℂ)
    (hL : ∀ i : Fin 3,stripCorner H c 2 i=κ*star (stripCorner H c 1 i))
    (hR : ∀ i : Fin 3,stripCorner H (Fin.rev c) 2 i=
      κ*star (stripCorner H (Fin.rev c) 1 i)) :
    ∀ j : Fin 6,H 2 j=κ*star (H 1 j) := by
  intro j
  rcases triples_complement_cover c j with ⟨i,hi⟩ | ⟨i,hi⟩
  · simpa only [stripCorner,Matrix.submatrix_apply,show front 2=2 from rfl,
      show front 1=1 from rfl,hi] using hL i
  · simpa only [stripCorner,Matrix.submatrix_apply,show front 2=2 from rfl,
      show front 1=1 from rfl,hi] using hR i

/-- The actual normalized first column fixes the common phase exactly. -/
theorem normalized_common_phase_one {H : OAI.MUB6.CMatrix}
    (hH : NormalizedCarrier H) (κ : ℂ)
    (h : ∀ j : Fin 6,H 2 j=κ*star (H 1 j)) : κ=1 := by
  have h0 := h 0
  simpa only [hH.2.2,star_one,mul_one] using h0.symm

theorem normalized_geometric_halves {H : OAI.MUB6.CMatrix}
    (hH : NormalizedCarrier H) (c : Fin 20) (κ : ℂ)
    (hL : ∀ i : Fin 3,stripCorner H c 2 i=κ*star (stripCorner H c 1 i))
    (hR : ∀ i : Fin 3,stripCorner H (Fin.rev c) 2 i=
      κ*star (stripCorner H (Fin.rev c) 1 i)) :
    ∀ j : Fin 6,H 2 j=star (H 1 j) := by
  have h := common_phase_halves H c κ hL hR
  rw [normalized_common_phase_one hH κ h] at h
  simpa only [one_mul] using h

end
#print axioms common_phase_halves
#print axioms normalized_common_phase_one
#print axioms normalized_geometric_halves
end CriticalGeometricStrip20261003
