import NoFourMUBs.Reuse.Archive.CriticalAllocatedWholeStrip
import NoFourMUBs.Reuse.Archive.CriticalAllocatedChart

set_option autoImplicit false
namespace CriticalGeometricStrip20261003
open Matrix NoFourMUBs.Step2.Critical
open CriticalPhysical20261003 CriticalRowSum20261003
noncomputable section

/-- Exact allocated moduli at any of the twenty original strip corners give
one of three actual normalized equivalent carriers with global conjugate rows.
The phase is fixed by the same first column after the shared row operation. -/
theorem allCritical_allocated_geometric {H : OAI.MUB6.CMatrix}
    (hH : AllCriticalCarrier H) (c : Fin 20) (z : ℝ)
    (hz0 : z≠0) (hz3 : z≠ -3) (hz2 : z≠ -2)
    (hj : sideJ (stripCorner H c)=0) (ha : Allocated (stripCorner H c) z) :
    ∃ p : Perm,
      (p=Equiv.refl _ ∨ p=Equiv.swap 0 1 ∨ p=Equiv.swap 0 2) ∧
      let K := candidate H p (Equiv.refl _)
      AllCriticalCarrier K ∧ OAI.MUB6.Equivalent H K ∧
      ∀ j : Fin 6,K 2 j=star (K 1 j) := by
  obtain ⟨p,hpick,hK,he,hs,ht,hr,hjK⟩ := allCritical_allocated_chart hH (triples c) z hj ha
  exact ⟨p,hpick,hK,he,normalized_allocated_rows hK.1 c z hz0 hz3 hz2 hs ht hr hjK⟩


end
#print axioms allCritical_allocated_geometric
end CriticalGeometricStrip20261003
