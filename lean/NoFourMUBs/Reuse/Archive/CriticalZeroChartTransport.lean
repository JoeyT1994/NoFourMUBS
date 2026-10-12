import NoFourMUBs.Reuse.Archive.CriticalCorrelationRechart
import NoFourMUBs.Reuse.Archive.CriticalStripNewton

set_option autoImplicit false
namespace CriticalCorrelationChart20261003
open Matrix NoFourMUBs.Step2.Critical CriticalPhysical20261003
open CriticalStripMoments20261003
noncomputable section

/-- Every regular zero-J strip has an equivalent actual normalized carrier
where the two correlations divided by the existing chart are nonzero. The
same real parameter, same half partition and all twenty corners are retained.
This statement does not assume or conclude any numerator identity. -/
theorem allCritical_regular_zero_chart {H : OAI.MUB6.CMatrix} (hH : AllCriticalCarrier H)
    (z : ℝ) (hz0 : z≠0) (hz3 : z≠ -3)
    (hp : sideP (stripLeftBlock H)=9-z^2)
    (hj : sideJ (stripLeftBlock H)=0)
    (hw : sideW (stripLeftBlock H)=z^2*(z+3)^2) :
    ∃ p : Perm,
      (p=Equiv.refl _ ∨ p=Equiv.swap 0 1 ∨ p=Equiv.swap 0 2) ∧
      let K := candidate H p (Equiv.refl _)
      AllCriticalCarrier K ∧ OAI.MUB6.Equivalent H K ∧
      sideP (stripLeftBlock K)=9-z^2 ∧ sideJ (stripLeftBlock K)=0 ∧
      sideW (stripLeftBlock K)=z^2*(z+3)^2 ∧
      (stripLeftData K).s≠0 ∧ (stripLeftData K).t≠0 ∧
      (∀ c : Fin 3 → Fin 6, SameInvariants (K.submatrix front c) (H.submatrix front c)) := by
  have hw0 : sideW (H.submatrix front front)≠0 := by
    change sideW (stripLeftBlock H)≠0
    rw [hw]
    exact regular_zero_W_nonzero hz0 hz3
  obtain ⟨p,hpicks,hK,he,hInv,hs,ht⟩ := allCritical_nonzero_W_rechart hH front hw0
  obtain ⟨hP,hJ,hW,_⟩ := hInv front
  refine ⟨p,hpicks,hK,he,hP.trans hp,hJ.trans hj,hW.trans hw,?_,?_,hInv⟩
  · exact hs
  · exact ht

/-- After the physical row relabeling, the original Newton data of the two
halves still have opposite six linear entries. The later reciprocal gauge
can therefore use the same two multipliers on both records. -/
theorem recharted_opposite_data {H : OAI.MUB6.CMatrix} (hH : AllCriticalCarrier H)
    (p : Perm) :
    let K := candidate H p (Equiv.refl _)
    (stripRightData K).s= -(stripLeftData K).s ∧
    (stripRightData K).S= -(stripLeftData K).S ∧
    (stripRightData K).t= -(stripLeftData K).t ∧
    (stripRightData K).T= -(stripLeftData K).T ∧
    (stripRightData K).r= -(stripLeftData K).r ∧
    (stripRightData K).Q= -(stripLeftData K).Q :=
  normalized_opposite_data (allCritical_candidate hH p (Equiv.refl _)).1

/-- Nonzero J needs no relabeling to enter the original two-correlation chart. -/
theorem nonzero_J_original_chart {H : OAI.MUB6.CMatrix}
    (hj : sideJ (stripLeftBlock H)≠0) :
    (stripLeftData H).s≠0 ∧ (stripLeftData H).t≠0 := by
  have h := nonzero_J_all_correlations _ _ _ hj
  exact ⟨h.1,h.2.1⟩

end
#print axioms allCritical_regular_zero_chart
#print axioms recharted_opposite_data
#print axioms nonzero_J_original_chart
end CriticalCorrelationChart20261003
