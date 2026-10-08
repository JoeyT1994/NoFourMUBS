import MaximalQuartetRadian

/-! Independent semantic restatement of the frozen maximal-radian bridge.
The review keeps the literal four-basis target, the complete positional
maximality predicate, its zero boundary, and the freshly selected closed-root
angle point visible.  It supplies no terminal forest or external worklist. -/
set_option autoImplicit false
namespace Mub6.MaximalRadian20261006.IndependentReview
open Mub6 Mub6.GlobalBoxCover20261006
open Centiradian20261006 Centiradian20261006.SignedDeterminant
noncomputable section

/-- Relabeling basis 0 by `p` and basis 1 by `q` preserves the literal
four-basis MUB predicate and transports the selected phase edge pointwise. -/
theorem reviewed_literal_quartet_transport
    {B : Fin 4 → BasisMatrix} (hB : IsMUBQuartet B) (p q : Perm6) :
    IsMUBQuartet (permutedQuartet B p q) ∧
      ∀ i j, phaseOverlap (permutedQuartet B p q 0) (permutedQuartet B p q 1) i j =
        phaseOverlap (B 0) (B 1) (p i) (q j) := by
  refine ⟨permutedQuartet_isMUB hB p q, ?_⟩
  intro i j
  rw [permutedQuartet_phaseOverlap]
  rfl

/-- The permutation maximum implies the original positional predicate: every
increasing row triple and every three-column subset, with non-strict ties. -/
theorem reviewed_all_positional_corners {H : Mat6} (hm : PermutationMaximal H) :
    ∀ (a b c : Fin 6), a < b → b < c → ∀ C : Finset (Fin 6), C.card = 3 →
      cornerR H a b c C ≤ leadingR H :=
  permutationMaximal_implies_maximal hm

/-- The witness names the exact quartet obtained by the two column
permutations followed by quartet-wide dephasing.  All four bases remain in the
literal `IsMUBQuartet` conclusion. -/
theorem reviewed_maximal_quartet_witness
    {B : Fin 4 → BasisMatrix} (hB : IsMUBQuartet B) :
    ∃ p q : Perm6, ∃ D : Fin 4 → BasisMatrix,
      D = dephasedQuartet (permutedQuartet B p q) ∧ IsMUBQuartet D ∧
      Physical (phaseOverlap (D 0) (D 1)) ∧
      Dephased (phaseOverlap (D 0) (D 1)) ∧
      Maximal (phaseOverlap (D 0) (D 1)) := by
  obtain ⟨p,q,hD,hp,hd,hm⟩ := quartet_has_maximal_phase_edge_witness hB
  exact ⟨p,q,dephasedQuartet (permutedQuartet B p q),rfl,hD,hp,hd,hm⟩

/-- At the retained zero-radius boundary every ordered signed residual is
forced to zero.  No positive-radius hypothesis is introduced. -/
theorem reviewed_zero_radius_signed_residual
    {H : Mat6} (hH : Physical H) (hm : Maximal H) (hR : leadingR H = 0)
    (a b c i j k : Fin 6) (hab : a < b) (hbc : b < c)
    (hij : i < j) (hjk : j < k) :
    cornerSigned H a b c i j k = 0 := by
  have hb := maximal_all_signed_abs_bound hH hm a b c i j k hab hbc hij hjk
  have hz : |cornerSigned H a b c i j k| = 0 := by
    apply le_antisymm
    · simpa [hR] using hb
    · exact abs_nonneg _
  exact abs_eq_zero.mp hz

/-- The angle point is chosen after maximizing and normalizing.  Membership is
expanded to the literal closed rational bounds `[-4,4]` in every coordinate. -/
theorem reviewed_fresh_closed_root_point
    {B : Fin 4 → BasisMatrix} (hB : IsMUBQuartet B) :
    ∃ D : Fin 4 → BasisMatrix, ∃ x : Fin 4 → ℝ,
      IsMUBQuartet D ∧ Physical (phaseOverlap (D 0) (D 1)) ∧
      Dephased (phaseOverlap (D 0) (D 1)) ∧
      Maximal (phaseOverlap (D 0) (D 1)) ∧
      PhaseCoordinates (seedEntries (phaseOverlap (D 0) (D 1))) x ∧
      ∀ i, (-4 : ℝ) ≤ x i ∧ x i ≤ 4 := by
  obtain ⟨D,hD,hp,hd,hm⟩ := quartet_has_maximal_phase_edge hB
  have hu := phaseOverlap_norm_one (hD.2 0 1 (by decide))
  obtain ⟨x,hx,hphase⟩ := unit_carrier_seed_in_root (phaseOverlap (D 0) (D 1)) hu
  refine ⟨D,x,hD,hp,hd,hm,hphase,?_⟩
  simpa [Box.Contains,radianRoot] using hx

end
end Mub6.MaximalRadian20261006.IndependentReview

#print axioms Mub6.MaximalRadian20261006.IndependentReview.reviewed_literal_quartet_transport
#print axioms Mub6.MaximalRadian20261006.IndependentReview.reviewed_all_positional_corners
#print axioms Mub6.MaximalRadian20261006.IndependentReview.reviewed_maximal_quartet_witness
#print axioms Mub6.MaximalRadian20261006.IndependentReview.reviewed_zero_radius_signed_residual
#print axioms Mub6.MaximalRadian20261006.IndependentReview.reviewed_fresh_closed_root_point
