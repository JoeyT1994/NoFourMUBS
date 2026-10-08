import GlobalCornerScalar

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1000000
namespace Mub6.Classification.GlobalCornerDomain
open Mub6 Mub6.Numerical Matrix
open Mub6.Classification
open CompactCover GoodMinor FourierSeedBinding FourPhase FourPhaseWorker CanonicalCorners
noncomputable section

/-- The actual horizontal gate applies to the new normalized domain without a
strictness or good-minor hypothesis. -/
theorem normalized_actual_horizontal_gate {H : CompactCover.Mat6}
    (hH : NormalizedCarrier H) :
    ShoulderActualSide20261002.SideGate (northwest H) (northeast H) := by
  exact ShoulderActualSide20261002.actual_horizontal_gate
    (ClassificationCover.public_of_numerical hH.1) (fun j => hH.2.1 (back j))

/-- The actual vertical gate has the same guard-free physical scope. -/
theorem normalized_actual_vertical_gate {H : CompactCover.Mat6}
    (hH : NormalizedCarrier H) :
    ShoulderActualSide20261002.SideGate (northwest H)ᵀ (southwest H)ᵀ := by
  exact ShoulderActualSide20261002.actual_vertical_gate
    (ClassificationCover.public_of_numerical hH.1) (fun j => hH.2.2 (back j))

/-- Conversely an all-critical normalized carrier belongs to the zero branch,
so the retained boundary is an exact characterization. -/
theorem allCritical_globalZero {H : CompactCover.Mat6} (hH : AllCritical H) :
    GlobalZero H := by
  have hi : candidate H (Equiv.refl _) (Equiv.refl _) = H :=
    normalized_fixed hH.1.2.1 hH.1.2.2
  have hz : score H = 0 := by
    have h := hH.2 (Equiv.refl _) (Equiv.refl _)
    rwa [hi] at h
  exact ⟨⟨hH.1, fun p q => le_of_eq ((hH.2 p q).trans hz.symm)⟩,hz⟩

theorem globalZero_iff_allCritical {H : CompactCover.Mat6} :
    GlobalZero H ↔ AllCritical H := ⟨globalZero_allCritical,allCritical_globalZero⟩

end
end Mub6.Classification.GlobalCornerDomain

#print axioms Mub6.Classification.GlobalCornerDomain.normalized_actual_horizontal_gate
#print axioms Mub6.Classification.GlobalCornerDomain.normalized_actual_vertical_gate
#print axioms Mub6.Classification.GlobalCornerDomain.allCritical_globalZero
#print axioms Mub6.Classification.GlobalCornerDomain.globalZero_iff_allCritical
