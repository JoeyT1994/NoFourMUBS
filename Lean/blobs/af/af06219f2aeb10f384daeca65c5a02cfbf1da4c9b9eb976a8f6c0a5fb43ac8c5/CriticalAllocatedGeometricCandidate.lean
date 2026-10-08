import CriticalAllocatedWholeStrip
import CriticalAllocatedChart

set_option autoImplicit false
namespace CriticalGeometricStrip20261003
open Mub6 Mub6.Numerical Mub6.Classification
open CompactCover GoodMinor FourierSeedBinding FourPhase FourPhaseWorker CanonicalCorners
open GlobalCornerDomain CriticalPhysical20261003 CriticalRowSum20261003
noncomputable section

/-- Exact allocated moduli at any of the twenty original strip corners give
one of three actual normalized equivalent carriers with global conjugate rows.
The phase is fixed by the same first column after the shared row operation. -/
theorem allCritical_allocated_geometric {H : CompactCover.Mat6}
    (hH : AllCritical H) (c : Fin 20) (z : ℝ)
    (hz0 : z≠0) (hz3 : z≠ -3) (hz2 : z≠ -2)
    (hj : sideJ (stripCorner H c)=0) (ha : Allocated (stripCorner H c) z) :
    ∃ p : Perm,
      (p=Equiv.refl _ ∨ p=Equiv.swap 0 1 ∨ p=Equiv.swap 0 2) ∧
      let K := candidate H p (Equiv.refl _)
      AllCritical K ∧ MonomialEquivalent H K ∧
      ∀ j : Fin 6,K 2 j=star (K 1 j) := by
  obtain ⟨p,hpick,hK,he,hs,ht,hr,hjK⟩ := allCritical_allocated_chart hH (triples c) z hj ha
  exact ⟨p,hpick,hK,he,normalized_allocated_rows hK.1 c z hz0 hz3 hz2 hs ht hr hjK⟩

/-- The same actual carrier still occurs in a physical quartet if the
original carrier did. The conclusion is not an existence claim for scalar data. -/
theorem allCritical_allocated_geometric_occurs {H : CompactCover.Mat6}
    (hH : AllCritical H) (c : Fin 20) (z : ℝ)
    (hz0 : z≠0) (hz3 : z≠ -3) (hz2 : z≠ -2)
    (hj : sideJ (stripCorner H c)=0) (ha : Allocated (stripCorner H c) z)
    (ho : OccursAsQuartetEdge (normalizedNumerical H)) :
    ∃ p : Perm,
      (p=Equiv.refl _ ∨ p=Equiv.swap 0 1 ∨ p=Equiv.swap 0 2) ∧
      let K := candidate H p (Equiv.refl _)
      AllCritical K ∧ MonomialEquivalent H K ∧
      OccursAsQuartetEdge (normalizedNumerical K) ∧
      ∀ j : Fin 6,K 2 j=star (K 1 j) := by
  obtain ⟨p,hpick,hK,he,hgeom⟩ := allCritical_allocated_geometric hH c z hz0 hz3 hz2 hj ha
  exact ⟨p,hpick,hK,he,candidate_occurs hH.1.1 ho p (Equiv.refl _),hgeom⟩

end
#print axioms allCritical_allocated_geometric
#print axioms allCritical_allocated_geometric_occurs
end CriticalGeometricStrip20261003
